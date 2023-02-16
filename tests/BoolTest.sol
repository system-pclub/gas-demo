// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.15;

import "./BoolDemo.sol";


contract BoolGasTest {

    event log_named_uint         (string key, uint val);

    function computeGas() public returns(uint256 gasSaved) {
        uint256 gas1 = gasleft();
        ReentrancyGuard0 reentrancyGuard0 = new ReentrancyGuard0();
        uint256 gas2 = gasleft();
        emit log_named_uint("0-const", gas1-gas2); // 106591
        uint256 startGas = gasleft();
        reentrancyGuard0.test();
        uint256 endGas = gasleft();
        uint256 gasUsage0 = startGas - endGas;
        emit log_named_uint("gasUsage0", gasUsage0); // 1664

        gas1 = gasleft();
        ReentrancyGuard1 reentrancyGuard1 = new ReentrancyGuard1();
        gas2 = gasleft();
        emit log_named_uint("1-const", gas1-gas2); // 106352
        startGas = gasleft();
        reentrancyGuard1.test();
        endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1658

        gas1 = gasleft();
        ReentrancyGuard2 reentrancyGuard2 = new ReentrancyGuard2();
        gas2 = gasleft();
        emit log_named_uint("2-const", gas1-gas2); // 118517
        startGas = gasleft();
        reentrancyGuard2.test();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1172

        gas1 = gasleft();
        ReentrancyGuard3 reentrancyGuard3 = new ReentrancyGuard3();
        gas2 = gasleft();
        emit log_named_uint("3-const", gas1-gas2); // 84253
        startGas = gasleft();
        reentrancyGuard3.test();
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage3); // 23411

        gas1 = gasleft();
        ReentrancyGuard4 reentrancyGuard4 = new ReentrancyGuard4();
        gas2 = gasleft();
        emit log_named_uint("4-const", gas1-gas2); // 106223
        startGas = gasleft();
        reentrancyGuard4.test();
        endGas = gasleft();
        uint256 gasUsage4 = startGas - endGas;
        emit log_named_uint("gasUsage4", gasUsage4); // 21408

        // gas1 = gasleft();
        // ReentrancyGuard5 reentrancyGuard5 = new ReentrancyGuard5();
        // gas2 = gasleft();
        // emit log_named_uint("5-const", gas1-gas2); // 96341
        // startGas = gasleft();
        // reentrancyGuard5.test();
        // endGas = gasleft();
        // uint256 gasUsage5 = startGas - endGas;
        // emit log_named_uint("gasUsage5", gasUsage5); // 1172

        return gasUsage1 - gasUsage2; // 
    }
}