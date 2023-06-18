// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import "./LoopUnrollDemo.sol";

contract LoopUnrollTest is GasMeasure {
    LoopUnrollDemo demo = new LoopUnrollDemo();

    function gasTest() public returns(uint256 gasSaved) {
        uint256 startGas = gasleft();
        demo.getVirtualSupply1();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 15404 gas

        startGas = gasleft();
        demo.getVirtualSupply1();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 4895 gas

        startGas = gasleft();
        demo.getVirtualSupply2();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 3375 gas
        return gasUsage1 - gasUsage2; // 1520 gas
    }
}