// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {GasMeasure} from "./utils/GasMeasure.sol";


contract ZeroValueDemo {

    struct Param {
        uint256 a;
        uint256 c;
        bool b;
    }

    Param p;

    function setP(uint256 a, bool b) public {
        p.a = a;
        p.c = a;
        p.b = b;
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

        uint256 startGas = gasleft();
        demo.setP(1, true);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_1", gasUsage1); // 72373 gas

        startGas = gasleft();
        demo.setP(2, true);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 1958 gas

        startGas = gasleft();
        demo.setP(0, false);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_3", gasUsage1); // 1958 gas

        startGas = gasleft();
        demo.setP(2, true);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_4", gasUsage1); // 61658 gas

        startGas = gasleft();
        demo.setP(1, true);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_5", gasUsage1); // 1958 gas


        startGas = gasleft();
        demo.setA(2);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_1", gasUsage2); // 1302 gas

        startGas = gasleft();
        demo.setA(1);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 1302 gas

        startGas = gasleft();
        demo.setA(2);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_3", gasUsage2); // 1302 gas


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