// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;


contract ERC20DetailedDemo {

    string private _name;
    string private _symbol;
    uint8 private _decimals;

    /**
     * @dev Sets the values for `name`, `symbol`, and `decimals`. All three of
     * these values are immutable: they can only be set once during
     * construction.
     */
    constructor (string memory name, string memory symbol, uint8 decimal) {
        _name = name;
        _symbol = symbol;
        _decimals = decimal;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

}