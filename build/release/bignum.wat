(module
 (type $i (func (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iIIIIv (func (param i32 i64 i64 i64 i64)))
 (type $Ii (func (param i64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iiIIv (func (param i32 i32 i64 i64)))
 (type $iIIIIi (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iF (func (param i32) (result f64)))
 (type $if (func (param i32) (result f32)))
 (type $iiiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iIv (func (param i32 i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $assembly/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 48) "\a0\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10\'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\t\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00\00\00\c1o\f2\86#\00\00\00\8a]xEc\01\00\00d\a7\b3\b6\e0\0d\00\00\e8\89\04#\c7\8a")
 (data (i32.const 304) "0\00\00\00\14")
 (data (i32.const 312) "\11\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data (i32.const 352) ",\01")
 (data (i32.const 364) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00\n\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\"\00\00\00#\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00\n\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\"\00\00\00#")
 (data (i32.const 864) "`\01\00\00K")
 (data (i32.const 872) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 904) "\01\00\00\000")
 (data (i32.const 920) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 936) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1000) "\t\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
 (export "memory" (memory $0))
 (export "u128.get:Zero" (func $assembly/integer/u128/u128.get:Zero))
 (export "u128.get:One" (func $assembly/integer/u128/u128.get:Zero))
 (export "u128.get:Min" (func $assembly/integer/u128/u128.get:Zero))
 (export "u128.get:Max" (func $assembly/integer/u128/u128.get:Zero))
 (export "_setargc" (func $~setargc))
 (export "u128.fromString" (func $assembly/integer/u128/u128.fromString|trampoline))
 (export "u128.fromI256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromU256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromI128" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromU128" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromI64" (func $assembly/integer/u128/u128.fromI64))
 (export "u128.fromU64" (func $assembly/integer/u128/u128.fromI64))
 (export "u128.fromF64" (func $assembly/integer/u128/u128.fromF64))
 (export "u128.fromF32" (func $assembly/integer/u128/u128.fromF32))
 (export "u128.fromI32" (func $assembly/integer/u128/u128.fromI32))
 (export "u128.fromU32" (func $assembly/integer/u128/u128.fromI32))
 (export "u128.fromBool" (func $assembly/integer/u128/u128.fromI32))
 (export "u128.fromBits" (func $assembly/integer/u128/u128.fromBits))
 (export "u128.fromBytes" (func $assembly/integer/u128/u128.fromBytes|trampoline))
 (export "u128.fromBytesLE" (func $assembly/integer/u128/u128.fromBytesLE))
 (export "u128.fromBytesBE" (func $assembly/integer/u128/u128.fromBytesBE))
 (export "u128.from<u64>" (func $assembly/integer/u128/u128.fromI64))
 (export "u128.isEmpty" (func $assembly/integer/u128/u128.isEmpty))
 (export "u128.or" (func $assembly/integer/u128/u128.or))
 (export "u128.xor" (func $assembly/integer/u128/u128.xor))
 (export "u128.and" (func $assembly/integer/u128/u128.and))
 (export "u128.shl" (func $assembly/integer/u128/u128.shl))
 (export "u128.shr" (func $assembly/integer/u128/u128.shr))
 (export "u128.shr_u" (func $assembly/integer/u128/u128.shr))
 (export "u128.rotl" (func $assembly/integer/u128/u128.rotl))
 (export "u128.rotr" (func $assembly/integer/u128/u128.rotr))
 (export "u128.add" (func $assembly/integer/u128/u128.add))
 (export "u128.sub" (func $assembly/integer/u128/u128.sub))
 (export "u128.mul" (func $assembly/integer/u128/u128.mul))
 (export "u128.div" (func $assembly/integer/u128/u128.div))
 (export "u128.rem" (func $assembly/integer/u128/u128.div))
 (export "u128.div10" (func $assembly/integer/u128/u128.div10))
 (export "u128.rem10" (func $assembly/integer/u128/u128.div10))
 (export "u128.pow" (func $assembly/integer/u128/u128.pow))
 (export "u128.eq" (func $assembly/integer/u128/u128.eq))
 (export "u128.ne" (func $assembly/integer/u128/u128.ne))
 (export "u128.lt" (func $assembly/integer/u128/u128.lt))
 (export "u128.gt" (func $assembly/integer/u128/u128.gt))
 (export "u128.le" (func $assembly/integer/u128/u128.le))
 (export "u128.ge" (func $assembly/integer/u128/u128.ge))
 (export "u128.cmp" (func $assembly/integer/u128/u128.cmp))
 (export "u128.popcnt" (func $assembly/integer/u128/u128.popcnt))
 (export "u128.clz" (func $assembly/integer/u128/u128.clz))
 (export "u128.ctz" (func $assembly/integer/u128/u128.ctz))
 (export "u128.sqr" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.mulq" (func $assembly/integer/u128/u128.pow))
 (export "u128#constructor" (func $assembly/integer/u128/u128#constructor|trampoline))
 (export "u128#get:lo" (func $assembly/integer/u128/u128#toU64))
 (export "u128#set:lo" (func $u128#set:lo))
 (export "u128#get:hi" (func $u128#get:hi))
 (export "u128#set:hi" (func $u128#set:hi))
 (export "u128#set" (func $assembly/integer/u128/u128#set))
 (export "u128#setI64" (func $assembly/integer/u128/u128#setI64))
 (export "u128#setU64" (func $assembly/integer/u128/u128#setU64))
 (export "u128#setI32" (func $assembly/integer/u128/u128#setI32))
 (export "u128#setU32" (func $assembly/integer/u128/u128#setU32))
 (export "u128#isZero" (func $assembly/integer/u128/u128#isZero))
 (export "u128#not" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#pos" (func $assembly/integer/u128/u128#pos))
 (export "u128#neg" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#preInc" (func $assembly/integer/u128/u128#preInc))
 (export "u128#preDec" (func $assembly/integer/u128/u128#preDec))
 (export "u128#sqr" (func $assembly/integer/u128/u128#sqr))
 (export "u128#toI256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#toU256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#toI128" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#toU128" (func $assembly/integer/u128/u128#pos))
 (export "u128#toI64" (func $assembly/integer/u128/u128#toI64))
 (export "u128#toU64" (func $assembly/integer/u128/u128#toU64))
 (export "u128#toI32" (func $assembly/integer/u128/u128#toI32))
 (export "u128#toU32" (func $assembly/integer/u128/u128#toU32))
 (export "u128#toBool" (func $assembly/integer/u128/u128#toBool))
 (export "u128#toF64" (func $assembly/integer/u128/u128#toF64))
 (export "u128#toF64Unsafe" (func $assembly/integer/u128/u128#toF64Unsafe))
 (export "u128#toF32" (func $assembly/integer/u128/u128#toF32))
 (export "u128#toBytes" (func $assembly/integer/u128/u128#toBytes|trampoline))
 (export "u128#toBytesLE" (func $assembly/integer/u128/u128#toBytesLE))
 (export "u128#toBytesBE" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#clone" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#toString" (func $assembly/integer/u128/u128#toString|trampoline))
 (export "u256.get:Zero" (func $assembly/integer/u128/u128.get:Zero))
 (export "u256.get:One" (func $assembly/integer/u128/u128.get:Zero))
 (export "u256.get:Min" (func $assembly/integer/u128/u128.get:Zero))
 (export "u256.get:Max" (func $assembly/integer/u128/u128.get:Zero))
 (export "u256.fromU256" (func $assembly/integer/u256/u256.fromU256))
 (export "u256.fromU128" (func $assembly/integer/u128/u128.fromI256))
 (export "u256.fromU64" (func $assembly/integer/u128/u128.fromI64))
 (export "u256.fromI64" (func $assembly/integer/u128/u128.fromI64))
 (export "u256.fromU32" (func $assembly/integer/u128/u128.fromI32))
 (export "u256.fromI32" (func $assembly/integer/u128/u128.fromI32))
 (export "u256.fromBits" (func $assembly/integer/u256/u256.fromBits))
 (export "u256.fromBytes" (func $assembly/integer/u128/u128.fromI32))
 (export "u256.fromF64" (func $assembly/integer/u128/u128.fromF64))
 (export "u256.fromF32" (func $assembly/integer/u128/u128.fromF32))
 (export "u256.isEmpty" (func $assembly/integer/u256/u256.isEmpty))
 (export "u256.add" (func $assembly/integer/u256/u256.add))
 (export "u256.or" (func $assembly/integer/u256/u256.or))
 (export "u256.xor" (func $assembly/integer/u256/u256.xor))
 (export "u256.and" (func $assembly/integer/u256/u256.and))
 (export "u256.popcnt" (func $assembly/integer/u256/u256.popcnt))
 (export "u256.clz" (func $assembly/integer/u256/u256.clz))
 (export "u256.ctz" (func $assembly/integer/u256/u256.ctz))
 (export "u256#constructor" (func $assembly/integer/u256/u256#constructor|trampoline))
 (export "u256#get:lo1" (func $assembly/integer/u128/u128#toU64))
 (export "u256#set:lo1" (func $u128#set:lo))
 (export "u256#get:lo2" (func $u128#get:hi))
 (export "u256#set:lo2" (func $u128#set:hi))
 (export "u256#get:hi1" (func $u256#get:hi1))
 (export "u256#set:hi1" (func $u256#set:hi1))
 (export "u256#get:hi2" (func $u256#get:hi2))
 (export "u256#set:hi2" (func $u256#set:hi2))
 (export "u256#set" (func $assembly/integer/u256/u256#set))
 (export "u256#setU128" (func $assembly/integer/u256/u256#setU128))
 (export "u256#setI64" (func $assembly/integer/u256/u256#setI64))
 (export "u256#setU64" (func $assembly/integer/u256/u256#setU64))
 (export "u256#setI32" (func $assembly/integer/u256/u256#setI32))
 (export "u256#setU32" (func $assembly/integer/u256/u256#setU32))
 (export "u256#isZero" (func $assembly/integer/u256/u256#isZero))
 (export "u256#not" (func $assembly/integer/u256/u256.fromU256))
 (export "u256#pos" (func $assembly/integer/u128/u128#pos))
 (export "u256#neg" (func $assembly/integer/u256/u256.fromU256))
 (export "u256#toI128" (func $assembly/integer/u256/u256#toI128))
 (export "u256#toU128" (func $assembly/integer/u128/u128.fromI256))
 (export "u256#toI64" (func $assembly/integer/u256/u256#toI64))
 (export "u256#toU64" (func $assembly/integer/u128/u128#toU64))
 (export "u256#toI32" (func $assembly/integer/u256/u256#toI32))
 (export "u256#toU32" (func $assembly/integer/u128/u128#toU32))
 (export "u256#toBool" (func $assembly/integer/u256/u256#toBool))
 (export "u256#toBytes" (func $assembly/integer/u256/u256#toBytes|trampoline))
 (export "u256#toBytesLE" (func $assembly/integer/u256/u256#toBytesLE))
 (export "u256#toBytesBE" (func $assembly/integer/u256/u256#toBytesBE))
 (export "u256#clone" (func $assembly/integer/u256/u256.fromU256))
 (func $assembly/integer/u128/u128.get:Zero (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  (unreachable)
 )
 (func $assembly/globals/__multi3 (; 2 ;) (; has Stack IR ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  ;;@ assembly/globals.ts:111:2
  (set_local $8
   ;;@ assembly/globals.ts:111:11
   (i64.and
    ;;@ assembly/globals.ts:110:2
    (tee_local $5
     ;;@ assembly/globals.ts:110:11
     (i64.mul
      ;;@ assembly/globals.ts:108:2
      (tee_local $6
       ;;@ assembly/globals.ts:108:11
       (i64.and
        (get_local $1)
        ;;@ assembly/globals.ts:108:15
        (i64.const 4294967295)
       )
      )
      ;;@ assembly/globals.ts:109:2
      (tee_local $7
       ;;@ assembly/globals.ts:109:11
       (i64.and
        (get_local $3)
        ;;@ assembly/globals.ts:109:15
        (i64.const 4294967295)
       )
      )
     )
    )
    ;;@ assembly/globals.ts:111:15
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/globals.ts:116:2
  (set_local $7
   ;;@ assembly/globals.ts:116:6
   (i64.shr_u
    ;;@ assembly/globals.ts:114:2
    (tee_local $5
     ;;@ assembly/globals.ts:114:6
     (i64.add
      (i64.mul
       ;;@ assembly/globals.ts:113:2
       (tee_local $9
        ;;@ assembly/globals.ts:113:6
        (i64.shr_u
         (get_local $1)
         ;;@ assembly/globals.ts:113:11
         (i64.const 32)
        )
       )
       (get_local $7)
      )
      ;;@ assembly/globals.ts:114:15
      (i64.shr_u
       (get_local $5)
       ;;@ assembly/globals.ts:114:21
       (i64.const 32)
      )
     )
    )
    ;;@ assembly/globals.ts:116:11
    (i64.const 32)
   )
  )
  ;;@ assembly/globals.ts:126:2
  (set_global $assembly/globals/__res128_lo
   ;;@ assembly/globals.ts:120:12
   (i64.add
    (get_local $8)
    ;;@ assembly/globals.ts:120:17
    (i64.shl
     ;;@ assembly/globals.ts:118:2
     (tee_local $5
      ;;@ assembly/globals.ts:118:6
      (i64.add
       (i64.mul
        (get_local $6)
        ;;@ assembly/globals.ts:117:2
        (tee_local $6
         ;;@ assembly/globals.ts:117:6
         (i64.shr_u
          (get_local $3)
          ;;@ assembly/globals.ts:117:11
          (i64.const 32)
         )
        )
       )
       ;;@ assembly/globals.ts:115:6
       (i64.and
        (get_local $5)
        ;;@ assembly/globals.ts:115:10
        (i64.const 4294967295)
       )
      )
     )
     ;;@ assembly/globals.ts:120:23
     (i64.const 32)
    )
   )
  )
  ;;@ assembly/globals.ts:127:2
  (set_global $assembly/globals/__res128_hi
   (i64.add
    (i64.add
     (i64.add
      ;;@ assembly/globals.ts:121:12
      (i64.add
       (i64.mul
        (get_local $9)
        (get_local $6)
       )
       (get_local $7)
      )
      ;;@ assembly/globals.ts:122:12
      (i64.mul
       (get_local $2)
       (get_local $3)
      )
     )
     ;;@ assembly/globals.ts:123:12
     (i64.mul
      (get_local $1)
      (get_local $4)
     )
    )
    ;;@ assembly/globals.ts:124:12
    (i64.shr_u
     (get_local $5)
     ;;@ assembly/globals.ts:124:17
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/utils/atou128 (; 3 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/utils.ts:157:2
  (if
   ;;@ assembly/utils.ts:157:6
   (i32.eqz
    (get_local $1)
   )
   ;;@ assembly/utils.ts:157:14
   (set_local $1
    ;;@ assembly/utils.ts:157:22
    (i32.const 10)
   )
  )
  ;;@ assembly/utils.ts:158:6
  (if
   (i32.eqz
    (tee_local $2
     (i32.lt_s
      (get_local $1)
      ;;@ assembly/utils.ts:158:14
      (i32.const 2)
     )
    )
   )
   (set_local $2
    ;;@ assembly/utils.ts:158:19
    (i32.gt_s
     (get_local $1)
     ;;@ assembly/utils.ts:158:27
     (i32.const 36)
    )
   )
  )
  ;;@ assembly/utils.ts:158:2
  (if
   (get_local $2)
   ;;@ assembly/utils.ts:158:31
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 312)
     (i32.const 159)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ assembly/utils.ts:162:2
  (if
   ;;@ assembly/utils.ts:162:6
   (i32.eqz
    ;;@ assembly/utils.ts:161:2
    (tee_local $2
     ;;@ assembly/utils.ts:161:12
     (i32.load
      (get_local $0)
     )
    )
   )
   (unreachable)
  )
  (set_local $1
   (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
    (drop
     (br_if $__inlined_func$~lib/string/String#charCodeAt
      (tee_local $1
       (i32.const -1)
      )
      (i32.ge_u
       (i32.const 0)
       (i32.load
        (tee_local $3
         (get_local $0)
        )
       )
      )
     )
    )
    (i32.load16_u offset=4
     (get_local $3)
    )
   )
  )
  ;;@ assembly/utils.ts:165:6
  (if
   (tee_local $2
    (i32.eq
     (get_local $2)
     ;;@ assembly/utils.ts:165:13
     (i32.const 1)
    )
   )
   (set_local $2
    ;;@ assembly/utils.ts:165:18
    (i32.eq
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  ;;@ assembly/utils.ts:165:2
  (if
   (get_local $2)
   (unreachable)
  )
  ;;@ assembly/utils.ts:171:2
  (if
   ;;@ assembly/utils.ts:171:6
   (i32.eq
    (tee_local $2
     (block $__inlined_func$~lib/string/String#charCodeAt0 (result i32)
      (set_local $1
       ;;@ assembly/utils.ts:169:14
       (if (result i32)
        ;;@ assembly/utils.ts:168:2
        (tee_local $2
         ;;@ assembly/utils.ts:168:14
         (i32.eq
          (get_local $1)
          (i32.const 45)
         )
        )
        (get_local $2)
        ;;@ assembly/utils.ts:169:29
        (i32.eq
         (get_local $1)
         (i32.const 43)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/string/String#charCodeAt0
        (tee_local $2
         (i32.const -1)
        )
        (i32.ge_u
         ;;@ assembly/utils.ts:169:2
         (tee_local $3
          (get_local $1)
         )
         (i32.load
          (get_local $0)
         )
        )
       )
      )
      (i32.load16_u offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
      )
     )
    )
    (i32.const 48)
   )
   (block
    ;;@ assembly/utils.ts:173:8
    (if
     (i32.eqz
      (tee_local $0
       (i32.eq
        (tee_local $2
         (tee_local $1
          (block $__inlined_func$~lib/string/String#charCodeAt1 (result i32)
           (drop
            (br_if $__inlined_func$~lib/string/String#charCodeAt1
             (tee_local $1
              (i32.const -1)
             )
             (i32.ge_u
              (tee_local $2
               ;;@ assembly/utils.ts:172:32
               (tee_local $3
                (i32.add
                 (get_local $3)
                 (i32.const 1)
                )
               )
              )
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (i32.load16_u offset=4
            (i32.add
             (get_local $0)
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
           )
          )
         )
        )
        (i32.const 120)
       )
      )
     )
     (set_local $0
      ;;@ assembly/utils.ts:173:32
      (i32.eq
       (get_local $2)
       (i32.const 88)
      )
     )
    )
    ;;@ assembly/utils.ts:173:4
    (if
     (i32.eqz
      (get_local $0)
     )
     (block
      ;;@ assembly/utils.ts:175:15
      (if
       (i32.eqz
        (tee_local $0
         (i32.eq
          (get_local $2)
          (i32.const 111)
         )
        )
       )
       (set_local $0
        ;;@ assembly/utils.ts:175:39
        (i32.eq
         (get_local $2)
         (i32.const 79)
        )
       )
      )
      ;;@ assembly/utils.ts:175:11
      (if
       (i32.eqz
        (get_local $0)
       )
       ;;@ assembly/utils.ts:177:15
       (if
        (i32.eqz
         (tee_local $0
          (i32.eq
           (get_local $2)
           (i32.const 98)
          )
         )
        )
        (set_local $0
         ;;@ assembly/utils.ts:177:39
         (i32.eq
          (get_local $2)
          (i32.const 66)
         )
        )
       )
      )
     )
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromI256 (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:62:20
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:62:31
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromI64 (; 5 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromF64 (; 6 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:97:20
   (i64.trunc_u/f64
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromF32 (; 7 ;) (; has Stack IR ;) (type $fi) (param $0 f32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:104:20
   (i64.trunc_u/f32
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromI32 (; 8 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromBits (; 9 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromBytesBE (; 10 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:161:6
   (i64.or
    (i64.or
     (i64.or
      (i64.or
       (i64.or
        (i64.or
         (i64.or
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.const 8)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:161:35
           (i64.const 56)
          )
          ;;@ assembly/integer/u128.ts:162:6
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.const 9)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:162:35
           (i64.const 48)
          )
         )
         ;;@ assembly/integer/u128.ts:163:6
         (i64.shl
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.add
             (i32.load
              (get_local $0)
             )
             (i32.const 10)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:163:35
          (i64.const 40)
         )
        )
        ;;@ assembly/integer/u128.ts:164:6
        (i64.shl
         (i64.extend_u/i32
          (i32.load8_u offset=8
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.const 11)
           )
          )
         )
         ;;@ assembly/integer/u128.ts:164:35
         (i64.const 32)
        )
       )
       ;;@ assembly/integer/u128.ts:165:6
       (i64.shl
        (i64.extend_u/i32
         (i32.load8_u offset=8
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.const 12)
          )
         )
        )
        ;;@ assembly/integer/u128.ts:165:35
        (i64.const 24)
       )
      )
      ;;@ assembly/integer/u128.ts:166:6
      (i64.shl
       (i64.extend_u/i32
        (i32.load8_u offset=8
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 13)
         )
        )
       )
       ;;@ assembly/integer/u128.ts:166:35
       (i64.const 16)
      )
     )
     ;;@ assembly/integer/u128.ts:167:6
     (i64.shl
      (i64.extend_u/i32
       (i32.load8_u offset=8
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.const 14)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:167:36
      (i64.const 8)
     )
    )
    ;;@ assembly/integer/u128.ts:168:6
    (i64.extend_u/i32
     (i32.load8_u offset=8
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.const 15)
      )
     )
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:170:6
   (i64.or
    (i64.or
     (i64.or
      (i64.or
       (i64.or
        (i64.or
         (i64.or
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.load
              (get_local $0)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:170:34
           (i64.const 56)
          )
          ;;@ assembly/integer/u128.ts:171:6
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.const 1)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:171:34
           (i64.const 48)
          )
         )
         ;;@ assembly/integer/u128.ts:172:6
         (i64.shl
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.add
             (i32.load
              (get_local $0)
             )
             (i32.const 2)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:172:34
          (i64.const 40)
         )
        )
        ;;@ assembly/integer/u128.ts:173:6
        (i64.shl
         (i64.extend_u/i32
          (i32.load8_u offset=8
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.const 3)
           )
          )
         )
         ;;@ assembly/integer/u128.ts:173:34
         (i64.const 32)
        )
       )
       ;;@ assembly/integer/u128.ts:174:6
       (i64.shl
        (i64.extend_u/i32
         (i32.load8_u offset=8
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.const 4)
          )
         )
        )
        ;;@ assembly/integer/u128.ts:174:34
        (i64.const 24)
       )
      )
      ;;@ assembly/integer/u128.ts:175:6
      (i64.shl
       (i64.extend_u/i32
        (i32.load8_u offset=8
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 5)
         )
        )
       )
       ;;@ assembly/integer/u128.ts:175:34
       (i64.const 16)
      )
     )
     ;;@ assembly/integer/u128.ts:176:6
     (i64.shl
      (i64.extend_u/i32
       (i32.load8_u offset=8
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.const 6)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:176:35
      (i64.const 8)
     )
    )
    ;;@ assembly/integer/u128.ts:177:6
    (i64.extend_u/i32
     (i32.load8_u offset=8
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.const 7)
      )
     )
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromBytesLE (; 11 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:138:6
   (i64.or
    (i64.or
     (i64.or
      (i64.or
       (i64.or
        (i64.or
         (i64.or
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.load
             (get_local $0)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:139:6
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.const 1)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:139:35
           (i64.const 8)
          )
         )
         ;;@ assembly/integer/u128.ts:140:6
         (i64.shl
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.add
             (i32.load
              (get_local $0)
             )
             (i32.const 2)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:140:34
          (i64.const 16)
         )
        )
        ;;@ assembly/integer/u128.ts:141:6
        (i64.shl
         (i64.extend_u/i32
          (i32.load8_u offset=8
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.const 3)
           )
          )
         )
         ;;@ assembly/integer/u128.ts:141:34
         (i64.const 24)
        )
       )
       ;;@ assembly/integer/u128.ts:142:6
       (i64.shl
        (i64.extend_u/i32
         (i32.load8_u offset=8
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.const 4)
          )
         )
        )
        ;;@ assembly/integer/u128.ts:142:34
        (i64.const 32)
       )
      )
      ;;@ assembly/integer/u128.ts:143:6
      (i64.shl
       (i64.extend_u/i32
        (i32.load8_u offset=8
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 5)
         )
        )
       )
       ;;@ assembly/integer/u128.ts:143:34
       (i64.const 40)
      )
     )
     ;;@ assembly/integer/u128.ts:144:6
     (i64.shl
      (i64.extend_u/i32
       (i32.load8_u offset=8
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.const 6)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:144:34
      (i64.const 48)
     )
    )
    ;;@ assembly/integer/u128.ts:145:6
    (i64.shl
     (i64.extend_u/i32
      (i32.load8_u offset=8
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.const 7)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:145:34
     (i64.const 56)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:147:6
   (i64.or
    (i64.or
     (i64.or
      (i64.or
       (i64.or
        (i64.or
         (i64.or
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.add
             (i32.load
              (get_local $0)
             )
             (i32.const 8)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:148:6
          (i64.shl
           (i64.extend_u/i32
            (i32.load8_u offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.const 9)
             )
            )
           )
           ;;@ assembly/integer/u128.ts:148:36
           (i64.const 8)
          )
         )
         ;;@ assembly/integer/u128.ts:149:6
         (i64.shl
          (i64.extend_u/i32
           (i32.load8_u offset=8
            (i32.add
             (i32.load
              (get_local $0)
             )
             (i32.const 10)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:149:35
          (i64.const 16)
         )
        )
        ;;@ assembly/integer/u128.ts:150:6
        (i64.shl
         (i64.extend_u/i32
          (i32.load8_u offset=8
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.const 11)
           )
          )
         )
         ;;@ assembly/integer/u128.ts:150:35
         (i64.const 24)
        )
       )
       ;;@ assembly/integer/u128.ts:151:6
       (i64.shl
        (i64.extend_u/i32
         (i32.load8_u offset=8
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.const 12)
          )
         )
        )
        ;;@ assembly/integer/u128.ts:151:35
        (i64.const 32)
       )
      )
      ;;@ assembly/integer/u128.ts:152:6
      (i64.shl
       (i64.extend_u/i32
        (i32.load8_u offset=8
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 13)
         )
        )
       )
       ;;@ assembly/integer/u128.ts:152:35
       (i64.const 40)
      )
     )
     ;;@ assembly/integer/u128.ts:153:6
     (i64.shl
      (i64.extend_u/i32
       (i32.load8_u offset=8
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.const 14)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:153:35
      (i64.const 48)
     )
    )
    ;;@ assembly/integer/u128.ts:154:6
    (i64.shl
     (i64.extend_u/i32
      (i32.load8_u offset=8
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.const 15)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:154:35
     (i64.const 56)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.isEmpty (; 12 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/integer/u128.ts:299:50
  (if
   (i32.eqz
    (tee_local $1
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $1
    ;;@ assembly/integer/u128.ts:299:29
    (i64.eqz
     ;;@ assembly/integer/u128.ts:299:30
     (i64.or
      ;;@ assembly/integer/u128.ts:299:31
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:299:42
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
   )
  )
  (get_local $1)
 )
 (func $assembly/integer/u128/u128.or (; 13 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:304:20
   (i64.or
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:304:27
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:304:33
   (i64.or
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:304:40
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.xor (; 14 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:309:20
   (i64.xor
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:309:27
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:309:33
   (i64.xor
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:309:40
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.and (; 15 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:314:20
   (i64.and
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:314:27
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:314:33
   (i64.and
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:314:40
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.shl (; 16 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:322:4
  (set_local $2
   ;;@ assembly/integer/u128.ts:322:18
   (i64.extend_u/i32
    (i32.and
     (get_local $1)
     ;;@ assembly/integer/u128.ts:319:13
     (i32.const 127)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:330:4
  (drop
   ;;@ assembly/integer/u128.ts:329:13
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:333:12
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.shr (; 17 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:343:4
  (set_local $2
   ;;@ assembly/integer/u128.ts:343:18
   (i64.extend_u/i32
    (i32.and
     (get_local $1)
     ;;@ assembly/integer/u128.ts:340:13
     (i32.const 127)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:351:4
  (drop
   ;;@ assembly/integer/u128.ts:350:13
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:354:12
   (i64.load
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.rotl (; 18 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  ;;@ assembly/integer/u128.ts:367:4
  (if
   (i32.eqz
    ;;@ assembly/integer/u128.ts:366:4
    (tee_local $1
     (i32.and
      (get_local $1)
      ;;@ assembly/integer/u128.ts:366:13
      (i32.const 127)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:367:27
   (return
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:371:4
  (set_local $6
   ;;@ assembly/integer/u128.ts:371:15
   (i64.sub
    (i64.shr_u
     ;;@ assembly/integer/u128.ts:371:16
     (i64.and
      ;;@ assembly/integer/u128.ts:371:17
      (i64.or
       ;;@ assembly/integer/u128.ts:371:18
       (i64.add
        ;;@ assembly/integer/u128.ts:369:4
        (tee_local $2
         ;;@ assembly/integer/u128.ts:369:18
         (i64.sub
          ;;@ assembly/integer/u128.ts:369:19
          (i64.const 128)
          (tee_local $4
           (i64.extend_u/i32
            (get_local $1)
           )
          )
         )
        )
        ;;@ assembly/integer/u128.ts:371:29
        (i64.const 127)
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:371:47
      (i64.const 64)
     )
     ;;@ assembly/integer/u128.ts:371:54
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:371:59
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:372:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:372:15
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:372:27
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:372:32
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:381:4
  (drop
   (i64.or
    ;;@ assembly/integer/u128.ts:379:4
    (tee_local $5
     ;;@ assembly/integer/u128.ts:379:14
     (i64.and
      ;;@ assembly/integer/u128.ts:378:4
      (tee_local $8
       ;;@ assembly/integer/u128.ts:378:14
       (i64.shr_u
        ;;@ assembly/integer/u128.ts:377:4
        (tee_local $7
         ;;@ assembly/integer/u128.ts:377:13
         (i64.load offset=8
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:374:4
        (tee_local $2
         (i64.and
          (get_local $2)
          ;;@ assembly/integer/u128.ts:374:15
          (i64.const 63)
         )
        )
       )
      )
      ;;@ assembly/integer/u128.ts:379:20
      (i64.xor
       (get_local $3)
       (i64.const -1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:381:11
    (i64.and
     (i64.or
      ;;@ assembly/integer/u128.ts:381:12
      (i64.shr_u
       ;;@ assembly/integer/u128.ts:376:4
       (tee_local $5
        ;;@ assembly/integer/u128.ts:376:13
        (i64.load
         (get_local $0)
        )
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:381:30
      (i64.and
       ;;@ assembly/integer/u128.ts:381:31
       (i64.shl
        (get_local $7)
        ;;@ assembly/integer/u128.ts:381:38
        (i64.sub
         ;;@ assembly/integer/u128.ts:381:39
         (i64.const 64)
         (get_local $2)
        )
       )
       (get_local $6)
      )
     )
     (get_local $3)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:384:4
  (set_local $2
   (get_local $4)
  )
  ;;@ assembly/integer/u128.ts:392:4
  (drop
   ;;@ assembly/integer/u128.ts:392:14
   (i64.and
    ;;@ assembly/integer/u128.ts:391:4
    (tee_local $4
     ;;@ assembly/integer/u128.ts:391:14
     (i64.shl
      (get_local $5)
      (i64.and
       (get_local $2)
       ;;@ assembly/integer/u128.ts:389:15
       (i64.const 63)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:392:20
    (i64.xor
     ;;@ assembly/integer/u128.ts:387:4
     (tee_local $3
      ;;@ assembly/integer/u128.ts:387:11
      (i64.sub
       (i64.shr_u
        (get_local $2)
        ;;@ assembly/integer/u128.ts:387:23
        (i64.const 6)
       )
       ;;@ assembly/integer/u128.ts:387:28
       (i64.const 1)
      )
     )
     (i64.const -1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.rotr (; 19 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  ;;@ assembly/integer/u128.ts:403:4
  (if
   (i32.eqz
    ;;@ assembly/integer/u128.ts:402:4
    (tee_local $1
     (i32.and
      (get_local $1)
      ;;@ assembly/integer/u128.ts:402:13
      (i32.const 127)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:403:27
   (return
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:407:4
  (set_local $5
   ;;@ assembly/integer/u128.ts:407:15
   (i64.sub
    (i64.shr_u
     ;;@ assembly/integer/u128.ts:407:16
     (i64.and
      ;;@ assembly/integer/u128.ts:407:17
      (i64.or
       ;;@ assembly/integer/u128.ts:407:18
       (i64.add
        ;;@ assembly/integer/u128.ts:405:4
        (tee_local $2
         ;;@ assembly/integer/u128.ts:405:18
         (i64.sub
          ;;@ assembly/integer/u128.ts:405:19
          (i64.const 128)
          (tee_local $4
           (i64.extend_u/i32
            (get_local $1)
           )
          )
         )
        )
        ;;@ assembly/integer/u128.ts:407:29
        (i64.const 127)
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:407:47
      (i64.const 64)
     )
     ;;@ assembly/integer/u128.ts:407:54
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:407:59
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:408:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:408:15
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:408:27
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:408:32
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:417:4
  (drop
   (i64.or
    ;;@ assembly/integer/u128.ts:415:4
    (tee_local $7
     ;;@ assembly/integer/u128.ts:415:14
     (i64.and
      ;;@ assembly/integer/u128.ts:414:4
      (tee_local $8
       ;;@ assembly/integer/u128.ts:414:14
       (i64.shl
        ;;@ assembly/integer/u128.ts:412:4
        (tee_local $6
         ;;@ assembly/integer/u128.ts:412:13
         (i64.load
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:410:4
        (tee_local $2
         (i64.and
          (get_local $2)
          ;;@ assembly/integer/u128.ts:410:15
          (i64.const 63)
         )
        )
       )
      )
      ;;@ assembly/integer/u128.ts:415:20
      (i64.xor
       (get_local $3)
       (i64.const -1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:417:11
    (i64.and
     (i64.or
      ;;@ assembly/integer/u128.ts:417:12
      (i64.shl
       ;;@ assembly/integer/u128.ts:413:4
       (tee_local $7
        ;;@ assembly/integer/u128.ts:413:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:417:30
      (i64.and
       ;;@ assembly/integer/u128.ts:417:31
       (i64.shr_u
        (get_local $6)
        ;;@ assembly/integer/u128.ts:417:38
        (i64.sub
         ;;@ assembly/integer/u128.ts:417:39
         (i64.const 64)
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (get_local $3)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:420:4
  (set_local $2
   (get_local $4)
  )
  ;;@ assembly/integer/u128.ts:423:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:423:11
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:423:23
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:423:28
    (i64.const 1)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.add (; 20 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:439:4
  (drop
   ;;@ assembly/integer/u128.ts:439:13
   (i64.add
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:438:13
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:440:13
   (i64.add
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:440:20
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.sub (; 21 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:448:4
  (drop
   ;;@ assembly/integer/u128.ts:448:13
   (i64.sub
    ;;@ assembly/integer/u128.ts:447:13
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:448:20
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:449:13
   (i64.sub
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:449:20
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.mul (; 22 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:457:4
  (call $assembly/globals/__multi3
   ;;@ assembly/integer/u128.ts:457:13
   (i32.const 0)
   ;;@ assembly/integer/u128.ts:457:19
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:457:25
   (i64.load offset=8
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:457:31
   (i64.load
    (get_local $1)
   )
   ;;@ assembly/integer/u128.ts:457:37
   (i64.load offset=8
    (get_local $1)
   )
  )
  (unreachable)
 )
 (func $assembly/globals/__udivmod128 (; 23 ;) (; has Stack IR ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (block $folding-inner0
   ;;@ assembly/globals.ts:208:2
   (if
    ;;@ assembly/globals.ts:208:6
    (i32.eq
     ;;@ assembly/globals.ts:207:2
     (tee_local $6
      (i32.add
       (i32.wrap/i64
        (i64.clz
         (i64.or
          (i64.and
           (get_local $3)
           (i64.xor
            (tee_local $4
             (i64.sub
              (i64.const 0)
              (i64.extend_u/i32
               (i64.eq
                (get_local $3)
                (i64.const 0)
               )
              )
             )
            )
            (i64.const -1)
           )
          )
          (i64.and
           (get_local $2)
           (get_local $4)
          )
         )
        )
       )
       (i32.and
        (i32.wrap/i64
         (get_local $4)
        )
        (i32.const 64)
       )
      )
     )
     ;;@ assembly/globals.ts:208:13
     (i32.const 128)
    )
    ;;@ assembly/globals.ts:209:4
    (unreachable)
   )
   ;;@ assembly/globals.ts:212:2
   (set_local $5
    ;;@ assembly/globals.ts:201:63
    (i32.add
     ;;@ assembly/globals.ts:201:9
     (i32.wrap/i64
      (i64.ctz
       ;;@ assembly/globals.ts:201:18
       (i64.or
        (i64.and
         (get_local $3)
         ;;@ assembly/globals.ts:200:2
         (tee_local $4
          ;;@ assembly/globals.ts:200:18
          (i64.sub
           (i64.const 0)
           ;;@ assembly/globals.ts:200:19
           (i64.extend_u/i32
            ;;@ assembly/globals.ts:200:26
            (i64.eq
             (get_local $2)
             ;;@ assembly/globals.ts:200:32
             (i64.const 0)
            )
           )
          )
         )
        )
        ;;@ assembly/globals.ts:201:32
        (i64.and
         (get_local $2)
         ;;@ assembly/globals.ts:201:38
         (i64.xor
          (get_local $4)
          (i64.const -1)
         )
        )
       )
      )
     )
     ;;@ assembly/globals.ts:201:48
     (i32.and
      ;;@ assembly/globals.ts:201:49
      (i32.wrap/i64
       (get_local $4)
      )
      ;;@ assembly/globals.ts:201:61
      (i32.const 64)
     )
    )
   )
   (br_if $folding-inner0
    ;;@ assembly/globals.ts:214:6
    (i64.eqz
     ;;@ assembly/globals.ts:214:7
     (i64.or
      (get_local $0)
      (get_local $1)
     )
    )
   )
   ;;@ assembly/globals.ts:221:2
   (if
    ;;@ assembly/globals.ts:221:6
    (i32.eq
     (get_local $6)
     ;;@ assembly/globals.ts:221:13
     (i32.const 127)
    )
    ;;@ assembly/globals.ts:221:18
    (block
     ;;@ assembly/globals.ts:222:4
     (set_global $assembly/globals/__divmod_quot_lo
      (get_local $0)
     )
     ;;@ assembly/globals.ts:223:4
     (set_global $assembly/globals/__divmod_quot_hi
      (get_local $1)
     )
     ;;@ assembly/globals.ts:224:4
     (set_global $assembly/globals/__divmod_rem
      ;;@ assembly/globals.ts:224:23
      (i64.const 0)
     )
     ;;@ assembly/globals.ts:225:4
     (return)
    )
   )
   ;;@ assembly/globals.ts:228:2
   (if
    ;;@ assembly/globals.ts:228:6
    (i32.eq
     (i32.add
      (get_local $5)
      (get_local $6)
     )
     ;;@ assembly/globals.ts:228:19
     (i32.const 127)
    )
    ;;@ assembly/globals.ts:228:24
    (return)
   )
   ;;@ assembly/globals.ts:236:2
   (if
    ;;@ assembly/globals.ts:236:6
    (i64.eqz
     ;;@ assembly/globals.ts:236:7
     (i64.or
      (get_local $1)
      (get_local $3)
     )
    )
    ;;@ assembly/globals.ts:236:20
    (block
     ;;@ assembly/globals.ts:237:4
     (set_global $assembly/globals/__divmod_quot_hi
      ;;@ assembly/globals.ts:237:23
      (i64.const 0)
     )
     ;;@ assembly/globals.ts:240:4
     (if
      ;;@ assembly/globals.ts:240:8
      (i64.eqz
       ;;@ assembly/globals.ts:240:9
       (i64.and
        (get_local $2)
        ;;@ assembly/globals.ts:240:16
        (i64.sub
         (get_local $2)
         ;;@ assembly/globals.ts:240:23
         (i64.const 1)
        )
       )
      )
      ;;@ assembly/globals.ts:240:28
      (block
       ;;@ assembly/globals.ts:241:6
       (set_global $assembly/globals/__divmod_quot_lo
        ;;@ assembly/globals.ts:241:25
        (i64.shr_u
         (get_local $0)
         ;;@ assembly/globals.ts:241:32
         (i64.extend_u/i32
          (get_local $5)
         )
        )
       )
       ;;@ assembly/globals.ts:242:6
       (set_global $assembly/globals/__divmod_rem
        ;;@ assembly/globals.ts:242:22
        (i64.const 0)
       )
      )
      ;;@ assembly/globals.ts:243:11
      (block
       ;;@ assembly/globals.ts:245:6
       (set_global $assembly/globals/__divmod_quot_lo
        ;;@ assembly/globals.ts:244:6
        (tee_local $4
         ;;@ assembly/globals.ts:244:16
         (i64.div_u
          (get_local $0)
          (get_local $2)
         )
        )
       )
       ;;@ assembly/globals.ts:246:6
       (set_global $assembly/globals/__divmod_rem
        ;;@ assembly/globals.ts:246:25
        (i64.sub
         (get_local $0)
         ;;@ assembly/globals.ts:246:31
         (i64.mul
          (get_local $4)
          (get_local $2)
         )
        )
       )
      )
     )
     ;;@ assembly/globals.ts:248:4
     (return)
    )
   )
   ;;@ assembly/globals.ts:252:6
   (if
    (tee_local $5
     (i64.eqz
      (get_local $2)
     )
    )
    (set_local $5
     ;;@ assembly/globals.ts:252:14
     (i64.eqz
      ;;@ assembly/globals.ts:252:15
      (i64.and
       (get_local $3)
       ;;@ assembly/globals.ts:252:22
       (i64.sub
        (get_local $3)
        ;;@ assembly/globals.ts:252:29
        (i64.const 1)
       )
      )
     )
    )
   )
   ;;@ assembly/globals.ts:252:2
   (if
    (get_local $5)
    ;;@ assembly/globals.ts:252:34
    (block
     ;;@ assembly/globals.ts:253:4
     (set_global $assembly/globals/__divmod_rem
      ;;@ assembly/globals.ts:253:19
      (i64.const 0)
     )
     ;;@ assembly/globals.ts:257:4
     (return)
    )
   )
   ;;@ assembly/globals.ts:261:18
   (if
    (i64.eq
     ;;@ assembly/globals.ts:260:2
     (tee_local $4
      ;;@ assembly/globals.ts:260:18
      (i64.sub
       (get_local $1)
       (get_local $3)
      )
     )
     ;;@ assembly/globals.ts:261:26
     (i64.const 0)
    )
    (set_local $4
     ;;@ assembly/globals.ts:261:37
     (i64.sub
      (get_local $0)
      (get_local $2)
     )
    )
   )
   (br_if $folding-inner0
    ;;@ assembly/globals.ts:263:6
    (i32.lt_s
     ;;@ assembly/globals.ts:261:2
     (tee_local $5
      ;;@ assembly/globals.ts:261:12
      (i32.wrap/i64
       (get_local $4)
      )
     )
     ;;@ assembly/globals.ts:263:12
     (i32.const 0)
    )
   )
   ;;@ assembly/globals.ts:268:9
   (if
    (i32.eqz
     (get_local $5)
    )
    ;;@ assembly/globals.ts:268:23
    (block
     ;;@ assembly/globals.ts:269:4
     (set_global $assembly/globals/__divmod_quot_lo
      ;;@ assembly/globals.ts:269:23
      (i64.const 1)
     )
     (set_global $assembly/globals/__divmod_rem
      ;;@ assembly/globals.ts:271:23
      (i64.const 0)
     )
     ;;@ assembly/globals.ts:270:4
     (set_global $assembly/globals/__divmod_quot_hi
      (get_global $assembly/globals/__divmod_rem)
     )
     ;;@ assembly/globals.ts:272:4
     (return)
    )
   )
   (unreachable)
  )
  (set_global $assembly/globals/__divmod_rem
   ;;@ assembly/globals.ts:217:23
   (i64.const 0)
  )
  (set_global $assembly/globals/__divmod_quot_hi
   (get_global $assembly/globals/__divmod_rem)
  )
  ;;@ assembly/globals.ts:215:4
  (set_global $assembly/globals/__divmod_quot_lo
   (get_global $assembly/globals/__divmod_quot_hi)
  )
 )
 (func $assembly/integer/u128/u128.div (; 24 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:463:4
  (call $assembly/globals/__udivmod128
   ;;@ assembly/integer/u128.ts:463:17
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:463:23
   (i64.load offset=8
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:463:29
   (i64.load
    (get_local $1)
   )
   ;;@ assembly/integer/u128.ts:463:35
   (i64.load offset=8
    (get_local $1)
   )
  )
  (unreachable)
 )
 (func $assembly/globals/__udivmod128_10 (; 25 ;) (; has Stack IR ;) (type $iiIIv) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64)
  ;;@ assembly/globals.ts:324:2
  (if
   ;;@ assembly/globals.ts:324:6
   (i64.eqz
    (get_local $3)
   )
   ;;@ assembly/globals.ts:324:11
   (block
    ;;@ assembly/globals.ts:325:4
    (if
     ;;@ assembly/globals.ts:325:8
     (i64.lt_u
      (get_local $2)
      ;;@ assembly/globals.ts:325:13
      (i64.const 10)
     )
     ;;@ assembly/globals.ts:325:17
     (block
      (set_global $assembly/globals/__divmod_rem
       ;;@ assembly/globals.ts:328:25
       (i64.const 0)
      )
      (set_global $assembly/globals/__divmod_quot_hi
       (get_global $assembly/globals/__divmod_rem)
      )
      ;;@ assembly/globals.ts:326:6
      (set_global $assembly/globals/__divmod_quot_lo
       (get_global $assembly/globals/__divmod_quot_hi)
      )
      ;;@ assembly/globals.ts:329:6
      (return)
     )
    )
    ;;@ assembly/globals.ts:332:4
    (set_global $assembly/globals/__divmod_quot_lo
     ;;@ assembly/globals.ts:331:4
     (tee_local $3
      ;;@ assembly/globals.ts:331:14
      (i64.div_u
       (get_local $2)
       ;;@ assembly/globals.ts:331:19
       (i64.const 10)
      )
     )
    )
    ;;@ assembly/globals.ts:333:4
    (set_global $assembly/globals/__divmod_quot_hi
     ;;@ assembly/globals.ts:333:23
     (i64.const 0)
    )
    ;;@ assembly/globals.ts:334:4
    (set_global $assembly/globals/__divmod_rem
     ;;@ assembly/globals.ts:334:23
     (i64.sub
      (get_local $2)
      ;;@ assembly/globals.ts:334:28
      (i64.mul
       (get_local $3)
       ;;@ assembly/globals.ts:334:34
       (i64.const 10)
      )
     )
    )
    ;;@ assembly/globals.ts:335:4
    (return)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.div10 (; 26 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:475:4
  (call $assembly/globals/__udivmod128_10
   ;;@ assembly/integer/u128.ts:475:20
   (i32.const 0)
   ;;@ assembly/integer/u128.ts:475:26
   (i32.const 0)
   ;;@ assembly/integer/u128.ts:475:32
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:475:42
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128#sqr (; 27 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  ;;@ assembly/integer/u128.ts:673:4
  (set_local $5
   ;;@ assembly/integer/u128.ts:673:13
   (i64.and
    ;;@ assembly/integer/u128.ts:672:4
    (tee_local $3
     ;;@ assembly/integer/u128.ts:672:13
     (i64.mul
      ;;@ assembly/integer/u128.ts:671:4
      (tee_local $1
       ;;@ assembly/integer/u128.ts:671:13
       (i64.and
        (tee_local $2
         ;;@ assembly/integer/u128.ts:668:12
         (i64.load
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:671:17
        (i64.const 4294967295)
       )
      )
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:673:17
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/integer/u128.ts:679:4
  (set_local $4
   ;;@ assembly/integer/u128.ts:679:13
   (i64.shr_u
    ;;@ assembly/integer/u128.ts:678:4
    (tee_local $3
     ;;@ assembly/integer/u128.ts:678:8
     (i64.add
      ;;@ assembly/integer/u128.ts:677:4
      (tee_local $1
       ;;@ assembly/integer/u128.ts:677:12
       (i64.mul
        ;;@ assembly/integer/u128.ts:676:4
        (tee_local $2
         (i64.shr_u
          (get_local $2)
          ;;@ assembly/integer/u128.ts:676:10
          (i64.const 32)
         )
        )
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:674:13
      (i64.shr_u
       (get_local $3)
       ;;@ assembly/integer/u128.ts:674:18
       (i64.const 32)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:679:18
    (i64.const 32)
   )
  )
  ;;@ assembly/integer/u128.ts:685:8
  (set_local $1
   (i64.add
    ;;@ assembly/integer/u128.ts:684:14
    (i64.mul
     (get_local $2)
     (get_local $2)
    )
    ;;@ assembly/integer/u128.ts:685:14
    (i64.add
     (get_local $4)
     ;;@ assembly/integer/u128.ts:685:19
     (i64.shr_u
      ;;@ assembly/integer/u128.ts:681:4
      (tee_local $3
       ;;@ assembly/integer/u128.ts:681:8
       (i64.add
        (get_local $1)
        ;;@ assembly/integer/u128.ts:681:12
        (i64.and
         (get_local $3)
         ;;@ assembly/integer/u128.ts:681:17
         (i64.const 4294967295)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:685:25
      (i64.const 32)
     )
    )
   )
  )
  (set_local $4
   ;;@ assembly/integer/u128.ts:669:12
   (i64.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:688:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:683:13
   (i64.add
    (i64.shl
     (get_local $3)
     ;;@ assembly/integer/u128.ts:683:19
     (i64.const 32)
    )
    (get_local $5)
   )
  )
  ;;@ assembly/integer/u128.ts:689:4
  (i64.store offset=8
   (get_local $0)
   (i64.add
    (get_local $1)
    ;;@ assembly/integer/u128.ts:686:14
    (i64.shl
     (i64.mul
      (get_local $2)
      (get_local $4)
     )
     ;;@ assembly/integer/u128.ts:686:23
     (i64.const 1)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128.pow (; 28 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.eq (; 29 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/integer/u128.ts:580:37
  (if
   (tee_local $2
    ;;@ assembly/integer/u128.ts:580:11
    (i64.eq
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:580:19
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
   (set_local $2
    ;;@ assembly/integer/u128.ts:580:27
    (i64.eq
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:580:35
     (i64.load
      (get_local $1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $assembly/integer/u128/u128.ne (; 30 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/integer/u128.ts:580:37
  (if
   (tee_local $2
    ;;@ assembly/integer/u128.ts:580:11
    (i64.eq
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:580:19
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
   (set_local $2
    ;;@ assembly/integer/u128.ts:580:27
    (i64.eq
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:580:35
     (i64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/integer/u128.ts:585:24
  (i32.eqz
   (get_local $2)
  )
 )
 (func $assembly/integer/u128/u128.lt (; 31 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (tee_local $0
   ;;@ assembly/integer/u128.ts:591:41
   (if (result i32)
    ;;@ assembly/integer/u128.ts:591:11
    (i64.eq
     (tee_local $2
      ;;@ assembly/integer/u128.ts:590:13
      (i64.load offset=8
       (get_local $0)
      )
     )
     (tee_local $3
      ;;@ assembly/integer/u128.ts:590:24
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:591:22
    (i64.lt_u
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:591:29
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:591:36
    (i64.lt_u
     (get_local $2)
     (get_local $3)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.gt (; 32 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (tee_local $0
   ;;@ assembly/integer/u128.ts:597:41
   (if (result i32)
    ;;@ assembly/integer/u128.ts:597:11
    (i64.eq
     (tee_local $2
      ;;@ assembly/integer/u128.ts:596:13
      (i64.load offset=8
       (get_local $0)
      )
     )
     (tee_local $3
      ;;@ assembly/integer/u128.ts:596:24
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:597:22
    (i64.gt_u
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:597:29
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:597:36
    (i64.gt_u
     (get_local $2)
     (get_local $3)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.le (; 33 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  ;;@ assembly/integer/u128.ts:602:24
  (i32.eqz
   (i32.and
    (tee_local $0
     ;;@ assembly/integer/u128.ts:597:41
     (if (result i32)
      ;;@ assembly/integer/u128.ts:597:11
      (i64.eq
       (tee_local $2
        ;;@ assembly/integer/u128.ts:596:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (tee_local $3
        ;;@ assembly/integer/u128.ts:596:24
        (i64.load offset=8
         (get_local $1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:597:22
      (i64.gt_u
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:597:29
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:597:36
      (i64.gt_u
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (i32.const 1)
   )
  )
 )
 (func $assembly/integer/u128/u128.ge (; 34 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  ;;@ assembly/integer/u128.ts:607:24
  (i32.eqz
   (i32.and
    (tee_local $0
     ;;@ assembly/integer/u128.ts:591:41
     (if (result i32)
      ;;@ assembly/integer/u128.ts:591:11
      (i64.eq
       (tee_local $2
        ;;@ assembly/integer/u128.ts:590:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (tee_local $3
        ;;@ assembly/integer/u128.ts:590:24
        (i64.load offset=8
         (get_local $1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:591:22
      (i64.lt_u
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:591:29
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:591:36
      (i64.lt_u
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (i32.const 1)
   )
  )
 )
 (func $assembly/integer/u128/u128.cmp (; 35 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:615:46
  (i32.wrap/i64
   (select
    ;;@ assembly/integer/u128.ts:613:4
    (tee_local $2
     ;;@ assembly/integer/u128.ts:613:19
     (i64.sub
      (i64.load offset=8
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:613:26
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:612:19
    (i64.sub
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:612:26
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:615:38
    (i64.ne
     (get_local $2)
     ;;@ assembly/integer/u128.ts:615:45
     (i64.const 0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.popcnt (; 36 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:625:52
  (i32.wrap/i64
   ;;@ assembly/integer/u128.ts:625:17
   (i64.add
    (i64.popcnt
     ;;@ assembly/integer/u128.ts:625:24
     (i64.load
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u128.ts:625:36
    (i64.popcnt
     ;;@ assembly/integer/u128.ts:625:43
     (i64.load offset=8
      (get_local $0)
     )
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.clz (; 37 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  ;;@ assembly/globals.ts:193:2
  (set_local $1
   ;;@ assembly/globals.ts:193:18
   (i64.sub
    (i64.const 0)
    ;;@ assembly/globals.ts:193:19
    (i64.extend_u/i32
     ;;@ assembly/globals.ts:193:26
     (i64.eq
      (tee_local $2
       ;;@ assembly/integer/u128.ts:635:30
       (i64.load offset=8
        (get_local $0)
       )
      )
      ;;@ assembly/globals.ts:193:32
      (i64.const 0)
     )
    )
   )
  )
  ;;@ assembly/globals.ts:194:63
  (i32.add
   ;;@ assembly/globals.ts:194:9
   (i32.wrap/i64
    (i64.clz
     ;;@ assembly/globals.ts:194:18
     (i64.or
      (i64.and
       (get_local $2)
       ;;@ assembly/globals.ts:194:24
       (i64.xor
        (get_local $1)
        (i64.const -1)
       )
      )
      ;;@ assembly/globals.ts:194:33
      (i64.and
       ;;@ assembly/integer/u128.ts:635:20
       (i64.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
    )
   )
   ;;@ assembly/globals.ts:194:48
   (i32.and
    ;;@ assembly/globals.ts:194:49
    (i32.wrap/i64
     (get_local $1)
    )
    ;;@ assembly/globals.ts:194:61
    (i32.const 64)
   )
  )
 )
 (func $assembly/integer/u128/u128.ctz (; 38 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  ;;@ assembly/globals.ts:201:63
  (i32.add
   ;;@ assembly/globals.ts:201:9
   (i32.wrap/i64
    (i64.ctz
     ;;@ assembly/globals.ts:201:18
     (i64.or
      (i64.and
       ;;@ assembly/integer/u128.ts:645:30
       (i64.load offset=8
        (get_local $0)
       )
       ;;@ assembly/globals.ts:200:2
       (tee_local $1
        ;;@ assembly/globals.ts:200:18
        (i64.sub
         (i64.const 0)
         ;;@ assembly/globals.ts:200:19
         (i64.extend_u/i32
          ;;@ assembly/globals.ts:200:26
          (i64.eq
           (tee_local $2
            ;;@ assembly/integer/u128.ts:645:20
            (i64.load
             (get_local $0)
            )
           )
           ;;@ assembly/globals.ts:200:32
           (i64.const 0)
          )
         )
        )
       )
      )
      ;;@ assembly/globals.ts:201:32
      (i64.and
       (get_local $2)
       ;;@ assembly/globals.ts:201:38
       (i64.xor
        (get_local $1)
        (i64.const -1)
       )
      )
     )
    )
   )
   ;;@ assembly/globals.ts:201:48
   (i32.and
    ;;@ assembly/globals.ts:201:49
    (i32.wrap/i64
     (get_local $1)
    )
    ;;@ assembly/globals.ts:201:61
    (i32.const 64)
   )
  )
 )
 (func $assembly/integer/u128/u128#set (; 39 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:223:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:223:14
   (i64.load
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:224:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:224:14
   (i64.load offset=8
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setI64 (; 40 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  ;;@ assembly/integer/u128.ts:230:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u128.ts:231:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:231:14
   (i64.shr_s
    (get_local $1)
    ;;@ assembly/integer/u128.ts:231:23
    (i64.const 63)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setU64 (; 41 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  ;;@ assembly/integer/u128.ts:237:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u128.ts:238:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:238:14
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setI32 (; 42 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:244:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:244:14
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:245:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:245:14
   (i64.extend_u/i32
    (i32.shr_s
     (get_local $1)
     ;;@ assembly/integer/u128.ts:245:23
     (i32.const 63)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setU32 (; 43 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:251:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:251:14
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:252:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:252:14
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#isZero (; 44 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:258:30
  (i64.eqz
   ;;@ assembly/integer/u128.ts:258:12
   (i64.or
    ;;@ assembly/integer/u128.ts:258:13
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:258:23
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#pos (; 45 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#preInc (; 46 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u128.ts:281:4
  (i64.store offset=8
   (get_local $0)
   (i64.add
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:281:15
    (i64.shr_u
     (i64.and
      ;;@ assembly/integer/u128.ts:281:16
      (i64.xor
       ;;@ assembly/integer/u128.ts:281:17
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:280:4
       (tee_local $1
        ;;@ assembly/integer/u128.ts:280:15
        (i64.add
         (i64.load
          (get_local $0)
         )
         ;;@ assembly/integer/u128.ts:280:25
         (i64.const 1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:281:34
      (i64.load
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u128.ts:281:46
     (i64.const 63)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:282:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#preDec (; 47 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u128.ts:289:4
  (i64.store offset=8
   (get_local $0)
   (i64.sub
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:289:15
    (i64.shr_u
     (i64.and
      ;;@ assembly/integer/u128.ts:289:16
      (i64.xor
       ;;@ assembly/integer/u128.ts:289:17
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:288:4
       (tee_local $1
        ;;@ assembly/integer/u128.ts:288:15
        (i64.sub
         (i64.load
          (get_local $0)
         )
         ;;@ assembly/integer/u128.ts:288:25
         (i64.const 1)
        )
       )
      )
      (get_local $1)
     )
     ;;@ assembly/integer/u128.ts:289:42
     (i64.const 63)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:290:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#toI64 (; 48 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  ;;@ assembly/integer/u128.ts:739:4
  (i64.or
   ;;@ assembly/integer/u128.ts:737:6
   (i64.and
    ;;@ assembly/integer/u128.ts:737:7
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:737:17
    (i64.const 9223372036854775807)
   )
   ;;@ assembly/integer/u128.ts:738:6
   (i64.and
    ;;@ assembly/integer/u128.ts:738:7
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:738:17
    (i64.const -9223372036854775808)
   )
  )
 )
 (func $assembly/integer/u128/u128#toU64 (; 49 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  ;;@ assembly/integer/u128.ts:748:16
  (i64.load
   (get_local $0)
  )
 )
 (func $assembly/integer/u128/u128#toI32 (; 50 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:757:27
  (i32.wrap/i64
   ;;@ assembly/integer/u128.ts:739:4
   (i64.or
    ;;@ assembly/integer/u128.ts:737:6
    (i64.and
     ;;@ assembly/integer/u128.ts:737:7
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:737:17
     (i64.const 9223372036854775807)
    )
    ;;@ assembly/integer/u128.ts:738:6
    (i64.and
     ;;@ assembly/integer/u128.ts:738:7
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:738:17
     (i64.const -9223372036854775808)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#toU32 (; 51 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:766:21
  (i32.wrap/i64
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $assembly/integer/u128/u128#toBool (; 52 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:775:34
  (i64.ne
   ;;@ assembly/integer/u128.ts:775:11
   (i64.or
    ;;@ assembly/integer/u128.ts:775:12
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:775:22
    (i64.load offset=8
     (get_local $0)
    )
   )
   ;;@ assembly/integer/u128.ts:775:34
   (i64.const 0)
  )
 )
 (func $assembly/integer/u128/u128#toF64 (; 53 ;) (; has Stack IR ;) (type $iF) (param $0 i32) (result f64)
  (if
   (i32.eqz
    (i64.eqz
     (i64.or
      ;;@ assembly/integer/u128.ts:784:25
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:784:34
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
   )
   (unreachable)
  )
  (f64.const 0)
 )
 (func $assembly/integer/u128/u128#toF64Unsafe (; 54 ;) (; has Stack IR ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i64)
  (local $2 i64)
  (set_local $1
   ;;@ assembly/integer/u128.ts:791:13
   (i64.load
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:793:4
  (if
   ;;@ assembly/integer/u128.ts:793:8
   (i64.ge_u
    (tee_local $2
     ;;@ assembly/integer/u128.ts:791:27
     (i64.load offset=8
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u128.ts:793:14
    (i64.const 0)
   )
   ;;@ assembly/integer/u128.ts:794:36
   (return
    ;;@ assembly/integer/u128.ts:794:13
    (f64.add
     (f64.mul
      (f64.convert_u/i64
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:794:23
      (f64.const 18446744073709551615)
     )
     ;;@ assembly/integer/u128.ts:794:31
     (f64.convert_u/i64
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/integer/u128.ts:803:38
  (f64.neg
   ;;@ assembly/integer/u128.ts:803:12
   (f64.add
    ;;@ assembly/integer/u128.ts:803:13
    (f64.mul
     (f64.convert_s/i64
      (i64.add
       ;;@ assembly/integer/u128.ts:796:18
       (i64.xor
        (get_local $2)
        (i64.const -1)
       )
       ;;@ assembly/integer/u128.ts:799:13
       (i64.shr_u
        (i64.add
         ;;@ assembly/integer/u128.ts:799:14
         (i64.and
          ;;@ assembly/integer/u128.ts:797:4
          (tee_local $1
           ;;@ assembly/integer/u128.ts:797:18
           (i64.xor
            (get_local $1)
            (i64.const -1)
           )
          )
          ;;@ assembly/integer/u128.ts:799:20
          (i64.const 1)
         )
         ;;@ assembly/integer/u128.ts:799:25
         (i64.shr_u
          (get_local $1)
          ;;@ assembly/integer/u128.ts:799:32
          (i64.const 1)
         )
        )
        ;;@ assembly/integer/u128.ts:799:39
        (i64.const 63)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:803:23
     (f64.const 18446744073709551615)
    )
    ;;@ assembly/integer/u128.ts:803:31
    (f64.convert_u/i64
     (i64.add
      (get_local $1)
      ;;@ assembly/integer/u128.ts:800:10
      (i64.const 1)
     )
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#toF32 (; 55 ;) (; has Stack IR ;) (type $if) (param $0 i32) (result f32)
  (if
   (i32.eqz
    (i64.eqz
     (i64.or
      ;;@ assembly/integer/u128.ts:784:25
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:784:34
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
   )
   (unreachable)
  )
  (f32.const 0)
 )
 (func $assembly/integer/u128/u128#toBytesLE (; 56 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:858:13
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:858:27
   (i64.load
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.fromU256 (; 57 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:13:20
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:13:31
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:13:42
   (i64.load offset=16
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:13:53
   (i64.load offset=24
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.fromBits (; 58 ;) (; has Stack IR ;) (type $iiiiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u256/u256.isEmpty (; 59 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/integer/u256.ts:150:43
  (if
   (i32.eqz
    (tee_local $1
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $1
    ;;@ assembly/integer/u256.ts:150:29
    (i32.eqz
     ;;@ assembly/integer/u256.ts:145:54
     (i64.eqz
      ;;@ assembly/integer/u256.ts:145:12
      (i64.or
       ;;@ assembly/integer/u256.ts:145:13
       (i64.or
        (i64.or
         (i64.load
          (get_local $0)
         )
         ;;@ assembly/integer/u256.ts:145:24
         (i64.load offset=8
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u256.ts:145:35
        (i64.load offset=16
         (get_local $0)
        )
       )
       ;;@ assembly/integer/u256.ts:145:46
       (i64.load offset=24
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (get_local $1)
 )
 (func $assembly/integer/u256/u256.add (; 60 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u256.ts:180:4
  (drop
   ;;@ assembly/integer/u256.ts:180:15
   (i64.load
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:179:4
  (drop
   ;;@ assembly/integer/u256.ts:179:15
   (i64.load
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.or (; 61 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:192:20
   (i64.or
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:192:28
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:192:35
   (i64.or
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:192:43
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:192:50
   (i64.or
    (i64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:192:58
    (i64.load offset=16
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:192:65
   (i64.or
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:192:73
    (i64.load offset=24
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.xor (; 62 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:197:20
   (i64.xor
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:197:28
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:197:35
   (i64.xor
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:197:43
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:197:50
   (i64.xor
    (i64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:197:58
    (i64.load offset=16
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:197:65
   (i64.xor
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:197:73
    (i64.load offset=24
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.and (; 63 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:202:20
   (i64.and
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:202:28
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:202:35
   (i64.and
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:202:43
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:202:50
   (i64.and
    (i64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:202:58
    (i64.load offset=16
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:202:65
   (i64.and
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:202:73
    (i64.load offset=24
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.popcnt (; 64 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u256.ts:207:4
  (set_local $1
   ;;@ assembly/integer/u256.ts:207:28
   (i64.popcnt
    ;;@ assembly/integer/u256.ts:207:35
    (i64.load
     (get_local $0)
    )
   )
  )
  ;;@ assembly/integer/u256.ts:208:4
  (if
   (i64.ne
    ;;@ assembly/integer/u256.ts:208:8
    (i64.load offset=8
     (get_local $0)
    )
    (i64.const 0)
   )
   ;;@ assembly/integer/u256.ts:208:19
   (set_local $1
    (i64.add
     (get_local $1)
     ;;@ assembly/integer/u256.ts:208:28
     (i64.popcnt
      ;;@ assembly/integer/u256.ts:208:35
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
   )
  )
  ;;@ assembly/integer/u256.ts:209:4
  (if
   (i64.ne
    ;;@ assembly/integer/u256.ts:209:8
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 0)
   )
   ;;@ assembly/integer/u256.ts:209:19
   (set_local $1
    (i64.add
     (get_local $1)
     ;;@ assembly/integer/u256.ts:209:28
     (i64.popcnt
      ;;@ assembly/integer/u256.ts:209:35
      (i64.load offset=16
       (get_local $0)
      )
     )
    )
   )
  )
  ;;@ assembly/integer/u256.ts:210:4
  (if
   (i64.ne
    ;;@ assembly/integer/u256.ts:210:8
    (i64.load offset=24
     (get_local $0)
    )
    (i64.const 0)
   )
   ;;@ assembly/integer/u256.ts:210:19
   (set_local $1
    (i64.add
     (get_local $1)
     ;;@ assembly/integer/u256.ts:210:28
     (i64.popcnt
      ;;@ assembly/integer/u256.ts:210:35
      (i64.load offset=24
       (get_local $0)
      )
     )
    )
   )
  )
  ;;@ assembly/integer/u256.ts:211:16
  (i32.wrap/i64
   (get_local $1)
  )
 )
 (func $assembly/integer/u256/u256.clz (; 65 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u256.ts:216:9
  (if (result i32)
   (i64.ne
    ;;@ assembly/integer/u256.ts:216:13
    (i64.load offset=24
     (get_local $0)
    )
    (i64.const 0)
   )
   ;;@ assembly/integer/u256.ts:216:31
   (i32.wrap/i64
    ;;@ assembly/integer/u256.ts:216:37
    (i64.add
     (i64.clz
      ;;@ assembly/integer/u256.ts:216:41
      (i64.load offset=24
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u256.ts:216:54
     (i64.const 0)
    )
   )
   ;;@ assembly/integer/u256.ts:217:9
   (if (result i32)
    (i64.ne
     ;;@ assembly/integer/u256.ts:217:13
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 0)
    )
    ;;@ assembly/integer/u256.ts:217:31
    (i32.wrap/i64
     ;;@ assembly/integer/u256.ts:217:37
     (i64.sub
      (i64.clz
       ;;@ assembly/integer/u256.ts:217:41
       (i64.load offset=16
        (get_local $0)
       )
      )
      ;;@ assembly/integer/u256.ts:217:54
      (i64.const -64)
     )
    )
    ;;@ assembly/integer/u256.ts:218:9
    (if (result i32)
     (i64.ne
      ;;@ assembly/integer/u256.ts:218:13
      (i64.load offset=8
       (get_local $0)
      )
      (i64.const 0)
     )
     ;;@ assembly/integer/u256.ts:218:31
     (i32.wrap/i64
      ;;@ assembly/integer/u256.ts:218:37
      (i64.add
       (i64.clz
        ;;@ assembly/integer/u256.ts:218:41
        (i64.load offset=8
         (get_local $0)
        )
       )
       ;;@ assembly/integer/u256.ts:218:54
       (i64.const 128)
      )
     )
     ;;@ assembly/integer/u256.ts:219:31
     (i32.wrap/i64
      ;;@ assembly/integer/u256.ts:219:37
      (i64.add
       (i64.clz
        ;;@ assembly/integer/u256.ts:219:41
        (i64.load
         (get_local $0)
        )
       )
       ;;@ assembly/integer/u256.ts:219:54
       (i64.const 192)
      )
     )
    )
   )
  )
 )
 (func $assembly/integer/u256/u256.ctz (; 66 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u256.ts:224:9
  (if (result i32)
   (i64.ne
    ;;@ assembly/integer/u256.ts:224:13
    (i64.load
     (get_local $0)
    )
    (i64.const 0)
   )
   ;;@ assembly/integer/u256.ts:224:31
   (i32.wrap/i64
    ;;@ assembly/integer/u256.ts:224:37
    (i64.add
     (i64.ctz
      ;;@ assembly/integer/u256.ts:224:41
      (i64.load
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u256.ts:224:54
     (i64.const 0)
    )
   )
   ;;@ assembly/integer/u256.ts:225:9
   (if (result i32)
    (i64.ne
     ;;@ assembly/integer/u256.ts:225:13
     (i64.load offset=8
      (get_local $0)
     )
     (i64.const 0)
    )
    ;;@ assembly/integer/u256.ts:225:31
    (i32.wrap/i64
     ;;@ assembly/integer/u256.ts:225:37
     (i64.sub
      (i64.ctz
       ;;@ assembly/integer/u256.ts:225:41
       (i64.load offset=8
        (get_local $0)
       )
      )
      ;;@ assembly/integer/u256.ts:225:54
      (i64.const -64)
     )
    )
    ;;@ assembly/integer/u256.ts:226:9
    (if (result i32)
     (i64.ne
      ;;@ assembly/integer/u256.ts:226:13
      (i64.load offset=16
       (get_local $0)
      )
      (i64.const 0)
     )
     ;;@ assembly/integer/u256.ts:226:31
     (i32.wrap/i64
      ;;@ assembly/integer/u256.ts:226:37
      (i64.add
       (i64.ctz
        ;;@ assembly/integer/u256.ts:226:41
        (i64.load offset=16
         (get_local $0)
        )
       )
       ;;@ assembly/integer/u256.ts:226:54
       (i64.const 128)
      )
     )
     ;;@ assembly/integer/u256.ts:227:31
     (i32.wrap/i64
      ;;@ assembly/integer/u256.ts:227:37
      (i64.add
       (i64.ctz
        ;;@ assembly/integer/u256.ts:227:41
        (i64.load offset=24
         (get_local $0)
        )
       )
       ;;@ assembly/integer/u256.ts:227:54
       (i64.const 192)
      )
     )
    )
   )
  )
 )
 (func $assembly/integer/u256/u256#set (; 67 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u256.ts:89:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u256.ts:89:15
   (i64.load
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:90:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:90:15
   (i64.load offset=8
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:91:4
  (i64.store offset=16
   (get_local $0)
   ;;@ assembly/integer/u256.ts:91:15
   (i64.load offset=16
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:92:4
  (i64.store offset=24
   (get_local $0)
   ;;@ assembly/integer/u256.ts:92:15
   (i64.load offset=24
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#setU128 (; 68 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u256.ts:98:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u256.ts:98:15
   (i64.load
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:99:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:99:15
   (i64.load offset=8
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:100:4
  (i64.store offset=16
   (get_local $0)
   ;;@ assembly/integer/u256.ts:100:15
   (i64.const 0)
  )
  ;;@ assembly/integer/u256.ts:101:4
  (i64.store offset=24
   (get_local $0)
   ;;@ assembly/integer/u256.ts:101:15
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#setI64 (; 69 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u256.ts:108:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u256.ts:109:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:107:4
   (tee_local $2
    ;;@ assembly/integer/u256.ts:107:20
    (i64.shr_s
     (get_local $1)
     ;;@ assembly/integer/u256.ts:107:29
     (i64.const 63)
    )
   )
  )
  ;;@ assembly/integer/u256.ts:110:4
  (i64.store offset=16
   (get_local $0)
   (get_local $2)
  )
  ;;@ assembly/integer/u256.ts:111:4
  (i64.store offset=24
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#setU64 (; 70 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  ;;@ assembly/integer/u256.ts:117:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u256.ts:118:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:118:15
   (i64.const 0)
  )
  ;;@ assembly/integer/u256.ts:119:4
  (i64.store offset=16
   (get_local $0)
   ;;@ assembly/integer/u256.ts:119:15
   (i64.const 0)
  )
  ;;@ assembly/integer/u256.ts:120:4
  (i64.store offset=24
   (get_local $0)
   ;;@ assembly/integer/u256.ts:120:15
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#setI32 (; 71 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u256.ts:127:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u256.ts:127:15
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:128:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:126:4
   (tee_local $2
    ;;@ assembly/integer/u256.ts:126:20
    (i64.extend_u/i32
     (i32.shr_s
      (get_local $1)
      ;;@ assembly/integer/u256.ts:126:29
      (i32.const 63)
     )
    )
   )
  )
  ;;@ assembly/integer/u256.ts:129:4
  (i64.store offset=16
   (get_local $0)
   (get_local $2)
  )
  ;;@ assembly/integer/u256.ts:130:4
  (i64.store offset=24
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#setU32 (; 72 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u256.ts:136:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u256.ts:136:15
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:137:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:137:15
   (i64.const 0)
  )
  ;;@ assembly/integer/u256.ts:138:4
  (i64.store offset=16
   (get_local $0)
   ;;@ assembly/integer/u256.ts:138:15
   (i64.const 0)
  )
  ;;@ assembly/integer/u256.ts:139:4
  (i64.store offset=24
   (get_local $0)
   ;;@ assembly/integer/u256.ts:139:15
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#isZero (; 73 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u256.ts:145:54
  (i64.eqz
   ;;@ assembly/integer/u256.ts:145:12
   (i64.or
    ;;@ assembly/integer/u256.ts:145:13
    (i64.or
     (i64.or
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u256.ts:145:24
      (i64.load offset=8
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u256.ts:145:35
     (i64.load offset=16
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u256.ts:145:46
    (i64.load offset=24
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u256/u256#toI128 (; 74 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:237:7
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:238:6
   (i64.or
    (i64.and
     ;;@ assembly/integer/u256.ts:238:7
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u256.ts:238:18
     (i64.const 9223372036854775807)
    )
    ;;@ assembly/integer/u256.ts:239:6
    (i64.and
     ;;@ assembly/integer/u256.ts:239:7
     (i64.load offset=24
      (get_local $0)
     )
     ;;@ assembly/integer/u256.ts:239:18
     (i64.const -9223372036854775808)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256#toI64 (; 75 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  ;;@ assembly/integer/u256.ts:261:4
  (i64.or
   ;;@ assembly/integer/u256.ts:259:6
   (i64.and
    ;;@ assembly/integer/u256.ts:259:7
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:259:18
    (i64.const 9223372036854775807)
   )
   ;;@ assembly/integer/u256.ts:260:6
   (i64.and
    ;;@ assembly/integer/u256.ts:260:7
    (i64.load offset=24
     (get_local $0)
    )
    ;;@ assembly/integer/u256.ts:260:18
    (i64.const -9223372036854775808)
   )
  )
 )
 (func $assembly/integer/u256/u256#toI32 (; 76 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u256.ts:279:27
  (i32.wrap/i64
   ;;@ assembly/integer/u256.ts:261:4
   (i64.or
    ;;@ assembly/integer/u256.ts:259:6
    (i64.and
     ;;@ assembly/integer/u256.ts:259:7
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u256.ts:259:18
     (i64.const 9223372036854775807)
    )
    ;;@ assembly/integer/u256.ts:260:6
    (i64.and
     ;;@ assembly/integer/u256.ts:260:7
     (i64.load offset=24
      (get_local $0)
     )
     ;;@ assembly/integer/u256.ts:260:18
     (i64.const -9223372036854775808)
    )
   )
  )
 )
 (func $assembly/integer/u256/u256#toBool (; 77 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u256.ts:297:59
  (i32.wrap/i64
   ;;@ assembly/integer/u256.ts:297:18
   (i64.or
    (i64.or
     (i64.or
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u256.ts:297:29
      (i64.load offset=8
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u256.ts:297:40
     (i64.load offset=16
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u256.ts:297:51
    (i64.load offset=24
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u256/u256#toBytesLE (; 78 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:306:14
   (i64.load offset=16
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:307:14
   (i64.load offset=24
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:307:30
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:306:30
   (i64.load
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256#toBytesBE (; 79 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u256.ts:327:14
   (i64.load offset=16
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:327:30
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:328:30
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u256.ts:328:14
   (i64.load offset=24
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromString|trampoline (; 80 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/integer/u128.ts:54:48
    (i32.const 0)
   )
  )
  (call $assembly/utils/atou128
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~setargc (; 81 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $assembly/integer/u128/u128.fromBytes|trampoline (; 82 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/integer/u128.ts:131:50
    (i32.const 0)
   )
  )
  (tee_local $0
   (if (result i32)
    (i32.and
     (get_local $1)
     (i32.const 1)
    )
    (call $assembly/integer/u128/u128.fromBytesBE
     (get_local $0)
    )
    (call $assembly/integer/u128/u128.fromBytesLE
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#constructor|trampoline (; 83 ;) (; has Stack IR ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (get_global $~argc)
      )
     )
     (unreachable)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (get_local $0)
    )
   )
   (unreachable)
  )
  (get_local $3)
 )
 (func $u128#set:lo (; 84 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $u128#get:hi (; 85 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $u128#set:hi (; 86 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/integer/u128/u128#toBytes|trampoline (; 87 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/integer/u128.ts:849:28
    (i32.const 0)
   )
  )
  (if
   (i32.and
    (get_local $1)
    (i32.const 1)
   )
   (block
    (drop
     (i64.load
      (get_local $0)
     )
    )
    (drop
     (i64.load offset=8
      (get_local $0)
     )
    )
   )
   (block
    (drop
     (i64.load offset=8
      (get_local $0)
     )
    )
    (drop
     (i64.load
      (get_local $0)
     )
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128#toString|trampoline (; 88 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eqz
     (i64.or
      (i64.load
       (tee_local $2
        (get_local $0)
       )
      )
      (i64.load offset=8
       (get_local $2)
      )
     )
    )
   )
   (block
    (drop
     (i64.load
      (get_local $2)
     )
    )
    (drop
     (i64.load offset=8
      (get_local $2)
     )
    )
    (unreachable)
   )
  )
  (i32.const 904)
 )
 (func $assembly/integer/u256/u256#constructor|trampoline (; 89 ;) (; has Stack IR ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  (block $4of4
   (block $3of4
    (block $2of4
     (block $1of4
      (block $0of4
       (block $outOfRange
        (br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
         (get_global $~argc)
        )
       )
       (unreachable)
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $5
     (get_local $0)
    )
   )
   (unreachable)
  )
  (get_local $5)
 )
 (func $u256#get:hi1 (; 90 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=16
   (get_local $0)
  )
 )
 (func $u256#set:hi1 (; 91 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $u256#get:hi2 (; 92 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=24
   (get_local $0)
  )
 )
 (func $u256#set:hi2 (; 93 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/integer/u256/u256#toBytes|trampoline (; 94 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/integer/u256.ts:301:21
    (i32.const 1)
   )
  )
  (if
   (i32.and
    (get_local $1)
    (i32.const 1)
   )
   (block
    (drop
     (i64.load offset=16
      (get_local $0)
     )
    )
    (drop
     (i64.load offset=24
      (get_local $0)
     )
    )
    (drop
     (i64.load offset=8
      (get_local $0)
     )
    )
    (drop
     (i64.load
      (get_local $0)
     )
    )
   )
   (block
    (drop
     (i64.load offset=16
      (get_local $0)
     )
    )
    (drop
     (i64.load
      (get_local $0)
     )
    )
    (drop
     (i64.load offset=8
      (get_local $0)
     )
    )
    (drop
     (i64.load offset=24
      (get_local $0)
     )
    )
   )
  )
  (unreachable)
 )
)
