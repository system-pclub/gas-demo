
/// @use-src 0:"Demo1.sol"
object "DemoOp_311" {
    code {
        /// @src 0:1398:2572  "contract DemoOp {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_DemoOp_311()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("DemoOp_311_deployed"), datasize("DemoOp_311_deployed"))

        return(_1, datasize("DemoOp_311_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function cleanup_t_rational_48879_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_48879_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_48879_by_1(value)))
        }

        function convert_t_rational_48879_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_48879_by_1_to_t_uint160(value)
        }

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
            mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_20_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_address_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
            let convertedValue_0 := convert_t_address_to_t_address(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
        }

        /// @ast-id 214
        /// @src 0:1825:1884  "constructor() {..."
        function constructor_DemoOp_311() {

            /// @src 0:1825:1884  "constructor() {..."

            /// @src 0:1870:1876  "0xBEEF"
            let expr_209 := 0xbeef
            /// @src 0:1862:1877  "address(0xBEEF)"
            let expr_210 := convert_t_rational_48879_by_1_to_t_address(expr_209)
            /// @src 0:1849:1856  "ownerOf"
            let _2 := 0x01
            let expr_204 := _2
            /// @src 0:1857:1858  "0"
            let expr_205 := 0x00
            /// @src 0:1849:1859  "ownerOf[0]"
            let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(expr_204,expr_205)
            /// @src 0:1849:1877  "ownerOf[0] = address(0xBEEF)"
            update_storage_value_offset_0t_address_to_t_address(_3, expr_210)
            let expr_211 := expr_210

        }
        /// @src 0:1398:2572  "contract DemoOp {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "DemoOp_311_deployed" {
        code {
            /// @src 0:1398:2572  "contract DemoOp {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x081812fc
                {
                    // getApproved(uint256)

                    external_fun_getApproved_191()
                }

                case 0x312e5a61
                {
                    // transfer1(address)

                    external_fun_transfer1_310()
                }

                case 0x4c31b4f2
                {
                    // burnUseCached1(uint256)

                    external_fun_burnUseCached1_273()
                }

                case 0x578bdc47
                {
                    // test7(uint256)

                    external_fun_test7_304()
                }

                case 0x6352211e
                {
                    // ownerOf(uint256)

                    external_fun_ownerOf_187()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_183()
                }

                case 0xe30081a0
                {
                    // setAddress(address)

                    external_fun_setAddress_226()
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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            /// @ast-id 191
            /// @src 0:1683:1729  "mapping(uint256 => address) public getApproved"
            function getter_fun_getApproved_191(key_0) -> ret {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_getApproved_191() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_getApproved_191(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_transfer1_310() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_transfer1_310(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burnUseCached1_273() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_burnUseCached1_273(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_test7_304() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_test7_304(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 187
            /// @src 0:1635:1677  "mapping(uint256 => address) public ownerOf"
            function getter_fun_ownerOf_187(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            function external_fun_ownerOf_187() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_ownerOf_187(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 183
            /// @src 0:1585:1629  "mapping(address => uint256) public balanceOf"
            function getter_fun_balanceOf_183(key_0) -> ret {

                let slot := 0
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_balanceOf_183() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_183(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_setAddress_226() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_setAddress_226(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            /// @ast-id 226
            /// @src 0:1890:1961  "function setAddress(address _a) public {..."
            function fun_setAddress_226(var__a_216) {

                /// @src 0:1952:1954  "_a"
                let _1 := var__a_216
                let expr_222 := _1
                /// @src 0:1939:1946  "ownerOf"
                let _2 := 0x01
                let expr_219 := _2
                /// @src 0:1947:1948  "0"
                let expr_220 := 0x00
                /// @src 0:1939:1949  "ownerOf[0]"
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(expr_219,expr_220)
                /// @src 0:1939:1954  "ownerOf[0] = _a"
                update_storage_value_offset_0t_address_to_t_address(_3, expr_222)
                let expr_223 := expr_222

            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca(memPtr) {

                mstore(add(memPtr, 0), "NOT_MINTED")

            }

            function abi_encode_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 10)
                store_literal_in_memory_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function decrement_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(sub(value, 1))
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function update_byte_slice_dynamic20(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_t_address_to_t_address(slot, offset, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_dynamic20(sload(slot), offset, prepare_store_t_address(convertedValue_0)))
            }

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function storage_set_to_zero_t_address(slot, offset) {
                let zero_0 := zero_value_for_split_t_address()
                update_storage_value_t_address_to_t_address(slot, offset, zero_0)
            }

            /// @ast-id 273
            /// @src 0:2006:2372  "function burnUseCached1(uint256 id) public {..."
            function fun_burnUseCached1_273(var_id_228) {

                /// @src 0:2075:2082  "ownerOf"
                let _4 := 0x01
                let expr_233 := _4
                /// @src 0:2083:2085  "id"
                let _5 := var_id_228
                let expr_234 := _5
                /// @src 0:2075:2086  "ownerOf[id]"
                let _6 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_233,expr_234)
                let _7 := read_from_storage_split_offset_0_t_address(_6)
                let expr_235 := _7
                /// @src 0:2059:2086  "address owner = ownerOf[id]"
                let var_owner_232 := expr_235
                /// @src 0:2105:2110  "owner"
                let _8 := var_owner_232
                let expr_238 := _8
                /// @src 0:2122:2123  "0"
                let expr_241 := 0x00
                /// @src 0:2114:2124  "address(0)"
                let expr_242 := convert_t_rational_0_by_1_to_t_address(expr_241)
                /// @src 0:2105:2124  "owner != address(0)"
                let expr_243 := iszero(eq(cleanup_t_address(expr_238), cleanup_t_address(expr_242)))
                /// @src 0:2097:2139  "require(owner != address(0), \"NOT_MINTED\")"
                require_helper_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca(expr_243)
                /// @src 0:2229:2238  "balanceOf"
                let _9 := 0x00
                let expr_247 := _9
                /// @src 0:2239:2244  "owner"
                let _10 := var_owner_232
                let expr_248 := _10
                /// @src 0:2229:2245  "balanceOf[owner]"
                let _11 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_247,expr_248)
                /// @src 0:2229:2247  "balanceOf[owner]--"
                let _13 := read_from_storage_split_offset_0_t_uint256(_11)
                let _12 := decrement_wrapping_t_uint256(_13)
                update_storage_value_offset_0t_uint256_to_t_uint256(_11, _12)
                let expr_250 := _13
                /// @src 0:2275:2282  "ownerOf"
                let _14 := 0x01
                let expr_253 := _14
                /// @src 0:2283:2285  "id"
                let _15 := var_id_228
                let expr_254 := _15
                /// @src 0:2275:2286  "ownerOf[id]"
                let _16 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_253,expr_254)
                /// @src 0:2268:2286  "delete ownerOf[id]"
                storage_set_to_zero_t_address(_16, 0)
                /// @src 0:2303:2314  "getApproved"
                let _17 := 0x02
                let expr_258 := _17
                /// @src 0:2315:2317  "id"
                let _18 := var_id_228
                let expr_259 := _18
                /// @src 0:2303:2318  "getApproved[id]"
                let _19 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_258,expr_259)
                /// @src 0:2296:2318  "delete getApproved[id]"
                storage_set_to_zero_t_address(_19, 0)
                /// @src 0:2343:2348  "owner"
                let _20 := var_owner_232
                let expr_264 := _20
                /// @src 0:2358:2359  "0"
                let expr_267 := 0x00
                /// @src 0:2350:2360  "address(0)"
                let expr_268 := convert_t_rational_0_by_1_to_t_address(expr_267)
                /// @src 0:2362:2364  "id"
                let _21 := var_id_228
                let expr_269 := _21
                /// @src 0:2334:2365  "Transfer(owner, address(0), id)"
                let _22 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _23 := convert_t_address_to_t_address(expr_264)
                let _24 := convert_t_address_to_t_address(expr_268)
                {
                    let _25 := allocate_unbounded()
                    let _26 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_25 , expr_269)
                    log3(_25, sub(_26, _25) , _22, _23, _24)
                }
            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            function cleanup_t_uint112(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffff)
            }

            function convert_t_uint256_to_t_uint112(value) -> converted {
                converted := cleanup_t_uint112(identity(cleanup_t_uint256(value)))
            }

            function update_byte_slice_14_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint112_to_t_uint112(value) -> converted {
                converted := cleanup_t_uint112(identity(cleanup_t_uint112(value)))
            }

            function prepare_store_t_uint112(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint112_to_t_uint112(slot, value_0) {
                let convertedValue_0 := convert_t_uint112_to_t_uint112(value_0)
                sstore(slot, update_byte_slice_14_shift_0(sload(slot), prepare_store_t_uint112(convertedValue_0)))
            }

            function shift_left_112(value) -> newValue {
                newValue :=

                shl(112, value)

            }

            function update_byte_slice_14_shift_14(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffff0000000000000000000000000000
                toInsert := shift_left_112(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_14t_uint112_to_t_uint112(slot, value_0) {
                let convertedValue_0 := convert_t_uint112_to_t_uint112(value_0)
                sstore(slot, update_byte_slice_14_shift_14(sload(slot), prepare_store_t_uint112(convertedValue_0)))
            }

            function abi_encode_t_uint112_to_t_uint112_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint112(value))
            }

            function abi_encode_tuple_t_uint112_t_uint112__to_t_uint112_t_uint112__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint112_to_t_uint112_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint112_to_t_uint112_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 304
            /// @src 0:2378:2517  "function test7(uint bb) public {..."
            function fun_test7_304(var_bb_275) {

                /// @src 0:2434:2436  "bb"
                let _27 := var_bb_275
                let expr_281 := _27
                /// @src 0:2426:2437  "uint112(bb)"
                let expr_282 := convert_t_uint256_to_t_uint112(expr_281)
                /// @src 0:2419:2437  "a112 = uint112(bb)"
                update_storage_value_offset_0t_uint112_to_t_uint112(0x03, expr_282)
                let expr_283 := expr_282
                /// @src 0:2462:2464  "bb"
                let _28 := var_bb_275
                let expr_288 := _28
                /// @src 0:2454:2465  "uint112(bb)"
                let expr_289 := convert_t_uint256_to_t_uint112(expr_288)
                /// @src 0:2447:2465  "b112 = uint112(bb)"
                update_storage_value_offset_14t_uint112_to_t_uint112(0x03, expr_289)
                let expr_290 := expr_289
                /// @src 0:2493:2495  "bb"
                let _29 := var_bb_275
                let expr_295 := _29
                /// @src 0:2485:2496  "uint112(bb)"
                let expr_296 := convert_t_uint256_to_t_uint112(expr_295)
                /// @src 0:2506:2508  "bb"
                let _30 := var_bb_275
                let expr_299 := _30
                /// @src 0:2498:2509  "uint112(bb)"
                let expr_300 := convert_t_uint256_to_t_uint112(expr_299)
                /// @src 0:2480:2510  "Sync(uint112(bb), uint112(bb))"
                let _31 := 0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1
                {
                    let _32 := allocate_unbounded()
                    let _33 := abi_encode_tuple_t_uint112_t_uint112__to_t_uint112_t_uint112__fromStack(_32 , expr_296, expr_300)
                    log1(_32, sub(_33, _32) , _31)
                }
            }
            /// @src 0:1398:2572  "contract DemoOp {..."

            /// @ast-id 310
            /// @src 0:2523:2570  "function transfer1(address add) public {..."
            function fun_transfer1_310(var_add_306) {

            }
            /// @src 0:1398:2572  "contract DemoOp {..."

        }

        data ".metadata" hex"a2646970667358221220807742c39865ebd6c192280d3636ba750204f19a7875c9502592fd072243f4cb64736f6c634300080f0033"
    }

}

