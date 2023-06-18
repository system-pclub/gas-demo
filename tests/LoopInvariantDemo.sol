// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "hardhat/console.sol";

contract LoopInvariantDemo {

    struct Param {
        uint256 l;
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
}