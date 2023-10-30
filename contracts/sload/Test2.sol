// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

import "./Bug2.sol";
// import "./Bug2Op.sol";

contract Test2 {
    event log_named_uint(string key, uint val);

    function test() public {
        UniswapV2Pair v2pair = new UniswapV2Pair();
        uint256 startGas = gasleft();
        v2pair._update(100,100,10,10);
        uint256 endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 70378 70056

        startGas = gasleft();
        v2pair._update(100,100,10,10);
        endGas = gasleft();
        emit log_named_uint("gas", startGas-endGas); // 3791 3469

    }
}