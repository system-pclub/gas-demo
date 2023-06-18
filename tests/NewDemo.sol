// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.15;

contract Demo {
    uint256 constant ERC20_transferFrom_sig_ptr = 0x0;
    uint256 constant ERC20_transferFrom_length = 0x64; // 4 + 32 * 3 == 100
    uint256 constant OneWord = 0x20;

    function _getFraction0(
        uint256 numerator,
        uint256 denominator,
        uint256 value
    ) public pure returns (uint256 newValue) {
        // Return value early in cases where the fraction resolves to 1.
        if (numerator == denominator) {
            return value;
        }
        // Ensure fraction can be applied to the value with no remainder. Note
        // that the denominator cannot be zero.
        assembly {
            // Ensure new value contains no remainder via mulmod operator.
            // Credit to @hrkrshnn + @axic for proposing this optimal solution.
            // Further optimization by @Chomtana
            if gt(mulmod(value, numerator, denominator), 0) {
            }
            newValue := div(mul(value, numerator), denominator)
        }
    }

    function _getFraction1(
        uint256 numerator,
        uint256 denominator,
        uint256 value
    ) public pure returns (uint256 newValue) {
        // Return value early in cases where the fraction resolves to 1.
        if (numerator == denominator) {
            return value;
        }
        // Ensure fraction can be applied to the value with no remainder. Note
        // that the denominator cannot be zero.
        assembly {
            // Ensure new value contains no remainder via mulmod operator.
            // Credit to @hrkrshnn + @axic for proposing this optimal solution.
            // Further optimization by @Chomtana
            if gt(mulmod(value, numerator, denominator), 0) {
            }
        }

        uint256 valueTimesNumerator = value * numerator;
        assembly {
            // Perform division without zero check.
            newValue := div(valueTimesNumerator, denominator)
        }
    }

    function _performERC20Transfer00(
        address token
    ) public {
        // Utilize assembly to perform an optimized ERC20 token transfer.
        assembly {
            
            // Make call & copy up to 32 bytes of return data to scratch space.
            let callStatus := call(
                gas(),
                token,
                0,
                ERC20_transferFrom_sig_ptr,
                ERC20_transferFrom_length,
                0,
                OneWord
            )
            // Determine whether transfer was successful using status & result.
            let success := and(
                // Set success to whether the call reverted, if not check it
                // either returned exactly 1 (can't just be non-zero data), or
                // had no return data.
                or(
                    and(eq(mload(0), 1), gt(returndatasize(), 31)),
                    iszero(returndatasize())
                ),
                callStatus
            )

            if or(iszero(success), iszero(returndatasize())) {
                if or(iszero(success), iszero(extcodesize(token))) {
                    if iszero(success) {
                        // If it was due to a revert:
                        if iszero(callStatus) {
                            // If it returned a message, bubble it up as long as
                            // sufficient gas remains to do so:
                            if returndatasize() {
                                // Ensure that sufficient gas is available to
                                // copy returndata while expanding memory where
                                // necessary. Start by computing the word size
                                // of returndata and allocated memory.
                                let returnDataWords := div(
                                    returndatasize(),
                                    OneWord
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    function _performERC20Transfer11(
        address token
    ) public {
        // Utilize assembly to perform an optimized ERC20 token transfer.
        assembly {
            
            // Make call & copy up to 32 bytes of return data to scratch space.
            let callStatus := call(
                gas(),
                token,
                0,
                ERC20_transferFrom_sig_ptr,
                ERC20_transferFrom_length,
                0,
                OneWord
            )
            // Determine whether transfer was successful using status & result.
            let success := and(
                // Set success to whether the call reverted, if not check it
                // either returned exactly 1 (can't just be non-zero data), or
                // had no return data.
                or(
                    and(eq(mload(0), 1), gt(returndatasize(), 31)),
                    iszero(returndatasize())
                ),
                callStatus
            )

            if iszero(and(success, iszero(iszero(returndatasize())))) {
                if iszero(and(iszero(iszero(extcodesize(token))), success)) {
                    if iszero(success) {
                        // If it was due to a revert:
                        if iszero(callStatus) {
                            // If it returned a message, bubble it up as long as
                            // sufficient gas remains to do so:
                            if returndatasize() {
                                // Ensure that sufficient gas is available to
                                // copy returndata while expanding memory where
                                // necessary. Start by computing the word size
                                // of returndata and allocated memory.
                                let returnDataWords := div(
                                    returndatasize(),
                                    OneWord
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}
