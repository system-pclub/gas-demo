// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract UncheckedLoopDemo {

    function test1(uint256[] memory data) public {
        for (uint256 i = 0; i < data.length; i++) {
            uint256 a = data[i];
        }
    }
}

contract DemoOp {

    function test2(uint256[] memory data) public {
        for (uint256 i = 0; i < data.length; ) {
            uint256 a = data[i];
            unchecked {
                i++;
            }
        }
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1(uint256 len) public { //1 10 100 1000
        UncheckedLoopDemo demo = new UncheckedLoopDemo();
        DemoOp op = new DemoOp();
        uint256[] memory data = new uint256[](len);
        data[0] = 1;

        uint256 startGas = gasleft();
        demo.test1(data);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2319 8916 75279 745470  // 1382 4251 33059 327950

        startGas = gasleft();
        demo.test1(data);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2316 8913 74904 736555  // 1379 4223 32684 319035

        startGas = gasleft();
        op.test2(data);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2196 7713 62904 616555  // 1305 3483 25284 245035

    }
}