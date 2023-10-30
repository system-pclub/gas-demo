// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Bug1.sol";
import "./Bug1Op.sol";

contract Test1 {
    event log_named_uint(string key, uint val);

    function testOriginal() public {
        Pausable pausable = new Pausable();
        uint256 startGas = gasleft();
        pausable._pause();
        uint256 endGas = gasleft();
        emit log_named_uint("_pause", startGas-endGas);

        startGas = gasleft();
        pausable._unpause();
        endGas = gasleft();
        emit log_named_uint("_unpause", startGas-endGas);
    }

    function testOptimized() public {
        PausableOp pausable = new PausableOp();
        uint256 startGas = gasleft();
        pausable._pause();
        uint256 endGas = gasleft();
        emit log_named_uint("_pause", startGas-endGas);

        startGas = gasleft();
        pausable._unpause();
        endGas = gasleft();
        emit log_named_uint("_unpause", startGas-endGas);
    }
}