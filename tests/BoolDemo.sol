// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.15;


contract ReentrancyGuard0 {

    bytes4 private _recRetval = 0x1b111111;
   /**
    * @dev We use a single lock for the whole contract.
    */
    bool private reentrancyLock = false;

   /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(!reentrancyLock);
        reentrancyLock = true;
        _;
        reentrancyLock = false;
    }

    function test() public nonReentrant returns(uint) {
        return 1 + 2;
    }

}


contract ReentrancyGuard1 {

    bytes4 private _recRetval = 0x1b111111;
   /**
    * @dev We use a single lock for the whole contract.
    */
    bool private reentrancyLock = true;

   /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(reentrancyLock);
        reentrancyLock = false;
        _;
        reentrancyLock = true;
    }

    function test() public nonReentrant returns(uint) {
        return 1 + 2;
    }

}


contract ReentrancyGuard2 {

    bytes4 private _recRetval = 0x1b111111;
    /// @dev Constant for unlocked guard state - non-zero to prevent extra gas costs.
    /// See: https://github.com/OpenZeppelin/openzeppelin-solidity/issues/1056
    uint private constant REENTRANCY_GUARD_FREE = 1;

    /// @dev Constant for locked guard state
    uint private constant REENTRANCY_GUARD_LOCKED = 2;

    /**
    * @dev We use a single lock for the whole contract.
    */
    uint256 private reentrancyLock = REENTRANCY_GUARD_FREE;

    /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(reentrancyLock == REENTRANCY_GUARD_FREE);
        reentrancyLock = REENTRANCY_GUARD_LOCKED;
        _;
        reentrancyLock = REENTRANCY_GUARD_FREE;
    }

    function test() public nonReentrant returns (uint) {
        return 1 + 2;
    }

}


contract ReentrancyGuard3 {

    uint256 a;
    bool private reentrancyLock;
    uint256 private b;

   /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(!reentrancyLock);
        reentrancyLock = true;
        _;
        reentrancyLock = false;
    }

    function test() public nonReentrant returns(uint) {
        return 1 + 2;
    }

}

contract ReentrancyGuard4 {

    uint256 a;
    bool private reentrancyLock = true;
    uint256 private b;

   /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(reentrancyLock);
        reentrancyLock = false;
        _;
        reentrancyLock = true;
    }

    function test() public nonReentrant returns(uint) {
        return 1 + 2;
    }

}


contract ReentrancyGuard5 {

    uint256 private a;
    uint256 private constant REENTRANCY_GUARD_FREE = 1;

    /// @dev Constant for locked guard state
    uint256 private constant REENTRANCY_GUARD_LOCKED = 2;

    /**
    * @dev We use a single lock for the whole contract.
    */
    uint256 private reentrancyLock = REENTRANCY_GUARD_FREE;

    uint256 private b;

    /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(reentrancyLock == REENTRANCY_GUARD_FREE);
        reentrancyLock = REENTRANCY_GUARD_LOCKED;
        _;
        reentrancyLock = REENTRANCY_GUARD_FREE;
    }

    function test() public nonReentrant returns (uint) {
        return 1 + 2;
    }

}

contract ReentrancyGuard6 {

    bool c;
    uint256 a;
    bool private reentrancyLock;
    uint256 private b;
    bool d;
    uint256 e;

   /**
    * @dev Prevents a contract from calling itself, directly or indirectly.
    * If you mark a function `nonReentrant`, you should also
    * mark it `external`. Calling one `nonReentrant` function from
    * another is not supported. Instead, you can implement a
    * `private` function doing the actual work, and an `external`
    * wrapper marked as `nonReentrant`.
    */
    modifier nonReentrant() {
        require(!reentrancyLock);
        reentrancyLock = true;
        _;
        reentrancyLock = false;
    }

    function test() public nonReentrant returns(uint) {
        return 1 + 2;
    }

}

abstract contract Initializable {
    uint8 private _initialized;
    bool private _initializing;
}

contract BoolDemo1 is Initializable {
    bool private _paused;

}

