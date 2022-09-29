// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {UncheckedDemo} from "./UncheckedDemo.sol";
import {ERC20DetailedDemo} from "./ERC20DetailedDemo.sol";

contract BeforeTokenDemo is UncheckedDemo, ERC20DetailedDemo {

    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () ERC20DetailedDemo("SimpleToken", "SIM", DECIMALS) {
        uncheckedMint(msg.sender, INITIAL_SUPPLY);
    }
}

contract SimpleTokenDemo is UncheckedDemo, ERC20DetailedDemo {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () ERC20DetailedDemo("SimpleToken", "SIM", 18) {
        uncheckedMint(msg.sender, 10000 * (10 ** uint256(decimals())));
    }
}