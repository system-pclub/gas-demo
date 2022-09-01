// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract IfDemo {

    function andCondition(uint256 a, uint256 b) public pure returns (uint256) {
        if (a > 1 && b > 1) {
            return a + b;
        }
        return a - b;
    }

    function tierCondition(uint256 a, uint256 b) public pure returns (uint256){
        if (a > 1) {
            if (b > 1) {
                return a + b;
            }
        }
        return a - b;
    }
}