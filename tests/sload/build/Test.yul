
/// @use-src 0:"Demo1.sol"
object "Test_614" {
    code {
        /// @src 0:2574:4815  "contract Test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Test_614()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Test_614_deployed"), datasize("Test_614_deployed"))

        return(_1, datasize("Test_614_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:2574:4815  "contract Test {..."
        function constructor_Test_614() {

            /// @src 0:2574:4815  "contract Test {..."

        }
        /// @src 0:2574:4815  "contract Test {..."

    }
    /// @use-src 0:"Demo1.sol"
    object "Test_614_deployed" {
        code {
            /// @src 0:2574:4815  "contract Test {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x24887744
                {
                    // computeCachedSavedGas()

                    external_fun_computeCachedSavedGas_485()
                }

                case 0x66e41cb7
                {
                    // test2()

                    external_fun_test2_613()
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

            function external_fun_computeCachedSavedGas_485() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_computeCachedSavedGas_485()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_test2_613() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_test2_613()
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

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_CachedResultDemo_$164_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function cleanup_t_rational_48879_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_48879_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_48879_by_1(value)))
            }

            function convert_t_rational_48879_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_48879_by_1_to_t_uint160(value)
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

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

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

            function abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_to_t_string_memory_ptr_fromStack( tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 32))

            }

            function convert_t_contract$_DemoOp_$311_to_t_address(value) -> converted {
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

            /// @ast-id 485
            /// @src 0:2643:3864  "function computeCachedSavedGas() public { // optimize=fasle  optimzie=true..."
            function fun_computeCachedSavedGas_485() {

                /// @src 0:2762:2784  "new CachedResultDemo()"
                let _1 := allocate_unbounded()
                let _2 := add(_1, datasize("CachedResultDemo_164"))
                if or(gt(_2, 0xffffffffffffffff), lt(_2, _1)) { panic_error_0x41() }
                datacopy(_1, dataoffset("CachedResultDemo_164"), datasize("CachedResultDemo_164"))
                _2 := abi_encode_tuple__to__fromStack(_2)

                let expr_326_address := create(0, _1, sub(_2, _1))

                if iszero(expr_326_address) { revert_forward_1() }

                /// @src 0:2726:2784  "CachedResultDemo cachedResultDemo = new CachedResultDemo()"
                let var_cachedResultDemo_322_address := expr_326_address
                /// @src 0:2806:2818  "new DemoOp()"
                let _3 := allocate_unbounded()
                let _4 := add(_3, datasize("DemoOp_311"))
                if or(gt(_4, 0xffffffffffffffff), lt(_4, _3)) { panic_error_0x41() }
                datacopy(_3, dataoffset("DemoOp_311"), datasize("DemoOp_311"))
                _4 := abi_encode_tuple__to__fromStack(_4)

                let expr_334_address := create(0, _3, sub(_4, _3))

                if iszero(expr_334_address) { revert_forward_1() }

                /// @src 0:2794:2818  "DemoOp op = new DemoOp()"
                let var_op_330_address := expr_334_address
                /// @src 0:2841:2842  "0"
                let expr_338 := 0x00
                /// @src 0:2828:2842  "uint256 id = 0"
                let var_id_337 := convert_t_rational_0_by_1_to_t_uint256(expr_338)
                /// @src 0:2852:2868  "cachedResultDemo"
                let _5_address := var_cachedResultDemo_322_address
                let expr_340_address := _5_address
                /// @src 0:2852:2879  "cachedResultDemo.setAddress"
                let expr_342_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_340_address)
                let expr_342_functionSelector := 0xe30081a0
                /// @src 0:2888:2894  "0xBEEF"
                let expr_345 := 0xbeef
                /// @src 0:2880:2895  "address(0xBEEF)"
                let expr_346 := convert_t_rational_48879_by_1_to_t_address(expr_345)
                /// @src 0:2852:2896  "cachedResultDemo.setAddress(address(0xBEEF))"

                if iszero(extcodesize(expr_342_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _6 := allocate_unbounded()
                mstore(_6, shift_left_224(expr_342_functionSelector))
                let _7 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_6, 4) , expr_346)

                let _8 := call(gas(), expr_342_address,  0,  _6, sub(_7, _6), _6, 0)

                if iszero(_8) { revert_forward_1() }

                if _8 {

                    let _9 := 0

                    if gt(_9, returndatasize()) {
                        _9 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_6, _9)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_6, add(_6, _9))
                }
                /// @src 0:2927:2936  "gasleft()"
                let expr_352 := gas()
                /// @src 0:2908:2936  "uint256 startGas = gasleft()"
                let var_startGas_350 := expr_352
                /// @src 0:2946:2962  "cachedResultDemo"
                let _10_address := var_cachedResultDemo_322_address
                let expr_354_address := _10_address
                /// @src 0:2946:2968  "cachedResultDemo.burn0"
                let expr_356_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_354_address)
                let expr_356_functionSelector := 0x7618f7ee
                /// @src 0:2969:2971  "id"
                let _11 := var_id_337
                let expr_357 := _11
                /// @src 0:2946:2972  "cachedResultDemo.burn0(id)"

                if iszero(extcodesize(expr_356_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _12 := allocate_unbounded()
                mstore(_12, shift_left_224(expr_356_functionSelector))
                let _13 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_12, 4) , expr_357)

                let _14 := call(gas(), expr_356_address,  0,  _12, sub(_13, _12), _12, 0)

                if iszero(_14) { revert_forward_1() }

                if _14 {

                    let _15 := 0

                    if gt(_15, returndatasize()) {
                        _15 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_12, _15)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_12, add(_12, _15))
                }
                /// @src 0:2999:3008  "gasleft()"
                let expr_363 := gas()
                /// @src 0:2982:3008  "uint256 endGas = gasleft()"
                let var_endGas_361 := expr_363
                /// @src 0:3038:3046  "startGas"
                let _16 := var_startGas_350
                let expr_367 := _16
                /// @src 0:3049:3055  "endGas"
                let _17 := var_endGas_361
                let expr_368 := _17
                /// @src 0:3038:3055  "startGas - endGas"
                let expr_369 := checked_sub_t_uint256(expr_367, expr_368)

                /// @src 0:3018:3055  "uint256 gasUsage1 = startGas - endGas"
                let var_gasUsage1_366 := expr_369
                /// @src 0:3098:3107  "gasUsage1"
                let _18 := var_gasUsage1_366
                let expr_373 := _18
                /// @src 0:3070:3108  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _19 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _20 := allocate_unbounded()
                    let _21 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_20 , expr_373)
                    log1(_20, sub(_21, _20) , _19)
                }/// @src 0:3134:3150  "cachedResultDemo"
                let _22_address := var_cachedResultDemo_322_address
                let expr_376_address := _22_address
                /// @src 0:3134:3161  "cachedResultDemo.setAddress"
                let expr_378_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_376_address)
                let expr_378_functionSelector := 0xe30081a0
                /// @src 0:3170:3176  "0xBEEF"
                let expr_381 := 0xbeef
                /// @src 0:3162:3177  "address(0xBEEF)"
                let expr_382 := convert_t_rational_48879_by_1_to_t_address(expr_381)
                /// @src 0:3134:3178  "cachedResultDemo.setAddress(address(0xBEEF))"

                if iszero(extcodesize(expr_378_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _23 := allocate_unbounded()
                mstore(_23, shift_left_224(expr_378_functionSelector))
                let _24 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_23, 4) , expr_382)

                let _25 := call(gas(), expr_378_address,  0,  _23, sub(_24, _23), _23, 0)

                if iszero(_25) { revert_forward_1() }

                if _25 {

                    let _26 := 0

                    if gt(_26, returndatasize()) {
                        _26 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_23, _26)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_23, add(_23, _26))
                }
                /// @src 0:3199:3208  "gasleft()"
                let expr_387 := gas()
                /// @src 0:3188:3208  "startGas = gasleft()"
                var_startGas_350 := expr_387
                let expr_388 := expr_387
                /// @src 0:3218:3234  "cachedResultDemo"
                let _27_address := var_cachedResultDemo_322_address
                let expr_390_address := _27_address
                /// @src 0:3218:3240  "cachedResultDemo.burn0"
                let expr_392_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_390_address)
                let expr_392_functionSelector := 0x7618f7ee
                /// @src 0:3241:3243  "id"
                let _28 := var_id_337
                let expr_393 := _28
                /// @src 0:3218:3244  "cachedResultDemo.burn0(id)"

                if iszero(extcodesize(expr_392_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _29 := allocate_unbounded()
                mstore(_29, shift_left_224(expr_392_functionSelector))
                let _30 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_29, 4) , expr_393)

                let _31 := call(gas(), expr_392_address,  0,  _29, sub(_30, _29), _29, 0)

                if iszero(_31) { revert_forward_1() }

                if _31 {

                    let _32 := 0

                    if gt(_32, returndatasize()) {
                        _32 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_29, _32)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_29, add(_29, _32))
                }
                /// @src 0:3263:3272  "gasleft()"
                let expr_398 := gas()
                /// @src 0:3254:3272  "endGas = gasleft()"
                var_endGas_361 := expr_398
                let expr_399 := expr_398
                /// @src 0:3294:3302  "startGas"
                let _33 := var_startGas_350
                let expr_402 := _33
                /// @src 0:3305:3311  "endGas"
                let _34 := var_endGas_361
                let expr_403 := _34
                /// @src 0:3294:3311  "startGas - endGas"
                let expr_404 := checked_sub_t_uint256(expr_402, expr_403)

                /// @src 0:3282:3311  "gasUsage1 = startGas - endGas"
                var_gasUsage1_366 := expr_404
                let expr_405 := expr_404
                /// @src 0:3354:3363  "gasUsage1"
                let _35 := var_gasUsage1_366
                let expr_409 := _35
                /// @src 0:3326:3364  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _36 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _37 := allocate_unbounded()
                    let _38 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_37 , expr_409)
                    log1(_37, sub(_38, _37) , _36)
                }/// @src 0:3388:3390  "op"
                let _39_address := var_op_330_address
                let expr_412_address := _39_address
                /// @src 0:3388:3401  "op.setAddress"
                let expr_414_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_412_address)
                let expr_414_functionSelector := 0xe30081a0
                /// @src 0:3410:3416  "0xBEEF"
                let expr_417 := 0xbeef
                /// @src 0:3402:3417  "address(0xBEEF)"
                let expr_418 := convert_t_rational_48879_by_1_to_t_address(expr_417)
                /// @src 0:3388:3418  "op.setAddress(address(0xBEEF))"

                if iszero(extcodesize(expr_414_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _40 := allocate_unbounded()
                mstore(_40, shift_left_224(expr_414_functionSelector))
                let _41 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_40, 4) , expr_418)

                let _42 := call(gas(), expr_414_address,  0,  _40, sub(_41, _40), _40, 0)

                if iszero(_42) { revert_forward_1() }

                if _42 {

                    let _43 := 0

                    if gt(_43, returndatasize()) {
                        _43 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_40, _43)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_40, add(_40, _43))
                }
                /// @src 0:3439:3448  "gasleft()"
                let expr_423 := gas()
                /// @src 0:3428:3448  "startGas = gasleft()"
                var_startGas_350 := expr_423
                let expr_424 := expr_423
                /// @src 0:3458:3460  "op"
                let _44_address := var_op_330_address
                let expr_426_address := _44_address
                /// @src 0:3458:3475  "op.burnUseCached1"
                let expr_428_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_426_address)
                let expr_428_functionSelector := 0x4c31b4f2
                /// @src 0:3476:3478  "id"
                let _45 := var_id_337
                let expr_429 := _45
                /// @src 0:3458:3479  "op.burnUseCached1(id)"

                if iszero(extcodesize(expr_428_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _46 := allocate_unbounded()
                mstore(_46, shift_left_224(expr_428_functionSelector))
                let _47 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_46, 4) , expr_429)

                let _48 := call(gas(), expr_428_address,  0,  _46, sub(_47, _46), _46, 0)

                if iszero(_48) { revert_forward_1() }

                if _48 {

                    let _49 := 0

                    if gt(_49, returndatasize()) {
                        _49 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_46, _49)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_46, add(_46, _49))
                }
                /// @src 0:3498:3507  "gasleft()"
                let expr_434 := gas()
                /// @src 0:3489:3507  "endGas = gasleft()"
                var_endGas_361 := expr_434
                let expr_435 := expr_434
                /// @src 0:3537:3545  "startGas"
                let _50 := var_startGas_350
                let expr_439 := _50
                /// @src 0:3548:3554  "endGas"
                let _51 := var_endGas_361
                let expr_440 := _51
                /// @src 0:3537:3554  "startGas - endGas"
                let expr_441 := checked_sub_t_uint256(expr_439, expr_440)

                /// @src 0:3517:3554  "uint256 gasUsage2 = startGas - endGas"
                let var_gasUsage2_438 := expr_441
                /// @src 0:3597:3606  "gasUsage2"
                let _52 := var_gasUsage2_438
                let expr_445 := _52
                /// @src 0:3569:3607  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _53 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _54 := allocate_unbounded()
                    let _55 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_54 , expr_445)
                    log1(_54, sub(_55, _54) , _53)
                }/// @src 0:3633:3635  "op"
                let _56_address := var_op_330_address
                let expr_448_address := _56_address
                /// @src 0:3633:3646  "op.setAddress"
                let expr_450_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_448_address)
                let expr_450_functionSelector := 0xe30081a0
                /// @src 0:3655:3661  "0xBEEF"
                let expr_453 := 0xbeef
                /// @src 0:3647:3662  "address(0xBEEF)"
                let expr_454 := convert_t_rational_48879_by_1_to_t_address(expr_453)
                /// @src 0:3633:3663  "op.setAddress(address(0xBEEF))"

                if iszero(extcodesize(expr_450_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _57 := allocate_unbounded()
                mstore(_57, shift_left_224(expr_450_functionSelector))
                let _58 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_57, 4) , expr_454)

                let _59 := call(gas(), expr_450_address,  0,  _57, sub(_58, _57), _57, 0)

                if iszero(_59) { revert_forward_1() }

                if _59 {

                    let _60 := 0

                    if gt(_60, returndatasize()) {
                        _60 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_57, _60)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_57, add(_57, _60))
                }
                /// @src 0:3684:3693  "gasleft()"
                let expr_459 := gas()
                /// @src 0:3673:3693  "startGas = gasleft()"
                var_startGas_350 := expr_459
                let expr_460 := expr_459
                /// @src 0:3703:3705  "op"
                let _61_address := var_op_330_address
                let expr_462_address := _61_address
                /// @src 0:3703:3720  "op.burnUseCached1"
                let expr_464_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_462_address)
                let expr_464_functionSelector := 0x4c31b4f2
                /// @src 0:3721:3723  "id"
                let _62 := var_id_337
                let expr_465 := _62
                /// @src 0:3703:3724  "op.burnUseCached1(id)"

                if iszero(extcodesize(expr_464_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _63 := allocate_unbounded()
                mstore(_63, shift_left_224(expr_464_functionSelector))
                let _64 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_63, 4) , expr_465)

                let _65 := call(gas(), expr_464_address,  0,  _63, sub(_64, _63), _63, 0)

                if iszero(_65) { revert_forward_1() }

                if _65 {

                    let _66 := 0

                    if gt(_66, returndatasize()) {
                        _66 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_63, _66)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_63, add(_63, _66))
                }
                /// @src 0:3743:3752  "gasleft()"
                let expr_470 := gas()
                /// @src 0:3734:3752  "endGas = gasleft()"
                var_endGas_361 := expr_470
                let expr_471 := expr_470
                /// @src 0:3774:3782  "startGas"
                let _67 := var_startGas_350
                let expr_474 := _67
                /// @src 0:3785:3791  "endGas"
                let _68 := var_endGas_361
                let expr_475 := _68
                /// @src 0:3774:3791  "startGas - endGas"
                let expr_476 := checked_sub_t_uint256(expr_474, expr_475)

                /// @src 0:3762:3791  "gasUsage2 = startGas - endGas"
                var_gasUsage2_438 := expr_476
                let expr_477 := expr_476
                /// @src 0:3834:3843  "gasUsage2"
                let _69 := var_gasUsage2_438
                let expr_481 := _69
                /// @src 0:3806:3844  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _70 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _71 := allocate_unbounded()
                    let _72 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_71 , expr_481)
                    log1(_71, sub(_72, _71) , _70)
                }
            }
            /// @src 0:2574:4815  "contract Test {..."

            function cleanup_t_rational_11_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_11_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_11_by_1(value)))
            }

            function abi_encode_t_rational_11_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_11_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple_t_rational_11_by_1__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_11_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 613
            /// @src 0:3871:4812  "function test2() public {..."
            function fun_test2_613() {

                /// @src 0:3941:3963  "new CachedResultDemo()"
                let _73 := allocate_unbounded()
                let _74 := add(_73, datasize("CachedResultDemo_164"))
                if or(gt(_74, 0xffffffffffffffff), lt(_74, _73)) { panic_error_0x41() }
                datacopy(_73, dataoffset("CachedResultDemo_164"), datasize("CachedResultDemo_164"))
                _74 := abi_encode_tuple__to__fromStack(_74)

                let expr_494_address := create(0, _73, sub(_74, _73))

                if iszero(expr_494_address) { revert_forward_1() }

                /// @src 0:3905:3963  "CachedResultDemo cachedResultDemo = new CachedResultDemo()"
                let var_cachedResultDemo_490_address := expr_494_address
                /// @src 0:3985:3997  "new DemoOp()"
                let _75 := allocate_unbounded()
                let _76 := add(_75, datasize("DemoOp_311"))
                if or(gt(_76, 0xffffffffffffffff), lt(_76, _75)) { panic_error_0x41() }
                datacopy(_75, dataoffset("DemoOp_311"), datasize("DemoOp_311"))
                _76 := abi_encode_tuple__to__fromStack(_76)

                let expr_502_address := create(0, _75, sub(_76, _75))

                if iszero(expr_502_address) { revert_forward_1() }

                /// @src 0:3973:3997  "DemoOp op = new DemoOp()"
                let var_op_498_address := expr_502_address
                /// @src 0:4027:4036  "gasleft()"
                let expr_507 := gas()
                /// @src 0:4008:4036  "uint256 startGas = gasleft()"
                let var_startGas_505 := expr_507
                /// @src 0:4046:4062  "cachedResultDemo"
                let _77_address := var_cachedResultDemo_490_address
                let expr_509_address := _77_address
                /// @src 0:4046:4068  "cachedResultDemo.test6"
                let expr_511_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_509_address)
                let expr_511_functionSelector := 0xc461905f
                /// @src 0:4069:4071  "11"
                let expr_512 := 0x0b
                /// @src 0:4046:4072  "cachedResultDemo.test6(11)"

                if iszero(extcodesize(expr_511_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _78 := allocate_unbounded()
                mstore(_78, shift_left_224(expr_511_functionSelector))
                let _79 := abi_encode_tuple_t_rational_11_by_1__to_t_uint256__fromStack(add(_78, 4) , expr_512)

                let _80 := call(gas(), expr_511_address,  0,  _78, sub(_79, _78), _78, 0)

                if iszero(_80) { revert_forward_1() }

                if _80 {

                    let _81 := 0

                    if gt(_81, returndatasize()) {
                        _81 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_78, _81)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_78, add(_78, _81))
                }
                /// @src 0:4099:4108  "gasleft()"
                let expr_518 := gas()
                /// @src 0:4082:4108  "uint256 endGas = gasleft()"
                let var_endGas_516 := expr_518
                /// @src 0:4138:4146  "startGas"
                let _82 := var_startGas_505
                let expr_522 := _82
                /// @src 0:4149:4155  "endGas"
                let _83 := var_endGas_516
                let expr_523 := _83
                /// @src 0:4138:4155  "startGas - endGas"
                let expr_524 := checked_sub_t_uint256(expr_522, expr_523)

                /// @src 0:4118:4155  "uint256 gasUsage1 = startGas - endGas"
                let var_gasUsage1_521 := expr_524
                /// @src 0:4198:4207  "gasUsage1"
                let _84 := var_gasUsage1_521
                let expr_528 := _84
                /// @src 0:4170:4208  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _85 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _86 := allocate_unbounded()
                    let _87 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_86 , expr_528)
                    log1(_86, sub(_87, _86) , _85)
                }/// @src 0:4245:4254  "gasleft()"
                let expr_533 := gas()
                /// @src 0:4234:4254  "startGas = gasleft()"
                var_startGas_505 := expr_533
                let expr_534 := expr_533
                /// @src 0:4264:4280  "cachedResultDemo"
                let _88_address := var_cachedResultDemo_490_address
                let expr_536_address := _88_address
                /// @src 0:4264:4286  "cachedResultDemo.test6"
                let expr_538_address := convert_t_contract$_CachedResultDemo_$164_to_t_address(expr_536_address)
                let expr_538_functionSelector := 0xc461905f
                /// @src 0:4287:4289  "11"
                let expr_539 := 0x0b
                /// @src 0:4264:4290  "cachedResultDemo.test6(11)"

                if iszero(extcodesize(expr_538_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _89 := allocate_unbounded()
                mstore(_89, shift_left_224(expr_538_functionSelector))
                let _90 := abi_encode_tuple_t_rational_11_by_1__to_t_uint256__fromStack(add(_89, 4) , expr_539)

                let _91 := call(gas(), expr_538_address,  0,  _89, sub(_90, _89), _89, 0)

                if iszero(_91) { revert_forward_1() }

                if _91 {

                    let _92 := 0

                    if gt(_92, returndatasize()) {
                        _92 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_89, _92)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_89, add(_89, _92))
                }
                /// @src 0:4309:4318  "gasleft()"
                let expr_544 := gas()
                /// @src 0:4300:4318  "endGas = gasleft()"
                var_endGas_516 := expr_544
                let expr_545 := expr_544
                /// @src 0:4340:4348  "startGas"
                let _93 := var_startGas_505
                let expr_548 := _93
                /// @src 0:4351:4357  "endGas"
                let _94 := var_endGas_516
                let expr_549 := _94
                /// @src 0:4340:4357  "startGas - endGas"
                let expr_550 := checked_sub_t_uint256(expr_548, expr_549)

                /// @src 0:4328:4357  "gasUsage1 = startGas - endGas"
                var_gasUsage1_521 := expr_550
                let expr_551 := expr_550
                /// @src 0:4400:4409  "gasUsage1"
                let _95 := var_gasUsage1_521
                let expr_555 := _95
                /// @src 0:4372:4410  "log_named_uint(\"gasUsage1\", gasUsage1)"
                let _96 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _97 := allocate_unbounded()
                    let _98 := abi_encode_tuple_t_stringliteral_42bc18301f9b8961c6d517fc6fe5c55522e79f455f19f4562e8464869c401545_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_97 , expr_555)
                    log1(_97, sub(_98, _97) , _96)
                }/// @src 0:4445:4454  "gasleft()"
                let expr_560 := gas()
                /// @src 0:4434:4454  "startGas = gasleft()"
                var_startGas_505 := expr_560
                let expr_561 := expr_560
                /// @src 0:4464:4466  "op"
                let _99_address := var_op_498_address
                let expr_563_address := _99_address
                /// @src 0:4464:4472  "op.test7"
                let expr_565_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_563_address)
                let expr_565_functionSelector := 0x578bdc47
                /// @src 0:4473:4475  "11"
                let expr_566 := 0x0b
                /// @src 0:4464:4476  "op.test7(11)"

                if iszero(extcodesize(expr_565_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _100 := allocate_unbounded()
                mstore(_100, shift_left_224(expr_565_functionSelector))
                let _101 := abi_encode_tuple_t_rational_11_by_1__to_t_uint256__fromStack(add(_100, 4) , expr_566)

                let _102 := call(gas(), expr_565_address,  0,  _100, sub(_101, _100), _100, 0)

                if iszero(_102) { revert_forward_1() }

                if _102 {

                    let _103 := 0

                    if gt(_103, returndatasize()) {
                        _103 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_100, _103)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_100, add(_100, _103))
                }
                /// @src 0:4495:4504  "gasleft()"
                let expr_571 := gas()
                /// @src 0:4486:4504  "endGas = gasleft()"
                var_endGas_516 := expr_571
                let expr_572 := expr_571
                /// @src 0:4534:4542  "startGas"
                let _104 := var_startGas_505
                let expr_576 := _104
                /// @src 0:4545:4551  "endGas"
                let _105 := var_endGas_516
                let expr_577 := _105
                /// @src 0:4534:4551  "startGas - endGas"
                let expr_578 := checked_sub_t_uint256(expr_576, expr_577)

                /// @src 0:4514:4551  "uint256 gasUsage2 = startGas - endGas"
                let var_gasUsage2_575 := expr_578
                /// @src 0:4594:4603  "gasUsage2"
                let _106 := var_gasUsage2_575
                let expr_582 := _106
                /// @src 0:4566:4604  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _107 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _108 := allocate_unbounded()
                    let _109 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_108 , expr_582)
                    log1(_108, sub(_109, _108) , _107)
                }/// @src 0:4641:4650  "gasleft()"
                let expr_587 := gas()
                /// @src 0:4630:4650  "startGas = gasleft()"
                var_startGas_505 := expr_587
                let expr_588 := expr_587
                /// @src 0:4660:4662  "op"
                let _110_address := var_op_498_address
                let expr_590_address := _110_address
                /// @src 0:4660:4668  "op.test7"
                let expr_592_address := convert_t_contract$_DemoOp_$311_to_t_address(expr_590_address)
                let expr_592_functionSelector := 0x578bdc47
                /// @src 0:4669:4671  "11"
                let expr_593 := 0x0b
                /// @src 0:4660:4672  "op.test7(11)"

                if iszero(extcodesize(expr_592_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _111 := allocate_unbounded()
                mstore(_111, shift_left_224(expr_592_functionSelector))
                let _112 := abi_encode_tuple_t_rational_11_by_1__to_t_uint256__fromStack(add(_111, 4) , expr_593)

                let _113 := call(gas(), expr_592_address,  0,  _111, sub(_112, _111), _111, 0)

                if iszero(_113) { revert_forward_1() }

                if _113 {

                    let _114 := 0

                    if gt(_114, returndatasize()) {
                        _114 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_111, _114)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_111, add(_111, _114))
                }
                /// @src 0:4691:4700  "gasleft()"
                let expr_598 := gas()
                /// @src 0:4682:4700  "endGas = gasleft()"
                var_endGas_516 := expr_598
                let expr_599 := expr_598
                /// @src 0:4722:4730  "startGas"
                let _115 := var_startGas_505
                let expr_602 := _115
                /// @src 0:4733:4739  "endGas"
                let _116 := var_endGas_516
                let expr_603 := _116
                /// @src 0:4722:4739  "startGas - endGas"
                let expr_604 := checked_sub_t_uint256(expr_602, expr_603)

                /// @src 0:4710:4739  "gasUsage2 = startGas - endGas"
                var_gasUsage2_575 := expr_604
                let expr_605 := expr_604
                /// @src 0:4782:4791  "gasUsage2"
                let _117 := var_gasUsage2_575
                let expr_609 := _117
                /// @src 0:4754:4792  "log_named_uint(\"gasUsage2\", gasUsage2)"
                let _118 := 0xb2de2fbe801a0df6c0cbddfd448ba3c41d48a040ca35c56c8196ef0fcae721a8
                {
                    let _119 := allocate_unbounded()
                    let _120 := abi_encode_tuple_t_stringliteral_691006ca1d90baab3fba686cfbdb5b442357c2a34e2a266b95f8b84081398b26_t_uint256__to_t_string_memory_ptr_t_uint256__fromStack(_119 , expr_609)
                    log1(_119, sub(_120, _119) , _118)
                }
            }
            /// @src 0:2574:4815  "contract Test {..."

        }

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

        data ".metadata" hex"a2646970667358221220c72da8ef397d14b4e90e3922351eeadda2eeb848339ec9e300dc6cb7bc61721c64736f6c634300080f0033"
    }

}

