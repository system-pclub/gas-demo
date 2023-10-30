// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

//0xad93f7ecbf8eb143ad4b52755ef1ddf65c31ac9f
//NewWorldAccessCards.sol	773-777
contract ERC721 {
    mapping(uint256 => address) private _owners;
    constructor(){
       _owners[0] = address(0x1bf); 
    }

    function ownerOf(uint256 tokenId) public view virtual returns (address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "ERC721: invalid token ID");
        return owner;
    }

    function ownerOf1(uint256 tokenId) public view virtual returns (address owner) {
        owner = _owners[tokenId];
        require(owner != address(0), "ERC721: invalid token ID");
    }
}

//0xed14022e1b5df4f9a238e257074aa1d67087f765
//Lloyd.sol	107-113
//Lloyd.sol	120-126
library MerkleProof {
	
	function processProof(bytes32[] memory proof, bytes32 leaf) internal pure returns (bytes32) {
        bytes32 computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
        return computedHash;
    }

    function processProof2(bytes32[] memory proof, bytes32 leaf) internal pure returns (bytes32 computedHash) {
        computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
    }

    function processProofCalldata(bytes32[] calldata proof, bytes32 leaf) internal pure returns (bytes32) {
        bytes32 computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
        return computedHash;
    }

    function processProofCalldata2(bytes32[] calldata proof, bytes32 leaf) internal pure returns (bytes32 computedHash) {
        computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
    }

    function _hashPair(bytes32 a, bytes32 b) private pure returns (bytes32 value) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, a)
            mstore(0x20, b)
            value := keccak256(0x00, 0x40)
        }
    }

}

//Lloyd.sol	1120-1145
contract ERC721A {
	
	// Compiler will pack this into a single 256bit word.
    struct TokenOwnership {
        // The address of the owner.
        address addr;
        // Keeps track of the start time of ownership with minimal overhead for tokenomics.
        uint64 startTimestamp;
        // Whether the token has been burned.
        bool burned;
    }

    mapping(uint256 => TokenOwnership) private _ownerships;

    constructor(){
        _ownerships[0] = TokenOwnership(address(0x2bf), 123456789, true);
    }

    function _ownershipOf() public view returns (TokenOwnership memory) {

        unchecked {
            TokenOwnership memory ownership = _ownerships[0];
            return ownership;
        }
    }

    function _ownershipOf2() public view returns (TokenOwnership memory ownership) {

        unchecked {
            ownership = _ownerships[0];
        }
    }

    function explicitOwnershipsOf(uint256[] memory tokenIds) external pure returns (TokenOwnership[] memory) {
        unchecked {
            uint256 tokenIdsLength = tokenIds.length;
            TokenOwnership[] memory ownerships = new TokenOwnership[](tokenIdsLength);
            for (uint256 i; i != tokenIdsLength; ++i) {
                ownerships[i] = TokenOwnership(address(0x2bf), 123456789, true);
            }
            return ownerships;
        }
    }

    function explicitOwnershipsOf2(uint256[] memory tokenIds) external pure returns (TokenOwnership[] memory ownerships) {
        unchecked {
            uint256 tokenIdsLength = tokenIds.length;
            ownerships = new TokenOwnership[](tokenIdsLength);
            for (uint256 i; i != tokenIdsLength; ++i) {
                ownerships[i] = TokenOwnership(address(0x2bf), 123456789, true);
            }
        }
    }

}

//Lloyd.sol	1655-1679
contract Lloyd {

  function walletOfOwner() public pure returns (uint256[] memory) {
      unchecked {
        uint256[] memory ownedTokenIds = new uint256[](2);
        uint256 currentTokenId = 10;
        uint256 ownedTokenIndex = 0;
        ownedTokenIds[ownedTokenIndex] = currentTokenId;
        return ownedTokenIds;
      }
    
    
  }

  function walletOfOwner2() public pure returns (uint256[] memory ownedTokenIds) {
      unchecked {
        ownedTokenIds = new uint256[](2);
        uint256 currentTokenId = 10;
        uint256 ownedTokenIndex = 0;
        ownedTokenIds[ownedTokenIndex] = currentTokenId;
      }
  }
}



