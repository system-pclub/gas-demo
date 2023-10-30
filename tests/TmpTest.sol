// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.7.6;

import {GasMeasure} from "./utils/GasMeasure.sol";

contract IfDemo {
    function test1(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4) {
            if (b > 2){
                if (c == 3) {
                    return 2;
                }
            }         
        }
        return b;
    }

    function test2(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4 && b > 2 && c == 3) {
            return 2;
        }
        return b;
    }

    function test3(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4) {
            if (b > 2 && c == 3) {
                return 2;
            }         
        }
        return b;
    }
}

contract TmpTest is GasMeasure {
    IfDemo ifDemo = new IfDemo();

    function testMultiAnd() public {
        uint256 startGas = gasleft();
        ifDemo.test1(4, 3, 3);
        uint256 endGas = gasleft();
        emit log_named_uint("gasUsage1", startGas - endGas); // 

        startGas = gasleft();
        ifDemo.test1(4, 3, 3);
        endGas = gasleft();
        emit log_named_uint("gasUsage1", startGas - endGas); // 

        startGas = gasleft();
        ifDemo.test2(4, 3, 3);
        endGas = gasleft();
        emit log_named_uint("gasUsage2", startGas - endGas); 

        startGas = gasleft();
        ifDemo.test3(4, 3, 3);
        endGas = gasleft();
        emit log_named_uint("gasUsage3", startGas - endGas); 
    }

}

contract ERC1155 is GasMeasure {
    mapping (uint => mapping(address => uint)) private _bal;
    constructor() {
        _bal[0][address(0x00)] = 100;
    }

    function safeTransferFrom1(address from, address to, uint id, uint amount) logs_gas public {
     require(_bal[id][from] >= amount, "insufficient balance");
     _bal[id][from] -= amount;
   }

   function safeTransferFrom2(address from, address to, uint id, uint amount) logs_gas public {
     uint256 fromBalance = _bal[id][from];
     require(fromBalance >= amount, "insufficient balance");
     _bal[id][from] = fromBalance - amount;
   }
}

contract ERC1155Test is GasMeasure {

    function test() public {
        ERC1155 demo = new ERC1155();
        uint256 startGas = gasleft();
        demo.safeTransferFrom1(address(0x00),address(0x100),0,10);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3051

        startGas = gasleft();
        demo.safeTransferFrom1(address(0x00),address(0x100),0,10);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3048

        startGas = gasleft();
        demo.safeTransferFrom2(address(0x00),address(0x100),0,10);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2926

    }
}

library Create2 {
    function computeAddress1(bytes32 salt, bytes32 bytecodeHash, address deployer) public pure returns (address) {
        bytes32 _data = keccak256(
            abi.encodePacked(bytes1(0xff), deployer, salt, bytecodeHash)
        );
        return address(bytes20(_data << 96));
    }

    function computeAddress2(bytes32 salt, bytes32 bytecodeHash, address deployer) public pure returns (address) {
        bytes32 _data = keccak256(
            abi.encodePacked(bytes1(0xff), deployer, salt, bytecodeHash)
        );
        return address(uint256(_data));
    }
}

library FullMath {
    function mulDivRoundingUp1(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) public pure returns (uint256 result) {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
            require(result != type(uint256).max);
            result++;
        }
    }

    function mulDivRoundingUp2(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) public pure returns (uint256 result) {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
            require(result < type(uint256).max);
            result++;
        }
    }

    function mulDiv(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) public pure returns (uint256 result) {
        return a;
    }
}

contract Test is GasMeasure {

    function test1() public {
        bytes32 salt = 0xc5d2460186f11111927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
        bytes32 bytecodeHash = 0x1111111333333333666666668888888888888888222222222999999999999000;
        address deployer = address(0xBEEF);
        uint256 startGas = gasleft();
        Create2.computeAddress1(salt,bytecodeHash,deployer);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3621

        startGas = gasleft();
        Create2.computeAddress1(salt,bytecodeHash,deployer);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1103

        startGas = gasleft();
        Create2.computeAddress2(salt,bytecodeHash,deployer);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1072
    }

    function test2() public {
        uint256 startGas = gasleft();
        FullMath.mulDivRoundingUp1(10,2,1);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3450

        startGas = gasleft();
        FullMath.mulDivRoundingUp1(10,2,1);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 932

        startGas = gasleft();
        FullMath.mulDivRoundingUp2(10,2,1);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 910
    }
}

