// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function test(uint256 len) public { // 1 10 100
        address[] memory accounts = new address[](len);
        uint256[] memory ids = new uint256[](len);
        for(uint256 i = 0;i<len;i++){
            accounts[i] = address(0xBEEF);
            ids[i] = i;
        }

        ERC1155 erc = new ERC1155("uri");
        uint256 startGas = gasleft();
        erc.balanceOfBatch(accounts, ids);
        uint256 endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 7869 45034 416966 4189883 // 6904 42230 395562 3961575
    }
}