// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {GasMeasure} from "./utils/GasMeasure.sol";


contract ZeroValueDemo {

    struct Param {
        uint256 a;
        bool b;
    }

    uint256 n;
    Param p;

    function setP(Param calldata param) public {
        p = param;
    }

    function setA(uint256 a) public {
        p.a = a;
    }

    function setB(bool b) public {
        p.b = b;
    }

    function setN(uint256 i) public {
        n = i;
    }
}

contract ZeroValueTest is GasMeasure {

    ZeroValueDemo demo = new ZeroValueDemo();

    function test1() public {

        ZeroValueDemo.Param memory param = ZeroValueDemo.Param(1,true);

        uint256 startGas = gasleft();
        demo.setP(param);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_1", gasUsage1); // 51049 gas

        param = ZeroValueDemo.Param(2,true);
        startGas = gasleft();
        demo.setP(param);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 2740 gas

        param = ZeroValueDemo.Param(0,false);
        startGas = gasleft();
        demo.setP(param);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_3", gasUsage1); // 2740 gas

        param = ZeroValueDemo.Param(2,true);
        startGas = gasleft();
        demo.setP(param);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_4", gasUsage1); // 42540 gas

        param = ZeroValueDemo.Param(1,true);
        startGas = gasleft();
        demo.setP(param);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_5", gasUsage1); // 2740 gas


        startGas = gasleft();
        demo.setA(2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_1", gasUsage2); // 1280 gas

        startGas = gasleft();
        demo.setA(1);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1280 gas

        startGas = gasleft();
        demo.setA(2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_3", gasUsage2); // 1280 gas

        startGas = gasleft();
        demo.setA(100);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_4", gasUsage2); // 1280 gas

        startGas = gasleft();
        demo.setA(200);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_5", gasUsage2); // 1280 gas


        startGas = gasleft();
        demo.setB(false);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3_1", gasUsage3); // 1294 gas

        startGas = gasleft();
        demo.setB(true);
        endGas = gasleft();
        gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3_2", gasUsage3); // 21194 gas
    }

    function test2() public {

        uint256 startGas = gasleft();
        demo.setN(1);
        uint256 endGas = gasleft();
        uint256 gasUsage = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage); // 27786 gas

        startGas = gasleft();
        demo.setN(2);
        endGas = gasleft();
        gasUsage = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage); // 1274 gas

        startGas = gasleft();
        demo.setN(0);
        endGas = gasleft();
        gasUsage = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage); // 1274 gas

        startGas = gasleft();
        demo.setN(2);
        endGas = gasleft();
        gasUsage = startGas - endGas;
        emit log_named_uint("gasUsage4", gasUsage); // 21174 gas

        startGas = gasleft();
        demo.setN(1);
        endGas = gasleft();
        gasUsage = startGas - endGas;
        emit log_named_uint("gasUsage5", gasUsage); // 1274 gas
    }
}