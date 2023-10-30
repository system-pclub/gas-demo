
/// @use-src 0:"Demo1.sol"
object "DemoOp_73" {
    code {
        /// @src 0:439:647  "contract DemoOp {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_DemoOp_73()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("DemoOp_73_deployed"), datasize("DemoOp_73_deployed"))

        return(_1, datasize("DemoOp_73_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:439:647  "contract DemoOp {..."
        function constructor_DemoOp_73() {

            /// @src 0:439:647  "contract DemoOp {..."

        }
        /// @src 0:439:647  "contract DemoOp {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "DemoOp_73_deployed" {
        code {
            /// @src 0:439:647  "contract DemoOp {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x29fcda33
                {
                    // add2(uint256,uint256)

                    external_fun_add2_62()
                }

                case 0x66e41cb7
                {
                    // test2()

                    external_fun_test2_72()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_add2_62() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                let ret_0 :=  fun_add2_62(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_test2_72() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_test2_72()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            /// @ast-id 62
            /// @src 0:462:556  "function add2(uint256 a, uint256 b) public pure returns (uint256 c) {..."
            function fun_add2_62(var_a_48, var_b_50) -> var_c_53 {
                /// @src 0:519:528  "uint256 c"
                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                var_c_53 := zero_t_uint256_1

                /// @src 0:544:545  "a"
                let _2 := var_a_48
                let expr_56 := _2
                /// @src 0:548:549  "b"
                let _3 := var_b_50
                let expr_57 := _3
                /// @src 0:544:549  "a + b"
                let expr_58 := checked_add_t_uint256(expr_56, expr_57)

                /// @src 0:540:549  "c = a + b"
                var_c_53 := expr_58
                let expr_59 := expr_58

            }
            /// @src 0:439:647  "contract DemoOp {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658(memPtr) {

                mstore(add(memPtr, 0), "test")

            }

            function copy_literal_to_memory_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(4)
                store_literal_in_memory_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658(add(memPtr, 32))
            }

            function convert_t_stringliteral_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658()
            }

            /// @ast-id 72
            /// @src 0:562:645  "function test2() public pure returns (string memory s) { ..."
            function fun_test2_72() -> var_s_65_mpos {
                /// @src 0:600:615  "string memory s"
                let zero_t_string_memory_ptr_4_mpos := zero_value_for_split_t_string_memory_ptr()
                var_s_65_mpos := zero_t_string_memory_ptr_4_mpos

                /// @src 0:628:638  "s = \"test\""
                var_s_65_mpos := convert_t_stringliteral_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658_to_t_string_memory_ptr()
                let _5_mpos := var_s_65_mpos
                let expr_69_mpos := _5_mpos

            }
            /// @src 0:439:647  "contract DemoOp {..."

        }

        data ".metadata" hex"a26469706673582212207a5eec325dea42128995986d2516be8a1ff7bd9fa05568faccbe7c313a84b44664736f6c634300080f0033"
    }

}

