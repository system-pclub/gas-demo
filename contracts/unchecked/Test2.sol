// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import "./Bug2.sol";
import "./Bug2Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function test(uint256 len) public {
        bytes32[] memory data = new bytes32[](len);
        for(uint256 i = 0;i<len;i++){
            data[i] = "0x123";
        }

        uint256 startGas = gasleft();
        MerkleProof.processProof(data, "0x111");
        uint256 endGas = gasleft();
        emit log_named_uint("processProof", startGas-endGas);
    }
}