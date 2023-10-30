// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function testOriginal(uint256 x, uint256 y, uint256 denominator) public {
        uint256 startGas = gasleft();
        Math.mulDiv(x,y, denominator, Math.Rounding.Up);
        uint256 endGas = gasleft();
        emit log_named_uint("LeftTrueGas", startGas-endGas);

        startGas = gasleft();
        Math.mulDiv(x,y, denominator, Math.Rounding.Zero);
        endGas = gasleft();
        emit log_named_uint("LeftFalseGas", startGas-endGas);

    }
    
    function testOptimized(uint256 x, uint256 y, uint256 denominator) public {
        uint256 startGas = gasleft();
        MathOp.mulDiv(x,y, denominator, MathOp.Rounding.Up);
        uint256 endGas = gasleft();
        emit log_named_uint("LeftTrueGas", startGas-endGas);

        startGas = gasleft();
        MathOp.mulDiv(x,y, denominator, MathOp.Rounding.Zero);
        endGas = gasleft();
        emit log_named_uint("LeftFalseGas", startGas-endGas);
    }
}