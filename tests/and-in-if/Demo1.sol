// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract IfDemo {

    function andCondition(uint256 a, uint256 b) public pure returns (uint256) {
        if (a > 3 && b > 1) {
            return a + b;
        }
        return a - b;
    }

    function complexCondition(uint256 a, uint256 b) public pure returns (uint256){
        if(a > 5 || b > 5 || (a < 3 && b < 3)) {
            return 1;
        }

        return 2;
    }

    function conditionalExpression(uint256 a, uint256 b) public pure returns (uint256){
        uint x = a > 2 && b > 2 ? 1 : 2;
        return x;
    }

    function test1(uint256 a, uint256 b) public pure returns (uint256){
        if (a == 4 && (b == 2 || b == 3)) {
            return a;
        }
        return b;
    }

    function test5(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4 && b > 2 && c == 3) {
            return 2;
        }
        return b;
    }
}

contract DemoOp {

    function tierCondition(uint256 a, uint256 b) public pure returns (uint256){
        if (a > 3) {
            if (b > 1) {
                return a + b;
            }
        }
        return a - b;
    }

    function complexCondition2(uint256 a, uint256 b) public pure returns (uint256){
        if(a > 5) {
            return 1;
        } else if (b > 5) {
            return 1;
        } else if (a < 3) {
            if (b < 3) {
                return 1;
            }
        }

        return 2;
    }

    function conditionalExpression2(uint256 a, uint256 b) public pure returns (uint256){
        uint x;
        if (a > 2){
            if (b > 2) {
                x = 1;
            } else {
                x = 2;
            }
        }else {
            x = 2;
        }
        return x;
    }

    function test2(uint256 a, uint256 b) public pure returns (uint256){
        if (a == 4) {
            if (b == 2 || b == 3) {
                return a;
            }         
        }
        return b;
    }

    function test3(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4) {
            if (b > 2){
                if (c == 3) {
                    return 2;
                }
            }         
        }
        return b;
    }

    function test4(uint256 a, uint256 b, uint256 c) public returns (uint256){
        if (a <= 4) {
            if (b > 2 && c == 3) {
                return 2;
            }         
        }
        return b;
    }
}

contract Test {
    event log_named_uint(string key, uint val);

    function test1() public {
        IfDemo ifDemo = new IfDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        ifDemo.andCondition(4,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2097 878

        startGas = gasleft();
        ifDemo.andCondition(2,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 2067 850

        startGas = gasleft();
        op.tierCondition(4,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2022 803

        startGas = gasleft();
        op.tierCondition(2,2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1981 768

    }

    function test2() public {
        IfDemo ifDemo = new IfDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        ifDemo.complexCondition(6,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1884 789

        startGas = gasleft();
        ifDemo.complexCondition(2,5);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 1924 827

        startGas = gasleft();
        ifDemo.complexCondition(2,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_3", gasUsage1); // 1934 841

        startGas = gasleft();
        op.complexCondition2(6,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1825 730

        startGas = gasleft();
        op.complexCondition2(2,5);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1893 796

        startGas = gasleft();
        op.complexCondition2(2,2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_3", gasUsage2); // 1902 810

    }

    function test3() public {
        IfDemo ifDemo = new IfDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        ifDemo.conditionalExpression(1,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1842 743

        startGas = gasleft();
        ifDemo.conditionalExpression(3,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 1850 751

        startGas = gasleft();
        op.conditionalExpression2(1,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1894 790

        startGas = gasleft();
        op.conditionalExpression2(3,2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1931 832

    }

    function test4() public {
        IfDemo ifDemo = new IfDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        ifDemo.test1(1,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1838 737

        startGas = gasleft();
        ifDemo.test1(4,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 1873 777

        startGas = gasleft();
        op.test2(1,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1900 799

        startGas = gasleft();
        op.test2(4,2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1952 869

    }

    function test5() public {
        IfDemo ifDemo = new IfDemo();
        DemoOp op = new DemoOp();

        uint256 startGas = gasleft();
        ifDemo.test5(5,2,2);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2329 875

        startGas = gasleft();
        ifDemo.test5(4,3,2);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 2348 891

        startGas = gasleft();
        op.test3(5,2,2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2258 807

        startGas = gasleft();
        op.test3(4,3,2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 2307 851

        startGas = gasleft();
        op.test4(5,2,2);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage3); // 2236 785

        startGas = gasleft();
        op.test4(4,3,2);
        endGas = gasleft();
        gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3_2", gasUsage3); // 2293 838

    }
}