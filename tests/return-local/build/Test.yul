
/// @use-src 0:"Demo1.sol"
object "Test_236" {
    code {
        /// @src 0:649:1791  "contract Test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Test_236()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Test_236_deployed"), datasize("Test_236_deployed"))

        return(_1, datasize("Test_236_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:649:1791  "contract Test {..."
        function constructor_Test_236() {

            /// @src 0:649:1791  "contract Test {..."

        }
        /// @src 0:649:1791  "contract Test {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "Test_236_deployed" {
        code {
            /// @src 0:649:1791  "contract Test {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x6b59084d
                {
                    // test1()

                    external_fun_test1_235()
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

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_test1_235() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_test1_235()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_ReturnDemo_$46_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

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

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function abi_encode_t_rational_4_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_4_by_1_to_t_uint256(value))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function abi_encode_t_rational_2_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_2_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple_t_rational_4_by_1_t_rational_2_by_1__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_rational_4_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_rational_2_by_1_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545(memPtr) {

                mstore(add(memPtr, 0), "gasUsage1")

            }

            function abi_encode_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 9)
                store_literal_in_memory_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545(pos)
                end := add(pos, 32)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_to_t_string_memory_ptr_fromStack( tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 32))

            }

            function convert_t_contract$_DemoOp_$73_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26(memPtr) {

                mstore(add(memPtr, 0), "gasUsage2")

            }

            function abi_encode_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 9)
                store_literal_in_memory_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_to_t_string_memory_ptr_fromStack( tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 32))

            }

            function store_literal_in_memory_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f(memPtr) {

                mstore(add(memPtr, 0), "gasUsage3")

            }

            function abi_encode_t_stringliteral_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 9)
                store_literal_in_memory_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f_to_t_string_memory_ptr_fromStack( tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 32))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
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

            function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_memory_to_memory(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_string_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 235
            /// @src 0:718:1789  "function test1() public {..."
            function fun_test1_235() {

                /// @src 0:770:786  "new ReturnDemo()"
                let _1 := allocate_unbounded()
                let _2 := add(_1, datasize("ReturnDemo_46"))
                if or(gt(_2, 0xffffffffffffffff), lt(_2, _1)) { panic_error_0x41() }
                datacopy(_1, dataoffset("ReturnDemo_46"), datasize("ReturnDemo_46"))
                _2 := abi_encode_tuple__to__fromStack(_2)

                let expr_88_address := create(0, _1, sub(_2, _1))

                if iszero(expr_88_address) { revert_forward_1() }

                /// @src 0:752:786  "ReturnDemo demo = new ReturnDemo()"
                let var_demo_84_address := expr_88_address
                /// @src 0:808:820  "new DemoOp()"
                let _3 := allocate_unbounded()
                let _4 := add(_3, datasize("DemoOp_73"))
                if or(gt(_4, 0xffffffffffffffff), lt(_4, _3)) { panic_error_0x41() }
                datacopy(_3, dataoffset("DemoOp_73"), datasize("DemoOp_73"))
                _4 := abi_encode_tuple__to__fromStack(_4)

                let expr_96_address := create(0, _3, sub(_4, _3))

                if iszero(expr_96_address) { revert_forward_1() }

                /// @src 0:796:820  "DemoOp op = new DemoOp()"
                let var_op_92_address := expr_96_address
                /// @src 0:850:859  "gasleft()"
                let expr_101 := gas()
                /// @src 0:831:859  "uint256 startGas = gasleft()"
                let var_startGas_99 := expr_101
                /// @src 0:869:873  "demo"
                let _5_address := var_demo_84_address
                let expr_103_address := _5_address
                /// @src 0:869:878  "demo.add1"
                let expr_105_address := convert_t_contract$_ReturnDemo_$46_to_t_address(expr_103_address)
                let expr_105_functionSelector := 0x76b81449
                /// @src 0:879:880  "4"
                let expr_106 := 0x04
                /// @src 0:881:882  "2"
                let expr_107 := 0x02
                /// @src 0:869:883  "demo.add1(4,2)"

                // storage for arguments and returned data
                let _6 := allocate_unbounded()
                mstore(_6, shift_left_224(expr_105_functionSelector))
                let _7 := abi_encode_tuple_t_rational_4_by_1_t_rational_2_by_1__to_t_uint256_t_uint256__fromStack(add(_6, 4) , expr_106, expr_107)

                let _8 := staticcall(gas(), expr_105_address,  _6, sub(_7, _6), _6, 32)

                if iszero(_8) { revert_forward_1() }

                let expr_108
                if _8 {

                    let _9 := 32

                    if gt(_9, returndatasize()) {
                        _9 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_6, _9)

                    // decode return parameters from external try-call into retVars
                    expr_108 :=  abi_decode_tuple_t_uint256_fromMemory(_6, add(_6, _9))
                }
                /// @src 0:910:919  "gasleft()"
                let expr_113 := gas()
                /// @src 0:893:919  "uint256 endGas = gasleft()"
                let var_endGas_111 := expr_113
                /// @src 0:949:957  "startGas"
                let _10 := var_startGas_99
                let expr_117 := _10
                /// @src 0:960:966  "endGas"
                let _11 := var_endGas_111
                let expr_118 := _11
                /// @src 0:949:966  "startGas - endGas"
                let expr_119 := checked_sub_t_uint256(expr_117, expr_118)

                /// @src 0:929:966  "uint256 gasUsage1 = startGas - endGas"
                let var_gasUsage1_116 := expr_119
                /// @src 0:1009:1018  "gasUsage1"
                let _12 := var_gasUsage1_116
                let expr_123 := _12
                /// @src 0:981:1019  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _13 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _14 := allocate_unbounded()
                    let _15 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_14 , expr_123)
                    log1(_14, sub(_15, _14) , _13)
                }/// @src 0:1053:1062  "gasleft()"
                let expr_128 := gas()
                /// @src 0:1042:1062  "startGas = gasleft()"
                var_startGas_99 := expr_128
                let expr_129 := expr_128
                /// @src 0:1072:1074  "op"
                let _16_address := var_op_92_address
                let expr_131_address := _16_address
                /// @src 0:1072:1079  "op.add2"
                let expr_133_address := convert_t_contract$_DemoOp_$73_to_t_address(expr_131_address)
                let expr_133_functionSelector := 0x29fcda33
                /// @src 0:1080:1081  "4"
                let expr_134 := 0x04
                /// @src 0:1082:1083  "2"
                let expr_135 := 0x02
                /// @src 0:1072:1084  "op.add2(4,2)"

                // storage for arguments and returned data
                let _17 := allocate_unbounded()
                mstore(_17, shift_left_224(expr_133_functionSelector))
                let _18 := abi_encode_tuple_t_rational_4_by_1_t_rational_2_by_1__to_t_uint256_t_uint256__fromStack(add(_17, 4) , expr_134, expr_135)

                let _19 := staticcall(gas(), expr_133_address,  _17, sub(_18, _17), _17, 32)

                if iszero(_19) { revert_forward_1() }

                let expr_136
                if _19 {

                    let _20 := 32

                    if gt(_20, returndatasize()) {
                        _20 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_17, _20)

                    // decode return parameters from external try-call into retVars
                    expr_136 :=  abi_decode_tuple_t_uint256_fromMemory(_17, add(_17, _20))
                }
                /// @src 0:1103:1112  "gasleft()"
                let expr_140 := gas()
                /// @src 0:1094:1112  "endGas = gasleft()"
                var_endGas_111 := expr_140
                let expr_141 := expr_140
                /// @src 0:1142:1150  "startGas"
                let _21 := var_startGas_99
                let expr_145 := _21
                /// @src 0:1153:1159  "endGas"
                let _22 := var_endGas_111
                let expr_146 := _22
                /// @src 0:1142:1159  "startGas - endGas"
                let expr_147 := checked_sub_t_uint256(expr_145, expr_146)

                /// @src 0:1122:1159  "uint256 gasUsage2 = startGas - endGas"
                let var_gasUsage2_144 := expr_147
                /// @src 0:1202:1211  "gasUsage2"
                let _23 := var_gasUsage2_144
                let expr_151 := _23
                /// @src 0:1174:1212  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _24 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _25 := allocate_unbounded()
                    let _26 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_25 , expr_151)
                    log1(_25, sub(_26, _25) , _24)
                }/// @src 0:1246:1255  "gasleft()"
                let expr_156 := gas()
                /// @src 0:1235:1255  "startGas = gasleft()"
                var_startGas_99 := expr_156
                let expr_157 := expr_156
                /// @src 0:1265:1269  "demo"
                let _27_address := var_demo_84_address
                let expr_159_address := _27_address
                /// @src 0:1265:1274  "demo.add3"
                let expr_161_address := convert_t_contract$_ReturnDemo_$46_to_t_address(expr_159_address)
                let expr_161_functionSelector := 12792143
                /// @src 0:1275:1276  "4"
                let expr_162 := 0x04
                /// @src 0:1277:1278  "2"
                let expr_163 := 0x02
                /// @src 0:1265:1279  "demo.add3(4,2)"

                // storage for arguments and returned data
                let _28 := allocate_unbounded()
                mstore(_28, shift_left_224(expr_161_functionSelector))
                let _29 := abi_encode_tuple_t_rational_4_by_1_t_rational_2_by_1__to_t_uint256_t_uint256__fromStack(add(_28, 4) , expr_162, expr_163)

                let _30 := staticcall(gas(), expr_161_address,  _28, sub(_29, _28), _28, 32)

                if iszero(_30) { revert_forward_1() }

                let expr_164
                if _30 {

                    let _31 := 32

                    if gt(_31, returndatasize()) {
                        _31 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_28, _31)

                    // decode return parameters from external try-call into retVars
                    expr_164 :=  abi_decode_tuple_t_uint256_fromMemory(_28, add(_28, _31))
                }
                /// @src 0:1298:1307  "gasleft()"
                let expr_168 := gas()
                /// @src 0:1289:1307  "endGas = gasleft()"
                var_endGas_111 := expr_168
                let expr_169 := expr_168
                /// @src 0:1329:1337  "startGas"
                let _32 := var_startGas_99
                let expr_172 := _32
                /// @src 0:1340:1346  "endGas"
                let _33 := var_endGas_111
                let expr_173 := _33
                /// @src 0:1329:1346  "startGas - endGas"
                let expr_174 := checked_sub_t_uint256(expr_172, expr_173)

                /// @src 0:1317:1346  "gasUsage1 = startGas - endGas"
                var_gasUsage1_116 := expr_174
                let expr_175 := expr_174
                /// @src 0:1389:1398  "gasUsage1"
                let _34 := var_gasUsage1_116
                let expr_179 := _34
                /// @src 0:1361:1399  "log_named_uint(\"gasUsage3\", gasUsage1)"
                let _35 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _36 := allocate_unbounded()
                    let _37 := abi_encode_tuple_t_stringliteral_008827b1b1fd112bda1e18fb77009f47fac0f5446aaf68a39e3dbaa973335b3f_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_36 , expr_179)
                    log1(_36, sub(_37, _36) , _35)
                }/// @src 0:1433:1442  "gasleft()"
                let expr_184 := gas()
                /// @src 0:1422:1442  "startGas = gasleft()"
                var_startGas_99 := expr_184
                let expr_185 := expr_184
                /// @src 0:1452:1456  "demo"
                let _38_address := var_demo_84_address
                let expr_187_address := _38_address
                /// @src 0:1452:1462  "demo.test1"
                let expr_189_address := convert_t_contract$_ReturnDemo_$46_to_t_address(expr_187_address)
                let expr_189_functionSelector := 0x6b59084d
                /// @src 0:1452:1464  "demo.test1()"

                // storage for arguments and returned data
                let _39 := allocate_unbounded()
                mstore(_39, shift_left_224(expr_189_functionSelector))
                let _40 := abi_encode_tuple__to__fromStack(add(_39, 4) )

                let _41 := staticcall(gas(), expr_189_address,  _39, sub(_40, _39), _39, 0)

                if iszero(_41) { revert_forward_1() }

                let expr_190_mpos
                if _41 {

                    let _42 := returndatasize()
                    returndatacopy(_39, 0, _42)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_39, _42)

                    // decode return parameters from external try-call into retVars
                    expr_190_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_39, add(_39, _42))
                }
                /// @src 0:1483:1492  "gasleft()"
                let expr_194 := gas()
                /// @src 0:1474:1492  "endGas = gasleft()"
                var_endGas_111 := expr_194
                let expr_195 := expr_194
                /// @src 0:1514:1522  "startGas"
                let _43 := var_startGas_99
                let expr_198 := _43
                /// @src 0:1525:1531  "endGas"
                let _44 := var_endGas_111
                let expr_199 := _44
                /// @src 0:1514:1531  "startGas - endGas"
                let expr_200 := checked_sub_t_uint256(expr_198, expr_199)

                /// @src 0:1502:1531  "gasUsage1 = startGas - endGas"
                var_gasUsage1_116 := expr_200
                let expr_201 := expr_200
                /// @src 0:1574:1583  "gasUsage1"
                let _45 := var_gasUsage1_116
                let expr_205 := _45
                /// @src 0:1546:1584  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _46 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _47 := allocate_unbounded()
                    let _48 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_47 , expr_205)
                    log1(_47, sub(_48, _47) , _46)
                }/// @src 0:1619:1628  "gasleft()"
                let expr_210 := gas()
                /// @src 0:1608:1628  "startGas = gasleft()"
                var_startGas_99 := expr_210
                let expr_211 := expr_210
                /// @src 0:1638:1640  "op"
                let _49_address := var_op_92_address
                let expr_213_address := _49_address
                /// @src 0:1638:1646  "op.test2"
                let expr_215_address := convert_t_contract$_DemoOp_$73_to_t_address(expr_213_address)
                let expr_215_functionSelector := 0x66e41cb7
                /// @src 0:1638:1648  "op.test2()"

                // storage for arguments and returned data
                let _50 := allocate_unbounded()
                mstore(_50, shift_left_224(expr_215_functionSelector))
                let _51 := abi_encode_tuple__to__fromStack(add(_50, 4) )

                let _52 := staticcall(gas(), expr_215_address,  _50, sub(_51, _50), _50, 0)

                if iszero(_52) { revert_forward_1() }

                let expr_216_mpos
                if _52 {

                    let _53 := returndatasize()
                    returndatacopy(_50, 0, _53)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_50, _53)

                    // decode return parameters from external try-call into retVars
                    expr_216_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_50, add(_50, _53))
                }
                /// @src 0:1667:1676  "gasleft()"
                let expr_220 := gas()
                /// @src 0:1658:1676  "endGas = gasleft()"
                var_endGas_111 := expr_220
                let expr_221 := expr_220
                /// @src 0:1698:1706  "startGas"
                let _54 := var_startGas_99
                let expr_224 := _54
                /// @src 0:1709:1715  "endGas"
                let _55 := var_endGas_111
                let expr_225 := _55
                /// @src 0:1698:1715  "startGas - endGas"
                let expr_226 := checked_sub_t_uint256(expr_224, expr_225)

                /// @src 0:1686:1715  "gasUsage2 = startGas - endGas"
                var_gasUsage2_144 := expr_226
                let expr_227 := expr_226
                /// @src 0:1758:1767  "gasUsage2"
                let _56 := var_gasUsage2_144
                let expr_231 := _56
                /// @src 0:1730:1768  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _57 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _58 := allocate_unbounded()
                    let _59 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_58 , expr_231)
                    log1(_58, sub(_59, _58) , _57)
                }
            }
            /// @src 0:649:1791  "contract Test {..."

        }

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

        data ".metadata" hex"a2646970667358221220d78143f52b6f81448280ca2075923579b801a94787c9915bc60f98d526db6dda64736f6c634300080f0033"
    }

}

