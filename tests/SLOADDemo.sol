// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */

 abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


contract Secondary is Context {
    address private _primary;
    /**
     * @dev Emitted when the primary contract changes.
     */
    event PrimaryTransferred(
        address recipient
    );
    /**
     * @dev Sets the primary account to the one that is creating the Secondary contract.
     */
    constructor () {
        _primary = _msgSender();
        emit PrimaryTransferred(_primary);
    }

    function transferPrimary(address recipient) public {
        require(recipient != address(0), "Secondary: new primary is the zero address");
        _primary = recipient;
        emit PrimaryTransferred(_primary);
    }
}

contract Secondary2 is Context {
    address private _primary;
    /**
     * @dev Emitted when the primary contract changes.
     */
    event PrimaryTransferred(
        address recipient
    );
    /**
     * @dev Sets the primary account to the one that is creating the Secondary contract.
     */
    constructor () {
        address msgSender = _msgSender();
        _primary = msgSender;
        emit PrimaryTransferred(msgSender);
    }

    function transferPrimary(address recipient) public {
        require(recipient != address(0), "Secondary: new primary is the zero address");
        _primary = recipient;
        emit PrimaryTransferred(recipient);
    }
}