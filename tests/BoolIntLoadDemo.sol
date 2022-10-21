// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract BoolIntLoadDemo {

    bool b = false;
    uint256 a = 0;

    function loadBool() public {
        bool c = b;
    }

    function loadInt() public {
        uint d = a + 1;
    }
}