// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import "./NewDemo.sol";

contract Test is GasMeasure {
    Demo demo = new Demo();
    ReentrancyGuard0 reen0 = new ReentrancyGuard0();
    ReentrancyGuard1 reen1 = new ReentrancyGuard1();

    function test1() public {
        uint256 startGas = gasleft();
        demo._getFraction0(1, 1, 1);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 6872 gas

        startGas = gasleft();
        demo._getFraction0(1, 1, 1);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2354 gas

        startGas = gasleft();
        demo._getFraction1(1, 1, 1);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2376 gas  
    }

    function test2() public {
        uint256 startGas = gasleft();
        demo._performERC20Transfer00(address(0xBEEF));
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 8279 gas

        startGas = gasleft();
        demo._performERC20Transfer00(address(0xBEEF));
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1267 gas

        startGas = gasleft();
        demo._performERC20Transfer11(address(0xBEEF));
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1311 gas
        // emit log_named_uint("gasSaved", gasUsage1 -  gasUsage2); // 66 gas
    }

    function test3() public {
        uint256 startGas = gasleft();
        reen0.test();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 10271 gas

        startGas = gasleft();
        reen0.test();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3762 gas

        startGas = gasleft();
        reen1.test();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 10393 gas

        startGas = gasleft();
        reen1.test();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1093 gas
        // emit log_named_uint("gasSaved", gasUsage1 -  gasUsage2); // 66 gas
    }
}