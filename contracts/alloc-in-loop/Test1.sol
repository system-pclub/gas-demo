// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

// import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function test(uint256 len) public { // 2 20 40
        uint256 startGas = gasleft();
        AddressStringUtil.toAsciiString(address(0x116), len);
        uint256 endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 962 5903 11399 // 962 5768 11114
    }
}