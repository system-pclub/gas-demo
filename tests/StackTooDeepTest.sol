// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;


contract StackTooDeepDemo {

    function test() public {
        // uint256 res = 0;
        // uint256 tt = 0;
        for (uint256 i = 0; i < 10; i++) {
            // res+=1;
            uint256 a1 = 1;
            uint256 a2 = 1;
            uint256 a3 = 1;
            uint256 a4 = 1;
            uint256 a5 = 1;
            uint256 a6 = 1;
            uint256 a7 = 1;
            uint256 a8 = 1;
            uint256 a9 = 1;
            uint256 a10 = 1;
            uint256 a11 = 1;
            uint256 a12 = 1;
            uint256 a13 = 1;
            uint256 a14 = 1;
            uint256 a15 = 1;
            uint256 a16 = 1;
            a5+=1;
            // res+=1;
            // res+=1;
        }
    }
}