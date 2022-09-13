// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract CachedResultDemo {

    event Transfer(address indexed from, address indexed to, uint256 amount);

    mapping(address => uint256) public balanceOf;
    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => address) public getApproved;

    function setAddress(address _a) public {
        ownerOf[0] = _a;
    }

    // use modifier logs_gas: 3201 gas, but is  27315 gas when first called.
    function burn(uint256 id) public {
        address owner = ownerOf[id];

        require(ownerOf[id] != address(0), "NOT_MINTED");

        // Ownership check above ensures no underflow.
        unchecked {
            balanceOf[owner]--;
        }

        delete ownerOf[id];
        delete getApproved[id];

        emit Transfer(owner, address(0), id);
    }

    // use modifier logs_gas: 3415 gas
    function burnUseCached(uint256 id) public {
        address owner = ownerOf[id];

        require(owner != address(0), "NOT_MINTED");

        // Ownership check above ensures no underflow.
        unchecked {
            balanceOf[owner]--;
        }

        delete ownerOf[id];
        delete getApproved[id];

        emit Transfer(owner, address(0), id);
    }

}