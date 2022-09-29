// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import {UncheckedDemo} from "./UncheckedDemo.sol";
import {ReturnDemo} from "./ReturnDemo.sol";
import {IfDemo} from "./IfDemo.sol";
import {CachedResultDemo} from "./CachedResultDemo.sol";
import "./SSTOREDemo.sol";
import "./RemoveSLOADDemo.sol";
import "./BoolDemo.sol";
import "./ExtcodeDemo.sol";

// 1 eth: $1,594.61 (10^9 gwei)
// 1 gas: 21.39 gwei (about $3.4*10^-5)
contract SimpleGasTest is GasMeasure {

    UncheckedDemo uncheckedDemo = new UncheckedDemo();
    ReturnDemo returnDemo = new ReturnDemo();
    IfDemo ifDemo = new IfDemo();
    CachedResultDemo cachedResultDemo = new CachedResultDemo();

    function testDemo() public logs_gas {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        Assert.equal(result, uint(3), "result should be equal to 3");
    }

    function computeUncheckedSavedGas() public returns(uint gasSaved) {
        address to = address(0xBEEF);
        uint256 amount = 18;

        uint256 startGas = gasleft();
        uncheckedDemo.checkedMint(to, amount);
        uint256 endGas = gasleft();
        uint256 gasUsage_checked = startGas - endGas;

        startGas = gasleft();
        uncheckedDemo.uncheckedMint(to, amount);
        endGas = gasleft();
        uint256 gasUsage_unchecked = startGas - endGas;
        emit log_named_uint("gasSaved", gasUsage_checked - gasUsage_unchecked); // 48525 gas

        startGas = gasleft();
        uncheckedDemo.checkedMint(to, amount);
        endGas = gasleft();
        gasUsage_checked = startGas - endGas;
        return gasUsage_checked - gasUsage_unchecked; // 210 gas
    }

    function computeReturnGas() public {
        uint256 a = 1;
        uint256 b = 2;

        uint256 startGas = gasleft();
        returnDemo.add1(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gas1", gasUsage1); // 6434 gas

        startGas = gasleft();
        returnDemo.add2(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gas2", gasUsage2); // 1884 gas

        startGas = gasleft();
        returnDemo.add3(a, b);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gas3", gasUsage3); // 1862 gas

        startGas = gasleft();
        returnDemo.add1(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gas_1", gasUsage1); // 1919 gas
    }

     function computeIfSavedGas() public returns(uint gasSaved) {
        uint256 a = 2;
        uint256 b = 2;

        uint256 startGas = gasleft();
        ifDemo.andCondition(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        ifDemo.tierCondition(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 4540 gas

        startGas = gasleft();
        ifDemo.andCondition(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        return gasUsage1 - gasUsage2; // 25 gas
     }

     function computeCachedSavedGas() public returns(uint gasSaved) {
        uint256 id = 0;
        cachedResultDemo.setAddress(address(0xBEEF)); 

        uint256 startGas = gasleft();
        cachedResultDemo.burn(id);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        cachedResultDemo.setAddress(address(0xBEEF));
        startGas = gasleft();
        cachedResultDemo.burnUseCached(id);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasSaved", gasUsage1 - gasUsage2); // 24073 gas

        cachedResultDemo.setAddress(address(0xBEEF));
        startGas = gasleft();
        cachedResultDemo.burn(id);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        return gasUsage1 - gasUsage2; // 170 gas
     }

     function computeSloadSavedGas() public returns(uint gasSaved) {

        uint256 startGas = gasleft();
        BeforeTokenDemo beforeDemo = new BeforeTokenDemo();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        startGas = gasleft();
        SimpleTokenDemo simpleDemo = new SimpleTokenDemo();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        return gasUsage1 - gasUsage2; // 121991 gas
     }

     function computeSSTORESavedGas() public returns(uint gasSaved) {

        uint256 startGas = gasleft();
        Secondary secondary = new Secondary();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        Secondary2 secondary2 = new Secondary2();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasSaved1", gasUsage1 - gasUsage2); // 6639 gas

        startGas = gasleft();
        secondary.transferPrimary(address(0xBEEF));
        endGas = gasleft();
        gasUsage1 = startGas - endGas;

        startGas = gasleft();
        secondary2.transferPrimary(address(0xBEEF));
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        
        return gasUsage1 - gasUsage2; // 113 gas
     }

     function computBoolSavedGas() public returns(uint gasSaved) {
        ReentrancyGuard1 reentrancyGuard1 = new ReentrancyGuard1();
        uint256 startGas = gasleft();
        reentrancyGuard1.test();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        ReentrancyGuard2 reentrancyGuard2 = new ReentrancyGuard2();
        startGas = gasleft();
        reentrancyGuard2.test();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        return gasUsage1 - gasUsage2; // 20242 gas
     }

     function computExtcodehashSavedGas() public returns(uint gasSaved) {
        uint256 startGas = gasleft();
        Address0.isContract(address(0xBEEF));
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        Address0.isContract(address(0xBEEF));
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasDiff", gasUsage1 - gasUsage2); // 2503 gas

        startGas = gasleft();
        Address1.isContract(address(0xBEEF));
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        return gasUsage3 - gasUsage2; //  48 gas
     }
}