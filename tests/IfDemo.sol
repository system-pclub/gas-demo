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

    function complexCondition(uint256 a, uint256 b) public pure returns (uint256){
        if(a > 5 || b > 5 || (a < 3 && b < 3)) {
            return 1;
        }

        return 2;
    }

    function complexCondition2(uint256 a, uint256 b) public pure returns (uint256){
        if(a > 5) {
            return 1;
        } else if (b > 5) {
            return 1;
        } else if (a < 3) {
            if (b < 3) {
                return 1;
            }
        }

        return 2;
    }

    function conditionalExpression(uint256 a, uint256 b) public pure returns (uint256){
        uint x = a > 2 && b > 2 ? 1 : 2;
        return x;
    }

    function conditionalExpression2(uint256 a, uint256 b) public pure returns (uint256){
        uint x;
        if (a > 2){
            if (b > 2) {
                x = 1;
            } else {
                x = 2;
            }
        }else {
            x = 2;
        }
        return x;
    }
    
}