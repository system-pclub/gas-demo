// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

// import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function test() public {
        address from = address(0xBEEF);
        address to = address(0xABCD);
        UniswapV2ERC20 erc20 = new UniswapV2ERC20();
        erc20._mint(from, 100);
        erc20._approve(from, address(this), 100);
        uint256 startGas = gasleft();
        erc20.transferFrom(from, to, 10);
        uint256 endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 26658 26392

        startGas = gasleft();
        erc20.transferFrom(from, to, 10);
        endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 4755 4489

    }
}