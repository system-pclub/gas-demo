// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract CachedResultDemo {

    event Transfer(address indexed from, address indexed to, uint256 amount);

    mapping(address => uint256) public balanceOf;
    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => address) public getApproved;
    uint256 a = 3;
    uint112 a112;
    address public immutable add1 = address(0xBEEF);

    event Sync(uint112 reserve0);


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

    function test0() public {
        uint256 b = a + 1;
        uint256 c = a - 1;
    }

    function test1() public {
        uint256 d = a;
        uint256 b = d + 1;
        uint256 c = d - 1;
    }

    function test2() public {
        if (a > 1) {
            return;
        }
        uint256 c = a - 1;
    }

    function test3() public {
        uint256 d = a;
        if (d > 1) {
            return;
        }
        uint256 c = d - 1;
    }

    function test4() public {
        if (a > 10) {
            return;
        }
        uint256 c = a - 1;
    }

    function test5() public {
        uint256 d = a;
        if (d > 10) {
            return;
        }
        uint256 c = d - 1;
    }

    function test6(uint bb) public {
        a112 = uint112(bb);
        emit Sync(a112);
    }

    function test7(uint bb) public {
        a112 = uint112(bb);
        emit Sync(uint112(bb));
    }

    function test8() public {
        address add2 = add1;
        address add3 = add1;
    }

    function test9() public {
        address add4 = add1;
        address add2 = add4;
        address add3 = add4;
    }
}