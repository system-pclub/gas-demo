// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract CachedResultDemo {

    struct Position {
        uint256 a;
        uint256 b;
        int128 c;
    }

    event Transfer(address indexed from, address indexed to, uint256 amount);

    mapping(address => uint256) public balanceOf;
    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => address) public getApproved;
    address[] public allPairs;
    uint256 a = 3;
    uint112 a112;
    uint112 b112;
    address public immutable add1 = address(0xBEEF);
    Position[] public positions;

    event Sync(uint112 reserve0, uint112 reserve1);

    constructor() {
        positions.push(Position(1,1,1));
    }

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
        b112 = uint112(bb);
        emit Sync(a112, b112);
    }

    function test7(uint bb) public {
        a112 = uint112(bb);
        b112 = uint112(bb);
        emit Sync(uint112(bb), uint112(bb));
    }

    function test8() public {
        transfer1(add1);
        transfer1(add1);
    }

    function test9() public {
        address add2 = add1;
        transfer1(add2);
        transfer1(add2);
    }

    function transfer1(address add) public {

    }

    function test10() public {
        uint256 l1 = allPairs.length;
        uint256 l2 = allPairs.length;
    }

    function test11() public {
        uint256 l1 = allPairs.length;
        uint256 l2 = l1;
        uint256 l3 = l1;
    }

    function test12() public {
        Position storage position = positions[0];
        int128 t = position.c;
        int128 t2 = position.c;
        int128 t3 = position.c;
        position.a+=1;
        position.b+=1;
        // test14(position);
    }

    function test13() public {
        Position storage position = positions[0];
        Position memory position_tmp = position;
        int128 t = position_tmp.c;
        int128 t2 = position_tmp.c;
        int128 t3 = position_tmp.c;
        position.a=position_tmp.a+1;
        position.b=position_tmp.b+1;
        // test14(position_tmp);
    }

    // function test14(Position memory position) public {

    // }
}