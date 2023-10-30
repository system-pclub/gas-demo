// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.15;


contract ReentrancyGuard {

    bool private reentrancyLock;

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

    function test(uint256 a) public nonReentrant returns(uint) {
        uint256 c = a ** a / 2;
        if (c > 2){
            return c;
        }
        return a;
    }

}

contract ReentrancyGuard2 {

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

    function test(uint256 a) public nonReentrant returns(uint) {
        uint256 c = a ** a / 2;
        if (c > 2){
            return c;
        }
        return a;
    }

}

contract DemoOp {

    uint256 private constant REENTRANCY_GUARD_FREE = 1;

    /// @dev Constant for locked guard state
    uint256 private constant REENTRANCY_GUARD_LOCKED = 2;

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

    function test(uint256 a) public nonReentrant returns(uint) {
        uint256 c = a ** a / 2;
        if (c > 2){
            return c;
        }
        return a;
    }

}

contract Test {
    event log_named_uint(string key, uint val);

    function test1() public {
        ReentrancyGuard demo = new ReentrancyGuard();
        ReentrancyGuard2 demo2 = new ReentrancyGuard2();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        demo.test(3);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 24624 23523

        startGas = gasleft();
        demo.test(3);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 22622 21521

        startGas = gasleft();
        demo2.test(3);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 22619 21518

        startGas = gasleft();
        op.test(3);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage3); // 2384 1393

    }
}
