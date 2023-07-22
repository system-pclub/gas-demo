// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import "./VarTypeDemo.sol";
import "./IfDemo.sol";

contract VarTypeTest is GasMeasure {
    VarTypeDemo demo = new VarTypeDemo();

    function gasTest() public {
        bytes memory a = "0xc5d2";
        uint256 startGas = gasleft();
        demo.test1(a);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 8518 gas

        startGas = gasleft();
        demo.test1(a);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 4003 gas

        startGas = gasleft();
        demo.test2("0xc5d2");
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 3150 gas
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 853 gas

        uint256[] memory amount = new uint256[](2);
        amount[0] = 0;
        amount[1] = 1;
        startGas = gasleft();
        demo.test3(amount);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2827 gas

        startGas = gasleft();
        demo.test4(amount);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1872 gas
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 955 gas

        startGas = gasleft();
        demo.test5(amount);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2976 gas

        startGas = gasleft();
        demo.test6(amount);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 2201 gas
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 775 gas
    }

    // function test2() public {

    //     uint256[] memory amount = new uint256[](2);
    //     amount[0] = 0;
    //     amount[1] = 1;
    //     uint256 startGas = gasleft();
    //     demo.test7(amount);
    //     uint256 endGas = gasleft();
    //     uint256 gasUsage1 = startGas - endGas;
    //     emit log_named_uint("gasUsage1", gasUsage1); // 7312 gas

    //     startGas = gasleft();
    //     demo.test7(amount);
    //     endGas = gasleft();
    //     gasUsage1 = startGas - endGas;
    //     emit log_named_uint("gasUsage1", gasUsage1); // 2794 gas

    //     startGas = gasleft();
    //     demo.test8(amount);
    //     endGas = gasleft();
    //     uint256 gasUsage2 = startGas - endGas;
    //     emit log_named_uint("gasUsage2", gasUsage2); // 1895 gas
    //     emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 899 gas

    // }

    function test3(uint256 len) public { // 1000
        uint256[] memory amount = new uint256[](len);
        for (uint256 i = 0;i<len;i++){
            amount[i] = 2;
        }
        uint256 startGas = gasleft();
        demo.test9(amount);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 509246 gas

        startGas = gasleft();
        demo.test9(amount);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 495831 gas

        startGas = gasleft();
        demo.test10(amount);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 273655 gas
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 222176 gas

        startGas = gasleft();
        demo.test11(amount);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 495919 gas

        startGas = gasleft();
        demo.test12(amount);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 273632 gas
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 222287 gas
    }

    function test4() public {
        string memory s = "ss";
        uint256 startGas = gasleft();
        demo.test13(s);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 6522 gas

        startGas = gasleft();
        demo.test14(s);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1703 gas

        startGas = gasleft();
        demo.test13(s);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 2007 gas

    }
}