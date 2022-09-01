// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import {UncheckedDemo} from "./UncheckedDemo.sol";
import {SimpleTest} from "./SimpleTest.sol";
import {IfDemo} from "./IfDemo.sol";

contract DemoTest is GasMeasure {

    UncheckedDemo uncheckedDemo = new UncheckedDemo();
    SimpleTest simpleTest = new SimpleTest();
    IfDemo ifDemo = new IfDemo();

    function testDemo() public logs_gas {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        Assert.equal(result, uint(3), "result should be equal to 3");
    }

    function computeUncheckedSavedGas() public returns(uint gasSaved) {
        address to = address(0xBEEF);
        uint256 amount = 18;

        uint256 startGas = gasleft();
        uncheckedDemo.checkedMint(to, amount);
        uint256 endGas = gasleft();
        uint256 gasUsage_checked = startGas - endGas;

        startGas = gasleft();
        uncheckedDemo.uncheckedMint(to, amount);
        endGas = gasleft();
        uint256 gasUsage_unchecked = startGas - endGas;
        emit log_named_uint("gasSaved", gasUsage_checked - gasUsage_unchecked); // 48525 gas

        startGas = gasleft();
        uncheckedDemo.checkedMint(to, amount);
        endGas = gasleft();
        gasUsage_checked = startGas - endGas;
        return gasUsage_checked - gasUsage_unchecked; // 210 gas
    }

    function computeReturnGas() public {
        uint256 a = 1;
        uint256 b = 2;

        uint256 startGas = gasleft();
        simpleTest.add1(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gas1", gasUsage1); // 6434 gas

        startGas = gasleft();
        simpleTest.add2(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gas2", gasUsage2); // 1884 gas

        startGas = gasleft();
        simpleTest.add3(a, b);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gas3", gasUsage3); // 1862 gas

        startGas = gasleft();
        simpleTest.add1(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gas_1", gasUsage1); // 1919 gas
    }

     function computeIfSavedGas() public returns(uint gasSaved) {
        uint256 a = 2;
        uint256 b = 2;

        uint256 startGas = gasleft();
        ifDemo.andCondition(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        ifDemo.tierCondition(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 4540 gas

        startGas = gasleft();
        ifDemo.andCondition(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        return gasUsage1 - gasUsage2; // 25 gas
     }
}