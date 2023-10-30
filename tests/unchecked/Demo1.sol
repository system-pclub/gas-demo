// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract UncheckedDemo {

    event Transfer(address indexed from, address indexed to, uint256 amount);

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    function checkedMint(address to, uint256 amount) public { 
        totalSupply += amount;
        balanceOf[to] += amount;

        emit Transfer(address(0), to, amount);
    }
}

contract DemoOp {

    event Transfer(address indexed from, address indexed to, uint256 amount);

    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    function uncheckedMint(address to, uint256 amount) public { 
        totalSupply += amount;

        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1() public {
        UncheckedDemo demo = new UncheckedDemo();
        DemoOp op = new DemoOp();
        address to = address(0xBEEF);
        uint256 amount = 18;

        uint256 startGas = gasleft();
        demo.checkedMint(to, amount);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 47963 47044

        startGas = gasleft();
        demo.checkedMint(to, amount);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 4160 3241

        startGas = gasleft();
        op.uncheckedMint(to, amount);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 47772 46931

        startGas = gasleft();
        op.uncheckedMint(to, amount);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 3972 3131
    }
}