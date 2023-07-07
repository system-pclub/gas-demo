// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {GasMeasure} from "./utils/GasMeasure.sol";


contract ZeroValueDemo {

    struct Param {
        uint256 a;
        bool b;
    }

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
}