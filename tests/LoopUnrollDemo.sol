// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract LoopUnrollDemo {
    uint8 public constant NUM_FEE_OPTIONS = 6;
    uint112[NUM_FEE_OPTIONS] public virtualSupplies = [1,2,3,4,5,6];

    function getVirtualSupply1() public view returns (uint112 virtualSupply) {
       for (uint8 i = 0; i < NUM_FEE_OPTIONS; i++) {
           virtualSupply += virtualSupplies[i];
       }
    }

    function getVirtualSupply2() public view returns (uint112 virtualSupply) {
       virtualSupply = virtualSupplies[0] + virtualSupplies[1] + virtualSupplies[2] + virtualSupplies[3] + virtualSupplies[4] + virtualSupplies[5];
    }
}