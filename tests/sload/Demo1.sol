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
    uint256[] public allPairs;
    uint256 a = 3;
    uint112 a112;
    uint112 b112;
    Position[] public positions;

    event Sync(uint112 reserve0, uint112 reserve1);

    constructor() {
        positions.push(Position(1,1,1));
        ownerOf[0] = address(0xBEEF);
        allPairs.push(1);
    }

    function setAddress(address _a) public {
        ownerOf[0] = _a;
    }

    function burn0(uint256 id) public {
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

    function test6(uint bb) public {
        a112 = uint112(bb);
        b112 = uint112(bb);
        emit Sync(a112, b112);
    }

    function transfer1(address add) public {

    }

    function testArr1() public returns (uint256) {
        uint256 l1 = allPairs.length;
        // irrelvant code
        uint256 res = 0;
        for (uint256 i = 0; i<100;i++){
            res+=i*3;
        }
        if (res > 100) {
            uint256 aa = res / 2;
            uint256 cc = aa / 2;
            res = cc / 2;
        }
        //
        uint256 l2 = allPairs.length;
        uint256 c = l1 + l2;
        return c;
    }

    function testArr3() public returns (uint256) {
        uint256 t1 = allPairs[0];
        uint256 t2 = allPairs[0];
        uint256 c = t1 + t2;
        return c;
    }

    function testStruct1() public returns (uint256) {
        Position storage position = positions[0];
        uint256 t = position.a;
        uint256 t2 = position.b;
        int128 t3 = position.c;
        return t + t2;
    }

    function testStruct3() public returns (uint256) {
        Position storage position = positions[0];
        uint256 t = position.a;
        // irrelvant code
        uint256 res = 0;
        for (uint256 i = 0; i<100;i++){
            res+=i*3;
        }
        if (res > 100) {
            uint256 aa = res / 2;
            uint256 cc = aa / 2;
            res = cc / 2;
        }
        //
        uint256 t2 = position.a;
        return t + t2;
    }
}

contract DemoOp {

    struct Position {
        uint256 a;
        uint256 b;
        int128 c;
    }

    event Transfer(address indexed from, address indexed to, uint256 amount);

    mapping(address => uint256) public balanceOf;
    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => address) public getApproved;
    uint256[] public allPairs;
    uint112 a112;
    uint112 b112;
    Position[] public positions;

    event Sync(uint112 reserve0, uint112 reserve1);

    constructor() {
        positions.push(Position(1,1,1));
        ownerOf[0] = address(0xBEEF);
        allPairs.push(1);
    }

    function setAddress(address _a) public {
        ownerOf[0] = _a;
    }

    function burnUseCached1(uint256 id) public {
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

    function test7(uint bb) public {
        a112 = uint112(bb);
        b112 = uint112(bb);
        emit Sync(uint112(bb), uint112(bb));
    }

    function transfer1(address add) public {

    }

    function testArr2() public returns (uint256) {
        uint256 l1 = allPairs.length;
        // irrelvant code
        uint256 res = 0;
        for (uint256 i = 0; i<100;i++){
            res+=i*3;
        }
        if (res > 100) {
            uint256 aa = res / 2;
            uint256 cc = aa / 2;
            res = cc / 2;
        }
        //
        uint256 l2 = l1;
        uint256 c = l1 + l2;
        return c;
    }

    function testArr4() public returns (uint256) {
        uint256 t1 = allPairs[0];
        uint256 t2 = t1;
        uint256 c = t1 + t2;
        return c;
    }

    function testStruct2() public returns (uint256) {
        Position storage position = positions[0];
        Position memory position_tmp = position;
        uint256 t = position_tmp.a;
        uint256 t2 = position_tmp.b;
        int128 t3 = position_tmp.c;
        return t + t2;
    }

    function testStruct2_1() public returns (uint256) {
        Position memory position_tmp = positions[0];
        uint256 t = position_tmp.a;
        uint256 t2 = position_tmp.b;
        int128 t3 = position_tmp.c;
        return t + t2;
    }

    function testStruct4() public returns (uint256) {
        Position storage position = positions[0];
        uint256 t = position.a;
        // irrelvant code
        uint256 res = 0;
        for (uint256 i = 0; i<100;i++){
            res+=i*3;
        }
        if (res > 100) {
            uint256 aa = res / 2;
            uint256 cc = aa / 2;
            res = cc / 2;
        }
        //
        uint256 t2 = t;
        return t + t2;
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function computeCachedSavedGas() public { // optimize=fasle  optimzie=true
        CachedResultDemo cachedResultDemo = new CachedResultDemo();
        DemoOp op = new DemoOp();
        uint256 id = 0;
        cachedResultDemo.setAddress(address(0xBEEF)); 

        uint256 startGas = gasleft();
        cachedResultDemo.burn0(id);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 28228 27422

        cachedResultDemo.setAddress(address(0xBEEF));
        startGas = gasleft();
        cachedResultDemo.burn0(id);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 4325 3519

        op.setAddress(address(0xBEEF));
        startGas = gasleft();
        op.burnUseCached1(id);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 28056 27442

        op.setAddress(address(0xBEEF));
        startGas = gasleft();
        op.burnUseCached1(id);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 4156 3542
    } 

    function test2() public {
        CachedResultDemo cachedResultDemo = new CachedResultDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        cachedResultDemo.test6(11);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 25486 24193

        startGas = gasleft();
        cachedResultDemo.test6(11);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3583 2290

        startGas = gasleft();
        op.test7(11);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 25073 24101

        startGas = gasleft();
        op.test7(11);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 3173 2201
    } 

    function testArr() public {
        CachedResultDemo cachedResultDemo = new CachedResultDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        cachedResultDemo.testArr1();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1361 825 // 60801 28993

        startGas = gasleft();
        op.testArr2();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1251 823 // 60691 28891

        startGas = gasleft();
        cachedResultDemo.testArr3();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1703 1296

        startGas = gasleft();
        op.testArr4();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1422 1010
    }

    function testStruct() public {
        CachedResultDemo cachedResultDemo = new CachedResultDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        cachedResultDemo.testStruct1();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1662 1221

        startGas = gasleft();
        op.testStruct2();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1815 1331

        startGas = gasleft();
        op.testStruct2_1();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_1", gasUsage2); // 1781 1331

        startGas = gasleft();
        cachedResultDemo.testStruct3();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1502 1311 // 60942 29152

        startGas = gasleft();
        op.testStruct4();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1396 987 // 60836 29052
    }
}