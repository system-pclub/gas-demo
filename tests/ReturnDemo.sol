// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract ReturnDemo {

    // use modifier logs_gas: 249 gas
    // transaction cost: 24739 gas
    function add1(uint256 a, uint256 b) public pure returns (uint256) { 
        if (a==0) {
            return 0;
        }

        uint256 c = a + b;
        return c;
    }

    // use modifier logs_gas: 236 gas
    // transaction cost: 24704 gas
    function add2(uint256 a, uint256 b) public pure returns (uint256 c) {
        if (a==0) {
            return 0;
        }

        c = a + b;
        // return c;
    }

    // use modifier logs_gas: 236 gas
    // transaction cost: 24670 gas
    function add3(uint256 a, uint256 b) public pure returns (uint256) { 
        if (a==0) {
            return 0;
        }

        return a + b;
    }
}