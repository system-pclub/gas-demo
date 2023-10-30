// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract LoopInvariantDemo {

    function test1(uint256[] memory arr) public {    
        uint res = 1; 
        for(uint256 i = 0; i < arr.length; i++) {
            res+=1;
        }
    }

    function test3(uint256[] calldata arr) public {    
        uint res = 1; 
        for(uint256 i = 0; i < arr.length; i++) {
            res+=1;
        }
    }
}

contract DemoOp {

    function test2(uint256[] memory arr) public {
        uint res = 1; 
        uint256 len = arr.length;
        for(uint256 i = 0; i < len; i++) {
            res+=1;
        }
    }

    function test4(uint256[] calldata arr) public {
        uint res = 1; 
        uint256 len = arr.length;
        for(uint256 i = 0; i < len; i++) {
            res+=1;
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
        emit log_named_uint("gasUsage1", gasUsage1); // 2472 5964 10329 89292  // 1415 2791 4517 35864

        startGas = gasleft();
        op.test2(arr);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2501 5981 10331 88652  // 1439 2803 4508 35219

        startGas = gasleft();
        demo.test3(arr);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1875 4475 7725 66225 // 1221 2281 3606 27456

        startGas = gasleft();
        op.test4(arr);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1858 4426 7636 65416 // 1204 2264 3589 27439
    }
}