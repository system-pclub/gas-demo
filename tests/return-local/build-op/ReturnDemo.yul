
/// @use-src 0:"Demo1.sol"
object "ReturnDemo_46" {
    code {
        /// @src 0:67:437  "contract ReturnDemo {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_ReturnDemo_46()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ReturnDemo_46_deployed"), datasize("ReturnDemo_46_deployed"))

        return(_1, datasize("ReturnDemo_46_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:67:437  "contract ReturnDemo {..."
        function constructor_ReturnDemo_46() {

            /// @src 0:67:437  "contract ReturnDemo {..."

        }
        /// @src 0:67:437  "contract ReturnDemo {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "ReturnDemo_46_deployed" {
        code {
            /// @src 0:67:437  "contract ReturnDemo {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x00c3314f
                {
                    // add3(uint256,uint256)

                    external_fun_add3_33()
                }

                case 0x6b59084d
                {
                    // test1()

                    external_fun_test1_45()
                }

                case 0x76b81449
                {
                    // add1(uint256,uint256)

                    external_fun_add1_19()
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

            function external_fun_add3_33() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                let ret_0 :=  fun_add3_33(param_0, param_1)
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

            function external_fun_test1_45() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_test1_45()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_add1_19() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                let ret_0 :=  fun_add1_19(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

            /// @ast-id 19
            /// @src 0:94:213  "function add1(uint256 a, uint256 b) public pure returns (uint256) { ..."
            function fun_add1_19(var_a_3, var_b_5) -> var__8 {
                /// @src 0:151:158  "uint256"
                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                var__8 := zero_t_uint256_1

                /// @src 0:183:184  "a"
                let _2 := var_a_3
                let expr_12 := _2
                /// @src 0:187:188  "b"
                let _3 := var_b_5
                let expr_13 := _3
                /// @src 0:183:188  "a + b"
                let expr_14 := checked_add_t_uint256(expr_12, expr_13)

                /// @src 0:171:188  "uint256 c = a + b"
                let var_c_11 := expr_14
                /// @src 0:205:206  "c"
                let _4 := var_c_11
                let expr_16 := _4
                /// @src 0:198:206  "return c"
                var__8 := expr_16
                leave

            }
            /// @src 0:67:437  "contract ReturnDemo {..."

            /// @ast-id 33
            /// @src 0:219:315  "function add3(uint256 a, uint256 b) public pure returns (uint256) { ..."
            function fun_add3_33(var_a_21, var_b_23) -> var__26 {
                /// @src 0:276:283  "uint256"
                let zero_t_uint256_5 := zero_value_for_split_t_uint256()
                var__26 := zero_t_uint256_5

                /// @src 0:303:304  "a"
                let _6 := var_a_21
                let expr_28 := _6
                /// @src 0:307:308  "b"
                let _7 := var_b_23
                let expr_29 := _7
                /// @src 0:303:308  "a + b"
                let expr_30 := checked_add_t_uint256(expr_28, expr_29)

                /// @src 0:296:308  "return a + b"
                var__26 := expr_30
                leave

            }
            /// @src 0:67:437  "contract ReturnDemo {..."

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

            /// @ast-id 45
            /// @src 0:321:435  "function test1 () public pure returns (string memory) { ..."
            function fun_test1_45() -> var__36_mpos {
                /// @src 0:360:373  "string memory"
                let zero_t_string_memory_ptr_8_mpos := zero_value_for_split_t_string_memory_ptr()
                var__36_mpos := zero_t_string_memory_ptr_8_mpos

                /// @src 0:386:410  "string memory s = \"test\""
                let var_s_39_mpos := convert_t_stringliteral_9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658_to_t_string_memory_ptr()
                /// @src 0:427:428  "s"
                let _9_mpos := var_s_39_mpos
                let expr_42_mpos := _9_mpos
                /// @src 0:420:428  "return s"
                var__36_mpos := expr_42_mpos
                leave

            }
            /// @src 0:67:437  "contract ReturnDemo {..."

        }

        data ".metadata" hex"a2646970667358221220fc06fb97bc02de5fa333ed4aa9e9b2ccf3c5a5903d4ab544ecee29cbfdd367bf64736f6c634300080f0033"
    }

}

