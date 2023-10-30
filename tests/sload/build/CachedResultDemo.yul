
/// @use-src 0:"Demo1.sol"
object "CachedResultDemo_164" {
    code {
        /// @src 0:67:1396  "contract CachedResultDemo {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_CachedResultDemo_164()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("CachedResultDemo_164_deployed"), datasize("CachedResultDemo_164_deployed"))

        return(_1, datasize("CachedResultDemo_164_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_rational_3_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_rational_3_by_1_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_rational_3_by_1_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function convert_array_t_array$_t_struct$_Position_$8_storage_$dyn_storage_to_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(value) -> converted  {
            converted := value

        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
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

        function allocate_memory_struct_t_struct$_Position_$8_storage_ptr() -> memPtr {
            memPtr := allocate_memory(96)
        }

        function cleanup_t_rational_1_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
        }

        function write_to_memory_t_uint256(memPtr, value) {
            mstore(memPtr, cleanup_t_uint256(value))
        }

        function cleanup_t_int128(value) -> cleaned {
            cleaned := signextend(15, value)
        }

        function convert_t_rational_1_by_1_to_t_int128(value) -> converted {
            converted := cleanup_t_int128(identity(cleanup_t_rational_1_by_1(value)))
        }

        function write_to_memory_t_int128(memPtr, value) {
            mstore(memPtr, cleanup_t_int128(value))
        }

        function array_dataslot_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function panic_error_0x32() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x32)
            revert(0, 0x24)
        }

        function array_length_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(value) -> length {

            length := sload(value)

        }

        function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

            offset := sub(31, mod(index, 0x20))
            let dataArea := array_dataslot_t_bytes_storage_ptr(array)
            slot := add(dataArea, div(index, 0x20))

        }

        function storage_array_index_access_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(array, index) -> slot, offset {
            let arrayLength := array_length_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(array)
            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

            let dataArea := array_dataslot_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(array)
            slot := add(dataArea, mul(index, 3))
            offset := 0

        }

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function read_from_memoryt_uint256(ptr) -> returnValue {

            let value := cleanup_t_uint256(mload(ptr))

            returnValue :=

            value

        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function read_from_memoryt_int128(ptr) -> returnValue {

            let value := cleanup_t_int128(mload(ptr))

            returnValue :=

            value

        }

        function update_byte_slice_16_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_int128_to_t_int128(value) -> converted {
            converted := cleanup_t_int128(identity(cleanup_t_int128(value)))
        }

        function prepare_store_t_int128(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_int128_to_t_int128(slot, value_0) {
            let convertedValue_0 := convert_t_int128_to_t_int128(value_0)
            sstore(slot, update_byte_slice_16_shift_0(sload(slot), prepare_store_t_int128(convertedValue_0)))
        }

        function copy_struct_to_storage_from_t_struct$_Position_$8_memory_ptr_to_t_struct$_Position_$8_storage(slot, value) {

            {

                let memberSlot := add(slot, 0)
                let memberSrcPtr := add(value, 0)

                let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                update_storage_value_offset_0t_uint256_to_t_uint256(memberSlot, memberValue_0)

            }

            {

                let memberSlot := add(slot, 1)
                let memberSrcPtr := add(value, 32)

                let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                update_storage_value_offset_0t_uint256_to_t_uint256(memberSlot, memberValue_0)

            }

            {

                let memberSlot := add(slot, 2)
                let memberSrcPtr := add(value, 64)

                let memberValue_0 := read_from_memoryt_int128(memberSrcPtr)

                update_storage_value_offset_0t_int128_to_t_int128(memberSlot, memberValue_0)

            }

        }

        function update_storage_value_t_struct$_Position_$8_memory_ptr_to_t_struct$_Position_$8_storage(slot, offset, value_0) {
            if offset { panic_error_0x00() }
            copy_struct_to_storage_from_t_struct$_Position_$8_memory_ptr_to_t_struct$_Position_$8_storage(slot, value_0)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function array_push_from_t_struct$_Position_$8_memory_ptr_to_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(array , value0) {

            let oldLen := sload(array)
            if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
            sstore(array, add(oldLen, 1))
            let slot, offset := storage_array_index_access_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(array, oldLen)
            update_storage_value_t_struct$_Position_$8_memory_ptr_to_t_struct$_Position_$8_storage(slot, offset , value0)

        }
        function cleanup_t_rational_48879_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
            mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
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

        /// @ast-id 71
        /// @src 0:587:687  "constructor() {..."
        function constructor_CachedResultDemo_164() {

            /// @src 0:587:687  "constructor() {..."

            /// @src 0:457:458  "3"
            let expr_33 := 0x03
            update_storage_value_offset_0t_rational_3_by_1_to_t_uint256(0x04, expr_33)

            /// @src 0:611:620  "positions"
            let _2_slot := 0x06
            let expr_51_slot := _2_slot
            /// @src 0:611:625  "positions.push"
            let expr_53_self_slot := convert_array_t_array$_t_struct$_Position_$8_storage_$dyn_storage_to_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(expr_51_slot)
            /// @src 0:635:636  "1"
            let expr_55 := 0x01
            /// @src 0:637:638  "1"
            let expr_56 := 0x01
            /// @src 0:639:640  "1"
            let expr_57 := 0x01
            /// @src 0:626:641  "Position(1,1,1)"
            let expr_58_mpos := allocate_memory_struct_t_struct$_Position_$8_storage_ptr()
            let _3 := convert_t_rational_1_by_1_to_t_uint256(expr_55)
            write_to_memory_t_uint256(add(expr_58_mpos, 0), _3)
            let _4 := convert_t_rational_1_by_1_to_t_uint256(expr_56)
            write_to_memory_t_uint256(add(expr_58_mpos, 32), _4)
            let _5 := convert_t_rational_1_by_1_to_t_int128(expr_57)
            write_to_memory_t_int128(add(expr_58_mpos, 64), _5)
            /// @src 0:611:642  "positions.push(Position(1,1,1))"
            array_push_from_t_struct$_Position_$8_memory_ptr_to_t_array$_t_struct$_Position_$8_storage_$dyn_storage_ptr(expr_53_self_slot, expr_58_mpos)
            /// @src 0:673:679  "0xBEEF"
            let expr_66 := 0xbeef
            /// @src 0:665:680  "address(0xBEEF)"
            let expr_67 := convert_t_rational_48879_by_1_to_t_address(expr_66)
            /// @src 0:652:659  "ownerOf"
            let _6 := 0x01
            let expr_61 := _6
            /// @src 0:660:661  "0"
            let expr_62 := 0x00
            /// @src 0:652:662  "ownerOf[0]"
            let _7 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(expr_61,expr_62)
            /// @src 0:652:680  "ownerOf[0] = address(0xBEEF)"
            update_storage_value_offset_0t_address_to_t_address(_7, expr_67)
            let expr_68 := expr_67

        }
        /// @src 0:67:1396  "contract CachedResultDemo {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "CachedResultDemo_164_deployed" {
        code {
            /// @src 0:67:1396  "contract CachedResultDemo {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x081812fc
                {
                    // getApproved(uint256)

                    external_fun_getApproved_28()
                }

                case 0x1e3dd18b
                {
                    // allPairs(uint256)

                    external_fun_allPairs_31()
                }

                case 0x312e5a61
                {
                    // transfer1(address)

                    external_fun_transfer1_163()
                }

                case 0x6352211e
                {
                    // ownerOf(uint256)

                    external_fun_ownerOf_24()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_20()
                }

                case 0x7618f7ee
                {
                    // burn0(uint256)

                    external_fun_burn0_132()
                }

                case 0x99fbab88
                {
                    // positions(uint256)

                    external_fun_positions_42()
                }

                case 0xc461905f
                {
                    // test6(uint256)

                    external_fun_test6_157()
                }

                case 0xe30081a0
                {
                    // setAddress(address)

                    external_fun_setAddress_83()
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

            /// @ast-id 28
            /// @src 0:362:408  "mapping(uint256 => address) public getApproved"
            function getter_fun_getApproved_28(key_0) -> ret {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

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

            function external_fun_getApproved_28() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_getApproved_28(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_address_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function array_dataslot_t_array$_t_address_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_address_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_address_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_address_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            /// @ast-id 31
            /// @src 0:414:439  "address[] public allPairs"
            function getter_fun_allPairs_31(key_0) -> ret {

                let slot := 3
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_address_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_address_$dyn_storage(slot, key_0)

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

            function external_fun_allPairs_31() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_allPairs_31(param_0)
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

            function external_fun_transfer1_163() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_transfer1_163(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 24
            /// @src 0:314:356  "mapping(uint256 => address) public ownerOf"
            function getter_fun_ownerOf_24(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

            function external_fun_ownerOf_24() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_ownerOf_24(param_0)
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

            /// @ast-id 20
            /// @src 0:264:308  "mapping(address => uint256) public balanceOf"
            function getter_fun_balanceOf_20(key_0) -> ret {

                let slot := 0
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_balanceOf_20() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_20(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burn0_132() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_burn0_132(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_length_t_array$_t_struct$_Position_$8_storage_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function array_dataslot_t_array$_t_struct$_Position_$8_storage_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_struct$_Position_$8_storage_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_Position_$8_storage_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_Position_$8_storage_$dyn_storage(array)
                slot := add(dataArea, mul(index, 3))
                offset := 0

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function cleanup_from_storage_t_int128(value) -> cleaned {
                cleaned := signextend(15, value)
            }

            function extract_from_storage_value_offset_0t_int128(slot_value) -> value {
                value := cleanup_from_storage_t_int128(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int128(slot) -> value {
                value := extract_from_storage_value_offset_0t_int128(sload(slot))

            }

            /// @ast-id 42
            /// @src 0:500:527  "Position[] public positions"
            function getter_fun_positions_42(key_0) -> ret_0, ret_1, ret_2 {

                let slot := 6
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_struct$_Position_$8_storage_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_struct$_Position_$8_storage_$dyn_storage(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_int128(add(slot, 2))

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

            function cleanup_t_int128(value) -> cleaned {
                cleaned := signextend(15, value)
            }

            function abi_encode_t_int128_to_t_int128_fromStack(value, pos) {
                mstore(pos, cleanup_t_int128(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_int128__to_t_uint256_t_uint256_t_int128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int128_to_t_int128_fromStack(value2,  add(headStart, 64))

            }

            function external_fun_positions_42() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0, ret_1, ret_2 :=  getter_fun_positions_42(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_int128__to_t_uint256_t_uint256_t_int128__fromStack(memPos , ret_0, ret_1, ret_2)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_test6_157() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_test6_157(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_setAddress_83() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_setAddress_83(param_0)
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

            /// @ast-id 83
            /// @src 0:693:764  "function setAddress(address _a) public {..."
            function fun_setAddress_83(var__a_73) {

                /// @src 0:755:757  "_a"
                let _1 := var__a_73
                let expr_79 := _1
                /// @src 0:742:749  "ownerOf"
                let _2 := 0x01
                let expr_76 := _2
                /// @src 0:750:751  "0"
                let expr_77 := 0x00
                /// @src 0:742:752  "ownerOf[0]"
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_rational_0_by_1(expr_76,expr_77)
                /// @src 0:742:757  "ownerOf[0] = _a"
                update_storage_value_offset_0t_address_to_t_address(_3, expr_79)
                let expr_80 := expr_79

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

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

            /// @ast-id 132
            /// @src 0:847:1210  "function burn0(uint256 id) public {..."
            function fun_burn0_132(var_id_85) {

                /// @src 0:907:914  "ownerOf"
                let _4 := 0x01
                let expr_90 := _4
                /// @src 0:915:917  "id"
                let _5 := var_id_85
                let expr_91 := _5
                /// @src 0:907:918  "ownerOf[id]"
                let _6 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_90,expr_91)
                let _7 := read_from_storage_split_offset_0_t_address(_6)
                let expr_92 := _7
                /// @src 0:891:918  "address owner = ownerOf[id]"
                let var_owner_89 := expr_92
                /// @src 0:937:944  "ownerOf"
                let _8 := 0x01
                let expr_95 := _8
                /// @src 0:945:947  "id"
                let _9 := var_id_85
                let expr_96 := _9
                /// @src 0:937:948  "ownerOf[id]"
                let _10 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_95,expr_96)
                let _11 := read_from_storage_split_offset_0_t_address(_10)
                let expr_97 := _11
                /// @src 0:960:961  "0"
                let expr_100 := 0x00
                /// @src 0:952:962  "address(0)"
                let expr_101 := convert_t_rational_0_by_1_to_t_address(expr_100)
                /// @src 0:937:962  "ownerOf[id] != address(0)"
                let expr_102 := iszero(eq(cleanup_t_address(expr_97), cleanup_t_address(expr_101)))
                /// @src 0:929:977  "require(ownerOf[id] != address(0), \"NOT_MINTED\")"
                require_helper_t_stringliteral_e904b298bc24890ae0c043938d840f08b90773c1635904efe1336d6f851f98ca(expr_102)
                /// @src 0:1067:1076  "balanceOf"
                let _12 := 0x00
                let expr_106 := _12
                /// @src 0:1077:1082  "owner"
                let _13 := var_owner_89
                let expr_107 := _13
                /// @src 0:1067:1083  "balanceOf[owner]"
                let _14 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_106,expr_107)
                /// @src 0:1067:1085  "balanceOf[owner]--"
                let _16 := read_from_storage_split_offset_0_t_uint256(_14)
                let _15 := decrement_wrapping_t_uint256(_16)
                update_storage_value_offset_0t_uint256_to_t_uint256(_14, _15)
                let expr_109 := _16
                /// @src 0:1113:1120  "ownerOf"
                let _17 := 0x01
                let expr_112 := _17
                /// @src 0:1121:1123  "id"
                let _18 := var_id_85
                let expr_113 := _18
                /// @src 0:1113:1124  "ownerOf[id]"
                let _19 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_112,expr_113)
                /// @src 0:1106:1124  "delete ownerOf[id]"
                storage_set_to_zero_t_address(_19, 0)
                /// @src 0:1141:1152  "getApproved"
                let _20 := 0x02
                let expr_117 := _20
                /// @src 0:1153:1155  "id"
                let _21 := var_id_85
                let expr_118 := _21
                /// @src 0:1141:1156  "getApproved[id]"
                let _22 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_117,expr_118)
                /// @src 0:1134:1156  "delete getApproved[id]"
                storage_set_to_zero_t_address(_22, 0)
                /// @src 0:1181:1186  "owner"
                let _23 := var_owner_89
                let expr_123 := _23
                /// @src 0:1196:1197  "0"
                let expr_126 := 0x00
                /// @src 0:1188:1198  "address(0)"
                let expr_127 := convert_t_rational_0_by_1_to_t_address(expr_126)
                /// @src 0:1200:1202  "id"
                let _24 := var_id_85
                let expr_128 := _24
                /// @src 0:1172:1203  "Transfer(owner, address(0), id)"
                let _25 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _26 := convert_t_address_to_t_address(expr_123)
                let _27 := convert_t_address_to_t_address(expr_127)
                {
                    let _28 := allocate_unbounded()
                    let _29 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_28 , expr_128)
                    log3(_28, sub(_29, _28) , _25, _26, _27)
                }
            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

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

            function cleanup_from_storage_t_uint112(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0t_uint112(slot_value) -> value {
                value := cleanup_from_storage_t_uint112(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint112(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint112(sload(slot))

            }

            function shift_right_112_unsigned(value) -> newValue {
                newValue :=

                shr(112, value)

            }

            function extract_from_storage_value_offset_14t_uint112(slot_value) -> value {
                value := cleanup_from_storage_t_uint112(shift_right_112_unsigned(slot_value))
            }

            function read_from_storage_split_offset_14_t_uint112(slot) -> value {
                value := extract_from_storage_value_offset_14t_uint112(sload(slot))

            }

            function abi_encode_t_uint112_to_t_uint112_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint112(value))
            }

            function abi_encode_tuple_t_uint112_t_uint112__to_t_uint112_t_uint112__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint112_to_t_uint112_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint112_to_t_uint112_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 157
            /// @src 0:1216:1341  "function test6(uint bb) public {..."
            function fun_test6_157(var_bb_134) {

                /// @src 0:1272:1274  "bb"
                let _30 := var_bb_134
                let expr_140 := _30
                /// @src 0:1264:1275  "uint112(bb)"
                let expr_141 := convert_t_uint256_to_t_uint112(expr_140)
                /// @src 0:1257:1275  "a112 = uint112(bb)"
                update_storage_value_offset_0t_uint112_to_t_uint112(0x05, expr_141)
                let expr_142 := expr_141
                /// @src 0:1300:1302  "bb"
                let _31 := var_bb_134
                let expr_147 := _31
                /// @src 0:1292:1303  "uint112(bb)"
                let expr_148 := convert_t_uint256_to_t_uint112(expr_147)
                /// @src 0:1285:1303  "b112 = uint112(bb)"
                update_storage_value_offset_14t_uint112_to_t_uint112(0x05, expr_148)
                let expr_149 := expr_148
                /// @src 0:1323:1327  "a112"
                let _32 := read_from_storage_split_offset_0_t_uint112(0x05)
                let expr_152 := _32
                /// @src 0:1329:1333  "b112"
                let _33 := read_from_storage_split_offset_14_t_uint112(0x05)
                let expr_153 := _33
                /// @src 0:1318:1334  "Sync(a112, b112)"
                let _34 := 0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1
                {
                    let _35 := allocate_unbounded()
                    let _36 := abi_encode_tuple_t_uint112_t_uint112__to_t_uint112_t_uint112__fromStack(_35 , expr_152, expr_153)
                    log1(_35, sub(_36, _35) , _34)
                }
            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

            /// @ast-id 163
            /// @src 0:1347:1394  "function transfer1(address add) public {..."
            function fun_transfer1_163(var_add_159) {

            }
            /// @src 0:67:1396  "contract CachedResultDemo {..."

        }

        data ".metadata" hex"a26469706673582212202f30af5e20317c79f01403120a06a4816235452d0c27a05c94af38e0aa6b4d9264736f6c634300080f0033"
    }

}

