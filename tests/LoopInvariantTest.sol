// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import "./LoopInvariantDemo.sol";

contract LoopInvariantTest is GasMeasure {
    LoopInvariantDemo demo = new LoopInvariantDemo();

    function gasTest(uint len) public returns(uint256 gasSaved) {
        uint256[] memory arr = new uint256[](len); // 10 100
        // for(uint256 i = 0; i < len; i++) {
        //     arr[i] = 1;
        // }

        uint256 startGas = gasleft();
        demo.test1(arr);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 15024 93947 gas

        startGas = gasleft();
        demo.test1(arr);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 10481 89072 gas

        startGas = gasleft();
        demo.test2(arr);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 10486 88807 gas
        return gasUsage1 - gasUsage2; // 265 gas
    }

    function gasTest2(uint len) public returns(uint256 gasSaved) {
        uint256[] memory arr = new uint256[](len); // 100

        uint256 startGas = gasleft();
        demo.test3(arr);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 57164 gas

        startGas = gasleft();
        demo.test3(arr);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 52389 gas

        startGas = gasleft();
        demo.test4(arr);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 51736 gas
        return gasUsage1 - gasUsage2; // 553 gas
    }

    function gasTest3(uint len) public returns(uint256 gasSaved) {
        bytes[] memory arr = new bytes[](len); // 100

        uint256 startGas = gasleft();
        demo.test5(arr);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 106341 gas

        startGas = gasleft();
        demo.test5(arr);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 101065 gas

        startGas = gasleft();
        demo.test6(arr);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 100138 gas
        return gasUsage1 - gasUsage2; // 927 gas
    }

    function gasTest4(uint256 len) public {
        uint256[] memory arr = new uint256[](len); 
        demo.setArr(arr);

        for (uint256 j = 0;j<len;j++){
            arr[j] = 111;
        }
        
        emit log_named_uint("gasUsage1_1", demo.test7()); 
        emit log_named_uint("gasUsage1_1", demo.test7()); 
        emit log_named_uint("gasUsage1_2", demo.test8()); 
        emit log_named_uint("gasUsage1_2", demo.test8()); 

        emit log_named_uint("gasUsage2_1", demo.test9(arr)); 
        emit log_named_uint("gasUsage2_1", demo.test9(arr)); 
        emit log_named_uint("gasUsage2_2", demo.test10(arr)); 
        emit log_named_uint("gasUsage2_2", demo.test10(arr));

        emit log_named_uint("gasUsage3_1", demo.test11(arr)); 
        emit log_named_uint("gasUsage3_1", demo.test11(arr)); 
        emit log_named_uint("gasUsage3_2", demo.test12(arr)); 
        emit log_named_uint("gasUsage3_2", demo.test12(arr)); 
    }

    function gasTest5(uint256 len) public {
        uint256[] memory arr = new uint256[](len); 

        for (uint256 j = 0;j<len;j++){
            arr[j] = 333;
        }
        
        emit log_named_uint("gasUsage1", demo.test13(arr));
        // emit log_named_uint("gasUsage1", demo.test13(arr)); 
        emit log_named_uint("gasUsage2", demo.test14(arr)); 
        // emit log_named_uint("gasUsage2", demo.test14(arr)); 
        emit log_named_uint("gasUsage3", demo.test15(arr)); 
        // emit log_named_uint("gasUsage3", demo.test15(arr)); 
    }

    function test6() public {
        uint256[] memory arr = new uint256[](1); 
        arr[0] = 256;
        uint256 startGas1 = gasleft();
        demo.test16(arr);
        uint256 endGas1 = gasleft();
        uint256 gasUsage1 = startGas1 - endGas1;
        emit log_named_uint("gasUsage1", gasUsage1);
        for(uint256 i = 200; i <= 2000; i += 200){
            arr = new uint256[](i); 
            for(uint256 j = 0; j < i; j++){
                arr[j] = 256;
            }
            uint256 startGas = gasleft();
            demo.test16(arr);
            uint256 endGas = gasleft();
            uint256 gasUsage = startGas - endGas;
            emit log_named_uint("gasUsage", gasUsage); 
        
        }
    }

    function test7(uint256 len) public {
        uint256[] memory arr = new uint256[](len); 
        demo.test17(arr);
    }
}