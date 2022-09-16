// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {UncheckedDemo} from "./UncheckedDemo.sol";
import {ERC20DetailedDemo} from "./ERC20DetailedDemo.sol";

contract SimpleTokenDemo is UncheckedDemo, ERC20DetailedDemo {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20DetailedDemo("SimpleToken", "SIM", 18) {
        uncheckedMint(msg.sender, 10000 * (10 ** uint256(decimals())));
    }
}