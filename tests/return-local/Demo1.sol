// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract ReturnDemo {

    function add1(uint256 a, uint256 b) public pure returns (uint256) { 
        uint256 c = a + b;
        return c;
    }

    function add3(uint256 a, uint256 b) public pure returns (uint256) { 
        return a + b;
    }

    function test1 () public pure returns (string memory) { 
        string memory s = "test";
        return s;
    }
}

contract DemoOp {

    function add2(uint256 a, uint256 b) public pure returns (uint256 c) {
        c = a + b;
    }

    function test2() public pure returns (string memory s) { 
        s = "test";
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1() public {
        ReturnDemo demo = new ReturnDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        demo.add1(4,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2020 791

        startGas = gasleft();
        op.add2(4,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1960 739

        startGas = gasleft();
        demo.add3(4,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage1); // 1960 739

        startGas = gasleft();
        demo.test1();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1943 1290

        startGas = gasleft();
        op.test2();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1930 1290

    }
}