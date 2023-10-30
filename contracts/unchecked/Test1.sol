// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function test() public {
        address[] memory arr = new address[](1);
        arr[0] = address(0x4B0897b0513fdC7C541B6d9D7E929C4e5364D2dB);
        ERC777 demo = new ERC777("name", "symbol", arr);

        bytes memory data = "0x00";
        uint256 startGas = gasleft();
        demo._mint(address(0xBEEF), 100, data, data, true);
        uint256 endGas = gasleft();
        emit log_named_uint("mint", startGas-endGas);

        startGas = gasleft();
        demo._burn(address(0xBEEF), 100, data, data);
        endGas = gasleft();
        emit log_named_uint("burn", startGas-endGas);
    }
}