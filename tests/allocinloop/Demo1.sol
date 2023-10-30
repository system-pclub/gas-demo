// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract LoopInvariantDemo {

    function test1(uint256[] memory arr) public {    
        for(uint256 i = 0; i < arr.length; i++) {
            uint256 a = arr[i];
        }
    }

    function test3(uint256[] calldata arr) public {    
        for(uint256 i = 0; i < arr.length; i++) {
            uint256 a = arr[i];
        }
    }
}

contract DemoOp {

    function test2(uint256[] memory arr) public {
        uint256 a;
        for(uint256 i = 0; i < arr.length; i++) {
            a = arr[i];
        }
    }

    function test4(uint256[] calldata arr) public {
        uint256 a;
        for(uint256 i = 0; i < arr.length; i++) {
            a = arr[i];
        }
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1(uint256 len) public { // 1 5 10 100 1000
        LoopInvariantDemo demo = new LoopInvariantDemo();
        DemoOp op = new DemoOp();
        uint256[] memory arr = new uint256[](len); 
        for(uint256 i = 0; i < len; i++) {
            arr[i] = 1;
        }

        uint256 startGas = gasleft();
        demo.test1(arr);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2319 5251 8916 75279 745470  // 1382 2646 4232 33059 327950

        startGas = gasleft();
        op.test2(arr);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2346 5258 8898 74439 731590  // 1419 2735 4380 34011 332062

        startGas = gasleft();
        demo.test3(arr);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1721 3757 6302 52112 510212 // 1193 2161 3371 25151 242951

        startGas = gasleft();
        op.test4(arr);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1707 3723 6243 51603 505203 // 1183 2179 3424 25834 249934
    }
}