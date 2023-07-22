// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract VarTypeDemo {
    
    event Sync(bytes data);

    // uint256[] balanceOf;

    // constructor(string calldata s){

    // }

    struct Param {
        uint256 a;
        uint256[] amounts;
    }

    function test1(bytes memory data) public {
        emit Sync(data);
    }

    function test2(bytes calldata data) public {
        emit Sync(data);
    }

    function test3(uint256[] memory amounts) public {
        uint256 amount = amounts[0];
    }

    function test4(uint256[] calldata amounts) external {
        uint256 amount = amounts[0];
    }

    function test5(uint256[] memory amounts) public {
        for (uint256 i = 0; i < amounts.length; ) {
            // uint256 amount = amounts[i];
            amounts[i]+=1;
            unchecked {
                ++i;
            }
        }
    }

    function test6(uint256[] calldata amounts) public {
        for (uint256 i = 0; i < amounts.length; ) {
            uint256 amount = amounts[i];

            // An array can't have a total length
            // larger than the max uint256 value.
            unchecked {
                ++i;
            }
        }
        test5(amounts);
    }

    function test7(uint256[] memory amounts) internal {
        uint256 amount = amounts[0];
        amounts[0] = 1;
    }

    function test8(uint256[] memory amounts) public {
        uint256 amount = amounts[0];
        amounts[0] = 1;
    }

    function test9(uint256[] memory amounts) external {
        test7(amounts);
    }

    function test10(uint256[] calldata amounts) external {
        test7(amounts);
    }

    function test11(uint256[] memory amounts) external {
        test8(amounts);
    }

    function test12(uint256[] calldata amounts) external {
        test8(amounts);
    }

    function test13(string memory s) public {
        test15(s);
    }

    function test14(string calldata s) public {
        test15(s);
    }

    function test15(string memory s) public {
    }

    // function balanceOfBatch1(address[] memory owners, uint256[] memory ids)
    //     public
    //     view
    //     virtual
    //     returns (uint256[] memory balances)
    // {
    //     uint256 ownersLength = owners.length; // Saves MLOADs.

    //     require(ownersLength == ids.length, "LENGTH_MISMATCH");

    //     balances = new uint256[](ownersLength);

    //     // Unchecked because the only math done is incrementing
    //     // the array index counter which cannot possibly overflow.
    //     unchecked {
    //         for (uint256 i = 0; i < ownersLength; ++i) {
    //             balances[i] = balanceOf[owners[i]][ids[i]];
    //         }
    //     }
    // }

    // function balanceOfBatch2(address[] calldata owners, uint256[] calldata ids)
    //     public
    //     view
    //     virtual
    //     returns (uint256[] memory balances)
    // {
    //     uint256 ownersLength = owners.length; // Saves MLOADs.

    //     require(ownersLength == ids.length, "LENGTH_MISMATCH");

    //     balances = new uint256[](ownersLength);

    //     // Unchecked because the only math done is incrementing
    //     // the array index counter which cannot possibly overflow.
    //     unchecked {
    //         for (uint256 i = 0; i < ownersLength; ++i) {
    //             balances[i] = balanceOf[owners[i]][ids[i]];
    //         }
    //     }
    // }
}