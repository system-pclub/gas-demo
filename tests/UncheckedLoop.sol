// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

import {GasMeasure} from "./utils/GasMeasure.sol";

contract UncheckedLoopDemo {

    function smallTest0(uint256 times) public {
        uint256 pos = 0;
        uint256 index = 0;
        uint256[] memory hashes = new uint256[](times);

        for (uint256 i = 0; i < times; i++) {
            index++;
            hashes[pos++] = 1;
        }
    }

    function smallTest1(uint256 times) public {
        uint256 pos = 0;
        uint256 index = 0;
        uint256[] memory hashes = new uint256[](times);

        unchecked {
            for (uint256 i = 0; i < times; i++) {
                index++;
                hashes[pos++] = 1;
            }
        }  
    }

    function smallTest2(uint256 times) public pure {
        uint256 pos = 0;
        uint256 index = 0;
        uint256[] memory hashes = new uint256[](times);

        for (uint256 i = 0; i < times; i++) {
            unchecked {
                index++;
                hashes[pos++] = 1;
            }
        }
    }

    function smallTest3(uint256 times) public pure {
        uint256 pos = 0;
        uint256 index = 0;
        uint256[] memory hashes = new uint256[](times);

        for (uint256 i = 0; i < times;) {
            index++;
            hashes[pos++] = 1;
            unchecked {
                i++;
            }
        }
    }

    function processMultiProof(
        bytes32[] memory proof,
        bool[] memory proofFlags,
        bytes32[] memory leaves
    ) internal pure returns (bytes32 merkleRoot) {
        // This function rebuild the root hash by traversing the tree up from the leaves. The root is rebuilt by
        // consuming and producing values on a queue. The queue starts with the `leaves` array, then goes onto the
        // `hashes` array. At the end of the process, the last hash in the `hashes` array should contain the root of
        // the merkle tree.
        uint256 leavesLen = leaves.length;
        uint256 totalHashes = proofFlags.length;

        // Check proof validity.
        require(leavesLen + proof.length - 1 == totalHashes, "MerkleProof: invalid multiproof");

        // The xxxPos values are "pointers" to the next value to consume in each array. All accesses are done using
        // `xxx[xxxPos++]`, which return the current value and increment the pointer, thus mimicking a queue's "pop".
        bytes32[] memory hashes = new bytes32[](totalHashes);
        uint256 leafPos = 0;
        uint256 hashPos = 0;
        uint256 proofPos = 0;
        // At each step, we compute the next hash using two values:
        // - a value from the "main queue". If not all leaves have been consumed, we get the next leaf, otherwise we
        //   get the next hash.
        // - depending on the flag, either another value for the "main queue" (merging branches) or an element from the
        //   `proof` array.
        for (uint256 i = 0; i < totalHashes; i++) {
            bytes32 a = leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++];
            bytes32 b = proofFlags[i] ? leafPos < leavesLen ? leaves[leafPos++] : hashes[hashPos++] : proof[proofPos++];
        }

        if (totalHashes > 0) {
            return hashes[totalHashes - 1];
        } else if (leavesLen > 0) {
            return leaves[0];
        } else {
            return proof[0];
        }
    }
}

contract UncheckedLoopTest is GasMeasure {

    function test1() public returns(uint gasSaved) {
        UncheckedLoopDemo demo = new UncheckedLoopDemo();
        uint256 startGas = gasleft();
        demo.smallTest0(6);
        uint256 endGas = gasleft();
        uint256 gasUsage0 = startGas - endGas;
        emit log_named_uint("gasUsage0", gasUsage0); // 4336 gas

        startGas = gasleft();
        demo.smallTest0(6);
        endGas = gasleft();
        gasUsage0 = startGas - endGas;
        emit log_named_uint("gasUsage0", gasUsage0);  // 4333 gas

        startGas = gasleft();
        demo.smallTest1(6);
        endGas = gasleft();
        uint256 gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);  // 2217 gas

        startGas = gasleft();
        demo.smallTest2(6);
        endGas = gasleft();
        uint256 gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage1);  // 2217 gas

        startGas = gasleft();
        demo.smallTest3(6);
        endGas = gasleft();
        uint256 gasUsage3 = startGas - endGas;
        emit log_named_uint("gasUsage3", gasUsage1);  // 2217 gas


        startGas = gasleft();
        demo.smallTest0(100);
        endGas = gasleft();
        gasUsage0 = startGas - endGas;
        emit log_named_uint("gasUsage0", gasUsage0);  // 53234 gas

        startGas = gasleft();
        demo.smallTest1(100);
        endGas = gasleft();
        gasUsage1 = startGas - endGas;
        emit log_named_uint("gasUsage1", gasUsage1);  // 17278 gas

        startGas = gasleft();
        demo.smallTest2(100);
        endGas = gasleft();
        gasUsage2 = startGas - endGas;
        emit log_named_uint("gasUsage2", gasUsage1);  // 17278 gas
    }
}