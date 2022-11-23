// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import "remix_tests.sol";
import {GasMeasure} from "./utils/GasMeasure.sol";
import {UncheckedDemo} from "./UncheckedDemo.sol";
import {ReturnDemo} from "./ReturnDemo.sol";
import {IfDemo} from "./IfDemo.sol";
import {CachedResultDemo} from "./CachedResultDemo.sol";
import "./SSTOREDemo.sol";
import "./SimplifyConstructorDemo.sol";
import "./BoolDemo.sol";
import "./ExtcodeDemo.sol";
import "./BoolIntLoadDemo.sol";
import "./ReturnCompositeDemo.sol";


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
        emit log_named_uint("gasUsage1", gasUsage1);

        startGas = gasleft();
        ifDemo.tierCondition(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1900 gas

        startGas = gasleft();
        ifDemo.andCondition(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); //2016 gas
        return gasUsage1 - gasUsage2; // 116 gas
     }

     function computeComplexIfSavedGas() public returns(uint gasSaved) {
        uint256 a = 2;
        uint256 b = 2;

        uint256 startGas = gasleft();
        ifDemo.complexCondition(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        ifDemo.complexCondition2(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1805 gas

        startGas = gasleft();
        ifDemo.complexCondition(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        return gasUsage1 - gasUsage2; // 51 gas
     }

     function computeConditionalExpressionSavedGas() public returns(uint gasSaved) {
        uint256 a = 3;
        uint256 b = 3;

        uint256 startGas = gasleft();
        ifDemo.conditionalExpression(a, b);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;

        startGas = gasleft();
        ifDemo.conditionalExpression2(a, b);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1800 gas

        startGas = gasleft();
        ifDemo.conditionalExpression(a, b);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        return gasUsage2 - gasUsage1; // 60 gas
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

     function computeSimplifyConstructorSavedGas() public returns(uint gasSaved) {
        uint256 startGas = gasleft();
        SimpleTokenDemo simpleDemo = new SimpleTokenDemo();
        uint256 endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        startGas = gasleft();
        simpleDemo = new SimpleTokenDemo();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        startGas = gasleft();
        BeforeTokenDemo beforeDemo = new BeforeTokenDemo();
        endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        startGas = gasleft();
        beforeDemo = new BeforeTokenDemo();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);
        emit log_named_uint("gasSaved1", gasUsage1 - gasUsage2); // 121589 gas

        startGas = gasleft();
        BeforeDemo bbeforeDemo = new BeforeDemo();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        startGas = gasleft();
        bbeforeDemo = new BeforeDemo();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        startGas = gasleft();
        AfterDemo afterDemo = new AfterDemo();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        startGas = gasleft();
        afterDemo = new AfterDemo();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);
        return gasUsage1 - gasUsage2; // 17627 gas
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
        ReentrancyGuard2 reentrancyGuard2 = new ReentrancyGuard2();
        uint256 startGas = gasleft();
        reentrancyGuard2.test();
        uint256 endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2);

        ReentrancyGuard1 reentrancyGuard1 = new ReentrancyGuard1();
        startGas = gasleft();
        reentrancyGuard1.test();
        endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);

        return gasUsage1 - gasUsage2; // 20236 gas
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

     function compareBoolIntLoad() public returns(int gasDiff) {
        BoolIntLoadDemo demo = new BoolIntLoadDemo();
        uint256 startGas = gasleft();
        demo.loadBool();
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 614 gas

        startGas = gasleft();
        demo.loadBool();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 611 gas

        startGas = gasleft();
        demo.loadInt();
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 791 gas
        return int(gasUsage1) - int(gasUsage2); // -180 gas
     }

     function compareReturnComposite() public returns(uint gasSaved) {
        ERC721 erc721 = new ERC721();
        uint256 startGas = gasleft();
        erc721.ownerOf(0);
        uint256 endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1); // 1749 gas

        startGas = gasleft();
        erc721.ownerOf1(0);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage2); // 1711 gas

        gasSaved =  gasUsage1 - gasUsage2;
        emit log_named_uint("gasSaved0", gasSaved); // 38 gas   

        bytes32 a = 0xc5d2460186f11111927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
        bytes32 b = 0x1111111333333333666666668888888888888888222222222999999999999000;
        bytes32[] memory proof = new bytes32[](2);
        proof[0] = a;
        proof[1] = b;
        bytes32 leaf = 0xc5d2460186f11111927e7db2dcc222c0e500b653ca82273b7bfad8045d85a470;

        startGas = gasleft();
        MerkleProof.processProof(proof, leaf);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_1", gasUsage1); // 802 gas

        startGas = gasleft();
        MerkleProof.processProof2(proof, leaf);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_1", gasUsage2); // 789 gas

        gasSaved =  gasUsage1 - gasUsage2;
        emit log_named_uint("gasSaved1", gasSaved); // 13 gas  

        ERC721A erc721a = new ERC721A();
        startGas = gasleft();
        erc721a._ownershipOf();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_2", gasUsage1); // 2818 gas

        startGas = gasleft();
        erc721a._ownershipOf2();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_2", gasUsage2); // 2738 gas

        gasSaved =  gasUsage1 - gasUsage2;
        emit log_named_uint("gasSaved2", gasSaved); // 79 gas  

        uint256[] memory tokenIds = new uint256[](2);
        tokenIds[0] = 0;
        tokenIds[1] = 1;
        startGas = gasleft();
        erc721a.explicitOwnershipsOf(tokenIds);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_3", gasUsage1); // 7673 gas

        startGas = gasleft();
        erc721a.explicitOwnershipsOf2(tokenIds);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_3", gasUsage2); // 7682 gas

      //   gasSaved =  gasUsage1 - gasUsage2;
      //   emit log_named_uint("gasSaved3", gasSaved); // -9 gas 

        Lloyd lloyd = new Lloyd();
        startGas = gasleft();
        lloyd.walletOfOwner();
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1_4", gasUsage1); // 2752 gas

        startGas = gasleft();
        lloyd.walletOfOwner2();
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2_4", gasUsage2); // 2761 gas
      //   gasSaved =  gasUsage1 - gasUsage2; // -9 gas

        return gasSaved;
     }
}