// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract UncheckedDemo {

    event Transfer(address indexed from, address indexed to, uint256 amount);

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    function checkedMint(address to, uint256 amount) public {
        totalSupply += amount;
        balanceOf[to] += amount;

        emit Transfer(address(0), to, amount);
    }

    function uncheckedMint(address to, uint256 amount) public {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }
}