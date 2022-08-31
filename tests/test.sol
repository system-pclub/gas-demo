// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import {UncheckedDemo} from "./UncheckedDemo.sol";

contract DemoTest is GasMeasure {

    UncheckedDemo uncheckedDemo; 

    function setUp() public {
        uncheckedDemo = new UncheckedDemo();
    }

    function testDemo() public logs_gas {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        Assert.equal(result, uint(3), "result should be equal to 3");
    }

    function computeSavedGas() public returns(uint gasSaved) {
        address to = address(0xBEEF);
        uint256 amount = 1e18;

        uint startGas = gasleft();
        uncheckedDemo.checkedMint(to, amount);
        uint endGas = gasleft();
        uint gasUsage_checked = startGas - endGas;

        startGas = gasleft();
        uncheckedDemo.uncheckedMint(to, amount);
        endGas = gasleft();
        uint gasUsage_unchecked = startGas - endGas;

        return gasUsage_checked - gasUsage_unchecked;
    }
}