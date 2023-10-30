// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract VarTypeDemo {

    event Sync(bytes data);

    function test1(bytes memory data) public {
        emit Sync(data);
    }

    function test3(uint256[] memory amounts) public {
        uint256 amount = amounts[0];
    }

    function test5(uint256[] memory amounts) public {
        for (uint256 i = 0; i < amounts.length; ) {
            uint256 amount = amounts[i];
            unchecked {
                ++i;
            }
        }
    }

}

contract DemoOp {

    event Sync(bytes data);

    function test2(bytes calldata data) public {
        emit Sync(data);
    }

    function test4(uint256[] calldata amounts) external {
        uint256 amount = amounts[0];
    }

    function test6(uint256[] calldata amounts) public {
        for (uint256 i = 0; i < amounts.length; ) {
            uint256 amount = amounts[i];
            unchecked {
                ++i;
            }
        }
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1() public {
        VarTypeDemo demo = new VarTypeDemo();
        DemoOp op = new DemoOp();
        bytes memory a = "0xc5d2";

        uint256 startGas = gasleft();
        demo.test1(a);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 3851 3025

        startGas = gasleft();
        op.test2(a);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 3244 2745
    }

    function test2(uint256 len) public { // 1 10 100 1000
        VarTypeDemo demo = new VarTypeDemo();
        DemoOp op = new DemoOp();
        uint256[] memory data = new uint256[](len);
        data[0] = 1;

        uint256 startGas = gasleft();
        demo.test3(data);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2149 6577 51250 504541  // 1315 2710 17053 167044

        startGas = gasleft();
        op.test4(data);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1475 3851 27611 265211  // 1019 1730 8840 79940

        startGas = gasleft();
        demo.test5(data);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2213 7685 62426 611577  // 1371 3549 25350 245101

        startGas = gasleft();
        op.test6(data);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1618 5074 39634 385234  // 1150 2743 18673 177973
    }
}