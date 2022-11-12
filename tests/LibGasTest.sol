// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import "./LibDemo.sol";


contract LibGasTest is GasMeasure {

    function compareRemoveSLoad() public returns(uint gasSaved) {
        LibDemo demo = new LibDemo();
        uint256 startGas = gasleft();
        demo.assignOperator0(address(0xBEEF));
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.assignOperator0(address(0xBE1F));
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.assignOperator(address(0xBCEF));
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); 
        return gasUsage1 - gasUsage2; // 89 gas
    }

    function test2() public returns(uint gasSaved) {
        LibDemo2 demo = new LibDemo2();
        uint256 startGas = gasleft();
        demo.read(address(0xBEEF),0,100);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.read(address(0xBE1F),0,100);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.read2(address(0xBCEF),0,100);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); 
        return gasUsage2 - gasUsage1; // 35 gas
    }

    function test3() public returns (uint256 gasSaved) {
        LibDemo3 demo = new LibDemo3();
        uint256 startGas = gasleft();
        demo.test0(1);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test0(2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test1(3);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); 
        emit log_named_uint("gasSved1", gasUsage1 - gasUsage2); // 188 gas


        startGas = gasleft();
        demo.test2();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test2();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test3();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); 
        return gasUsage1 - gasUsage2; // 203 gas
    }

    function test4() public returns (uint256 gasSaved) {
        LibDemo4 demo = new LibDemo4();
        uint256 startGas = gasleft();
        demo.test0();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test0();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); 

        startGas = gasleft();
        demo.test1();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); 

        return 12; // 203 gas
    }
}