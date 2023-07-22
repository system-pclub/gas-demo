// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.15;

import {GasMeasure} from "./utils/GasMeasure.sol";

contract LoopInvariantDemo is GasMeasure {

    struct Param {
        uint256 l;
    }

    uint256[] sInt;

    function setArr(uint256[] memory arr) public {
        sInt = arr;
    }

    function test1(uint256[] memory arr) public {    
        uint res = 1; 
        for(uint256 i = 0; i < arr.length; i++) {
            res+=1;
        }
    }

    function test2(uint256[] memory arr) public {
        uint res = 1; 
        uint256 len = arr.length;
        for(uint256 i = 0; i < len; i++) {
            res+=1;
        }
    }

    function test3(uint256[] memory arr) public {
        for(uint256 i = 0; i < arr.length; i++) {
            uint256 a = arr[i];
        }
    }

    function test4(uint256[] memory arr) public {
        uint256 a;
        for(uint256 i = 0; i < arr.length; i++) {
            a = arr[i];
        }
    }

    function test5(bytes[] calldata payloads) public {
        for(uint256 i = 0; i < payloads.length; i++) {
            bytes calldata a = payloads[i];
        }
    }

    function test6(bytes[] calldata payloads) public {
        bytes calldata a;
        for(uint256 i = 0; i < payloads.length; i++) {
            a = payloads[i];
        }
    }

    function test7() public returns (uint256) {
        uint256 startGas = gasleft();
        for(uint256 i = 0; i < sInt.length;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test8() public returns (uint256) {
        uint256 startGas = gasleft();
        uint256 len = sInt.length;
        for(uint256 i = 0; i < len;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test9(uint256[] memory arr) public returns (uint256) {
        uint256[] memory tmp = new uint256[](1000);
        for (uint256 j = 0;j<1000;j++){
            tmp[j] = 256;
        }
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize); 
        uint256 startGas = gasleft();
        for(uint256 i = 0; i < arr.length;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test10(uint256[] memory arr) public returns (uint256) {
        // uint256[] memory tmp = new uint256[](1000);
        // for (uint256 j = 0;j<1000;j++){
        //     tmp[j] = 256;
        // }
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize);
        uint256 startGas = gasleft();
        uint256 len = arr.length;
        for(uint256 i = 0; i < len;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test11(uint256[] calldata arr) public returns (uint256) {
        uint256 startGas = gasleft();
        for(uint256 i = 0; i < arr.length;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test12(uint256[] calldata arr) public returns (uint256) {
        uint256 startGas = gasleft();
        uint256 len = arr.length;
        for(uint256 i = 0; i < len;) {
            unchecked {i++;}
        }
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test13(uint256[] memory arr) public returns (uint256) {
        uint256[] memory tmp = new uint256[](1000); 
        for (uint256 j = 0;j<1000;j++){
            tmp[j] = 256;
        }
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize);

        uint256 startGas = gasleft();
        arr.length;
        // arr[len];
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test14(uint256[] memory arr) public returns (uint256) {
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize);

        uint256 startGas = gasleft();
        arr.length;
        // arr[len];
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test15(uint256[] calldata arr) public view returns (uint256) {
        uint256 startGas = gasleft();
        arr.length;
        // arr[len];
        uint256 endGas = gasleft();
        return startGas - endGas;
    }

    function test16(uint256[] memory arr) public {

    }

    function test17() public {
        uint256[] memory tmp = new uint256[](10000); 
        for (uint256 j = 0;j<10000;j++){
            tmp[j] = 256;
        }
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize);

        for (uint256 j = 0;j<10;j++){
            uint256 startGas = gasleft();
            uint256[] memory arr = new uint256[](100);
            uint256 endGas = gasleft();
            emit log_named_uint("gas", startGas - endGas);
        }
    }

    function test17(uint256[] memory arr) public {
        uint256[] memory tmp = new uint256[](1000); 
        for (uint256 j = 0;j<1000;j++){
            tmp[j] = 256;
        }
        uint256 memorySize;
        assembly {
            memorySize := msize()
        }
        emit log_named_uint("msize", memorySize);

        for (uint256 j = 0;j<10;j++){
            uint256 startGas = gasleft();
            for(uint256 i = 0; i < arr.length;) {
                arr[i];
                unchecked {i++;}
            }
            uint256 endGas = gasleft();
            emit log_named_uint("gas", startGas - endGas);
        }
    }
}