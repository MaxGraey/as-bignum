(module
 (type $i (func (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIIIIi (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iF (func (param i32) (result f64)))
 (type $if (func (param i32) (result f32)))
 (type $iiiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (type $iv (func (param i32)))
 (type $iIv (func (param i32 i64)))
 (type $FUNCSIG$vjjjj (func (param i64 i64 i64 i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
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
 (data (i32.const 352) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 384) ",\01")
 (data (i32.const 396) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00\n\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\"\00\00\00#\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00$\00\00\00\n\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\"\00\00\00#")
 (data (i32.const 896) "\80\01\00\00K")
 (data (i32.const 904) "\18\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 960) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 992) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1056) "\'\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 1144) "\01\00\00\000")
 (data (i32.const 1160) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1216) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1232) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1296) "\t\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
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
 (export "u128#toBytesBE" (func $assembly/integer/u128/u128#toBytesBE))
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
 (func $~lib/string/String#charCodeAt (; 2 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/string.ts:71:4
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 352)
     (i32.const 71)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/string.ts:72:4
  (if
   ;;@ ~lib/string.ts:72:8
   (i32.ge_u
    (get_local $1)
    ;;@ ~lib/string.ts:72:20
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/string.ts:72:46
   (return
    ;;@ ~lib/string.ts:72:45
    (i32.const -1)
   )
  )
  ;;@ ~lib/string.ts:77:4
  (i32.load16_u offset=4
   ;;@ ~lib/string.ts:75:6
   (i32.add
    (get_local $0)
    ;;@ ~lib/string.ts:75:32
    (i32.shl
     (get_local $1)
     ;;@ ~lib/string.ts:75:47
     (i32.const 1)
    )
   )
  )
 )
 (func $assembly/globals/__multi3 (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$vjjjj) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  ;;@ assembly/globals.ts:111:2
  (set_local $7
   ;;@ assembly/globals.ts:111:11
   (i64.and
    ;;@ assembly/globals.ts:110:2
    (tee_local $4
     ;;@ assembly/globals.ts:110:11
     (i64.mul
      (tee_local $5
       ;;@ assembly/globals.ts:108:11
       (i64.and
        (get_local $0)
        ;;@ assembly/globals.ts:108:15
        (i64.const 4294967295)
       )
      )
      ;;@ assembly/globals.ts:109:2
      (tee_local $6
       ;;@ assembly/globals.ts:109:11
       (i64.and
        (get_local $2)
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
  (set_local $6
   ;;@ assembly/globals.ts:116:6
   (i64.shr_u
    ;;@ assembly/globals.ts:114:2
    (tee_local $4
     ;;@ assembly/globals.ts:114:6
     (i64.add
      (i64.mul
       ;;@ assembly/globals.ts:113:2
       (tee_local $8
        ;;@ assembly/globals.ts:113:6
        (i64.shr_u
         (get_local $0)
         ;;@ assembly/globals.ts:113:11
         (i64.const 32)
        )
       )
       (get_local $6)
      )
      ;;@ assembly/globals.ts:114:15
      (i64.shr_u
       (get_local $4)
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
    (get_local $7)
    ;;@ assembly/globals.ts:120:17
    (i64.shl
     ;;@ assembly/globals.ts:118:2
     (tee_local $4
      ;;@ assembly/globals.ts:118:6
      (i64.add
       (i64.mul
        (get_local $5)
        ;;@ assembly/globals.ts:117:2
        (tee_local $5
         ;;@ assembly/globals.ts:117:6
         (i64.shr_u
          (get_local $2)
          ;;@ assembly/globals.ts:117:11
          (i64.const 32)
         )
        )
       )
       ;;@ assembly/globals.ts:115:6
       (i64.and
        (get_local $4)
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
        (get_local $8)
        (get_local $5)
       )
       (get_local $6)
      )
      ;;@ assembly/globals.ts:122:12
      (i64.mul
       (get_local $1)
       (get_local $2)
      )
     )
     ;;@ assembly/globals.ts:123:12
     (i64.mul
      (get_local $0)
      (get_local $3)
     )
    )
    ;;@ assembly/globals.ts:124:12
    (i64.shr_u
     (get_local $4)
     ;;@ assembly/globals.ts:124:17
     (i64.const 32)
    )
   )
  )
 )
 (func $assembly/utils/atou128 (; 4 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  ;;@ assembly/utils.ts:164:2
  (set_local $1
   ;;@ assembly/utils.ts:164:18
   (call $~lib/string/String#charCodeAt
    (get_local $0)
    ;;@ assembly/utils.ts:164:29
    (i32.const 0)
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
  (set_local $2
   (get_local $0)
  )
  ;;@ assembly/utils.ts:169:14
  (if
   (i32.eqz
    ;;@ assembly/utils.ts:168:2
    (tee_local $0
     ;;@ assembly/utils.ts:168:14
     (i32.eq
      (get_local $1)
      (i32.const 45)
     )
    )
   )
   (set_local $0
    ;;@ assembly/utils.ts:169:29
    (i32.eq
     (get_local $1)
     (i32.const 43)
    )
   )
  )
  ;;@ assembly/utils.ts:171:2
  (if
   ;;@ assembly/utils.ts:171:6
   (i32.eq
    ;;@ assembly/utils.ts:171:10
    (call $~lib/string/String#charCodeAt
     (get_local $2)
     ;;@ assembly/utils.ts:169:2
     (tee_local $1
      (get_local $0)
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
        ;;@ assembly/utils.ts:172:4
        (tee_local $2
         ;;@ assembly/utils.ts:172:21
         (call $~lib/string/String#charCodeAt
          (get_local $2)
          ;;@ assembly/utils.ts:172:32
          (tee_local $1
           (i32.add
            (get_local $1)
            (i32.const 1)
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
 (func $assembly/integer/u128/u128.fromI256 (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:60:20
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:60:31
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromI64 (; 6 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromF64 (; 7 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:92:20
   (i64.trunc_u/f64
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromF32 (; 8 ;) (; has Stack IR ;) (type $fi) (param $0 f32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:99:20
   (i64.trunc_u/f32
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromI32 (; 9 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromBits (; 10 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.fromBytesBE (; 11 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:154:4
  (if
   ;;@ assembly/integer/u128.ts:154:11
   (i32.ne
    ;;@ ~lib/array.ts:37:16
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:154:27
    (i32.const 16)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 904)
     (i32.const 154)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:156:6
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
           ;;@ assembly/integer/u128.ts:156:35
           (i64.const 56)
          )
          ;;@ assembly/integer/u128.ts:157:6
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
           ;;@ assembly/integer/u128.ts:157:35
           (i64.const 48)
          )
         )
         ;;@ assembly/integer/u128.ts:158:6
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
          ;;@ assembly/integer/u128.ts:158:35
          (i64.const 40)
         )
        )
        ;;@ assembly/integer/u128.ts:159:6
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
         ;;@ assembly/integer/u128.ts:159:35
         (i64.const 32)
        )
       )
       ;;@ assembly/integer/u128.ts:160:6
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
        ;;@ assembly/integer/u128.ts:160:35
        (i64.const 24)
       )
      )
      ;;@ assembly/integer/u128.ts:161:6
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
       ;;@ assembly/integer/u128.ts:161:35
       (i64.const 16)
      )
     )
     ;;@ assembly/integer/u128.ts:162:6
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
      ;;@ assembly/integer/u128.ts:162:36
      (i64.const 8)
     )
    )
    ;;@ assembly/integer/u128.ts:163:6
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
   ;;@ assembly/integer/u128.ts:165:6
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
           ;;@ assembly/integer/u128.ts:165:34
           (i64.const 56)
          )
          ;;@ assembly/integer/u128.ts:166:6
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
           ;;@ assembly/integer/u128.ts:166:34
           (i64.const 48)
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
             (i32.const 2)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:167:34
          (i64.const 40)
         )
        )
        ;;@ assembly/integer/u128.ts:168:6
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
         ;;@ assembly/integer/u128.ts:168:34
         (i64.const 32)
        )
       )
       ;;@ assembly/integer/u128.ts:169:6
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
        ;;@ assembly/integer/u128.ts:169:34
        (i64.const 24)
       )
      )
      ;;@ assembly/integer/u128.ts:170:6
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
       ;;@ assembly/integer/u128.ts:170:34
       (i64.const 16)
      )
     )
     ;;@ assembly/integer/u128.ts:171:6
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
      ;;@ assembly/integer/u128.ts:171:35
      (i64.const 8)
     )
    )
    ;;@ assembly/integer/u128.ts:172:6
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
 (func $assembly/integer/u128/u128.fromBytesLE (; 12 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:131:4
  (if
   ;;@ assembly/integer/u128.ts:131:11
   (i32.ne
    ;;@ ~lib/array.ts:37:16
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:131:27
    (i32.const 16)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 904)
     (i32.const 131)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:133:6
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
          ;;@ assembly/integer/u128.ts:134:6
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
           ;;@ assembly/integer/u128.ts:134:35
           (i64.const 8)
          )
         )
         ;;@ assembly/integer/u128.ts:135:6
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
          ;;@ assembly/integer/u128.ts:135:34
          (i64.const 16)
         )
        )
        ;;@ assembly/integer/u128.ts:136:6
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
         ;;@ assembly/integer/u128.ts:136:34
         (i64.const 24)
        )
       )
       ;;@ assembly/integer/u128.ts:137:6
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
        ;;@ assembly/integer/u128.ts:137:34
        (i64.const 32)
       )
      )
      ;;@ assembly/integer/u128.ts:138:6
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
       ;;@ assembly/integer/u128.ts:138:34
       (i64.const 40)
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
         (i32.const 6)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:139:34
      (i64.const 48)
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
        (i32.const 7)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:140:34
     (i64.const 56)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:142:6
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
          ;;@ assembly/integer/u128.ts:143:6
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
           ;;@ assembly/integer/u128.ts:143:36
           (i64.const 8)
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
             (i32.const 10)
            )
           )
          )
          ;;@ assembly/integer/u128.ts:144:35
          (i64.const 16)
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
            (i32.const 11)
           )
          )
         )
         ;;@ assembly/integer/u128.ts:145:35
         (i64.const 24)
        )
       )
       ;;@ assembly/integer/u128.ts:146:6
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
        ;;@ assembly/integer/u128.ts:146:35
        (i64.const 32)
       )
      )
      ;;@ assembly/integer/u128.ts:147:6
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
       ;;@ assembly/integer/u128.ts:147:35
       (i64.const 40)
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
         (i32.const 14)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:148:35
      (i64.const 48)
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
        (i32.const 15)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:149:35
     (i64.const 56)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.isEmpty (; 13 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ assembly/integer/u128.ts:294:50
  (if
   (i32.eqz
    (tee_local $1
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $1
    ;;@ assembly/integer/u128.ts:294:29
    (i64.eqz
     ;;@ assembly/integer/u128.ts:294:30
     (i64.or
      ;;@ assembly/integer/u128.ts:294:31
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:294:42
      (i64.load offset=8
       (get_local $0)
      )
     )
    )
   )
  )
  (get_local $1)
 )
 (func $assembly/integer/u128/u128.or (; 14 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:299:20
   (i64.or
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:299:27
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:299:33
   (i64.or
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:299:40
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.xor (; 15 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:304:20
   (i64.xor
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
   (i64.xor
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
 (func $assembly/integer/u128/u128.and (; 16 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (drop
   ;;@ assembly/integer/u128.ts:309:20
   (i64.and
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
   (i64.and
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
 (func $assembly/integer/u128/u128.shl (; 17 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:317:4
  (set_local $2
   ;;@ assembly/integer/u128.ts:317:18
   (i64.extend_s/i32
    (i32.and
     (get_local $1)
     ;;@ assembly/integer/u128.ts:314:13
     (i32.const 127)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:325:4
  (drop
   ;;@ assembly/integer/u128.ts:324:13
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:328:12
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.shr (; 18 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:338:4
  (set_local $2
   ;;@ assembly/integer/u128.ts:338:18
   (i64.extend_s/i32
    (i32.and
     (get_local $1)
     ;;@ assembly/integer/u128.ts:335:13
     (i32.const 127)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:346:4
  (drop
   ;;@ assembly/integer/u128.ts:345:13
   (i64.load offset=8
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:349:12
   (i64.load
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.rotl (; 19 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  ;;@ assembly/integer/u128.ts:362:4
  (if
   (i32.eqz
    ;;@ assembly/integer/u128.ts:361:4
    (tee_local $1
     (i32.and
      (get_local $1)
      ;;@ assembly/integer/u128.ts:361:13
      (i32.const 127)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:362:27
   (return
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:366:4
  (set_local $6
   ;;@ assembly/integer/u128.ts:366:15
   (i64.sub
    (i64.shr_u
     ;;@ assembly/integer/u128.ts:366:16
     (i64.and
      ;;@ assembly/integer/u128.ts:366:17
      (i64.or
       ;;@ assembly/integer/u128.ts:366:18
       (i64.add
        ;;@ assembly/integer/u128.ts:364:4
        (tee_local $2
         ;;@ assembly/integer/u128.ts:364:18
         (i64.sub
          ;;@ assembly/integer/u128.ts:364:19
          (i64.const 128)
          (tee_local $4
           (i64.extend_s/i32
            (get_local $1)
           )
          )
         )
        )
        ;;@ assembly/integer/u128.ts:366:29
        (i64.const 127)
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:366:47
      (i64.const 64)
     )
     ;;@ assembly/integer/u128.ts:366:54
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:366:59
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:367:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:367:15
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:367:27
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:367:32
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:376:4
  (drop
   (i64.or
    ;;@ assembly/integer/u128.ts:374:4
    (tee_local $5
     ;;@ assembly/integer/u128.ts:374:14
     (i64.and
      ;;@ assembly/integer/u128.ts:373:4
      (tee_local $8
       ;;@ assembly/integer/u128.ts:373:14
       (i64.shr_u
        ;;@ assembly/integer/u128.ts:372:4
        (tee_local $7
         ;;@ assembly/integer/u128.ts:372:13
         (i64.load offset=8
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:369:4
        (tee_local $2
         (i64.and
          (get_local $2)
          ;;@ assembly/integer/u128.ts:369:15
          (i64.const 63)
         )
        )
       )
      )
      ;;@ assembly/integer/u128.ts:374:20
      (i64.xor
       (get_local $3)
       (i64.const -1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:376:11
    (i64.and
     (i64.or
      ;;@ assembly/integer/u128.ts:376:12
      (i64.shr_u
       ;;@ assembly/integer/u128.ts:371:4
       (tee_local $5
        ;;@ assembly/integer/u128.ts:371:13
        (i64.load
         (get_local $0)
        )
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:376:30
      (i64.and
       ;;@ assembly/integer/u128.ts:376:31
       (i64.shl
        (get_local $7)
        ;;@ assembly/integer/u128.ts:376:38
        (i64.sub
         ;;@ assembly/integer/u128.ts:376:39
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
  ;;@ assembly/integer/u128.ts:379:4
  (set_local $2
   (get_local $4)
  )
  ;;@ assembly/integer/u128.ts:387:4
  (drop
   ;;@ assembly/integer/u128.ts:387:14
   (i64.and
    ;;@ assembly/integer/u128.ts:386:4
    (tee_local $4
     ;;@ assembly/integer/u128.ts:386:14
     (i64.shl
      (get_local $5)
      (i64.and
       (get_local $2)
       ;;@ assembly/integer/u128.ts:384:15
       (i64.const 63)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:387:20
    (i64.xor
     ;;@ assembly/integer/u128.ts:382:4
     (tee_local $3
      ;;@ assembly/integer/u128.ts:382:11
      (i64.sub
       (i64.shr_u
        (get_local $2)
        ;;@ assembly/integer/u128.ts:382:23
        (i64.const 6)
       )
       ;;@ assembly/integer/u128.ts:382:28
       (i64.const 1)
      )
     )
     (i64.const -1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.rotr (; 20 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  ;;@ assembly/integer/u128.ts:398:4
  (if
   (i32.eqz
    ;;@ assembly/integer/u128.ts:397:4
    (tee_local $1
     (i32.and
      (get_local $1)
      ;;@ assembly/integer/u128.ts:397:13
      (i32.const 127)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:398:27
   (return
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:402:4
  (set_local $5
   ;;@ assembly/integer/u128.ts:402:15
   (i64.sub
    (i64.shr_u
     ;;@ assembly/integer/u128.ts:402:16
     (i64.and
      ;;@ assembly/integer/u128.ts:402:17
      (i64.or
       ;;@ assembly/integer/u128.ts:402:18
       (i64.add
        ;;@ assembly/integer/u128.ts:400:4
        (tee_local $2
         ;;@ assembly/integer/u128.ts:400:18
         (i64.sub
          ;;@ assembly/integer/u128.ts:400:19
          (i64.const 128)
          (tee_local $4
           (i64.extend_s/i32
            (get_local $1)
           )
          )
         )
        )
        ;;@ assembly/integer/u128.ts:402:29
        (i64.const 127)
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:402:47
      (i64.const 64)
     )
     ;;@ assembly/integer/u128.ts:402:54
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:402:59
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:403:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:403:15
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:403:27
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:403:32
    (i64.const 1)
   )
  )
  ;;@ assembly/integer/u128.ts:412:4
  (drop
   (i64.or
    ;;@ assembly/integer/u128.ts:410:4
    (tee_local $7
     ;;@ assembly/integer/u128.ts:410:14
     (i64.and
      ;;@ assembly/integer/u128.ts:409:4
      (tee_local $8
       ;;@ assembly/integer/u128.ts:409:14
       (i64.shl
        ;;@ assembly/integer/u128.ts:407:4
        (tee_local $6
         ;;@ assembly/integer/u128.ts:407:13
         (i64.load
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:405:4
        (tee_local $2
         (i64.and
          (get_local $2)
          ;;@ assembly/integer/u128.ts:405:15
          (i64.const 63)
         )
        )
       )
      )
      ;;@ assembly/integer/u128.ts:410:20
      (i64.xor
       (get_local $3)
       (i64.const -1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:412:11
    (i64.and
     (i64.or
      ;;@ assembly/integer/u128.ts:412:12
      (i64.shl
       ;;@ assembly/integer/u128.ts:408:4
       (tee_local $7
        ;;@ assembly/integer/u128.ts:408:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:412:30
      (i64.and
       ;;@ assembly/integer/u128.ts:412:31
       (i64.shr_u
        (get_local $6)
        ;;@ assembly/integer/u128.ts:412:38
        (i64.sub
         ;;@ assembly/integer/u128.ts:412:39
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
  ;;@ assembly/integer/u128.ts:415:4
  (set_local $2
   (get_local $4)
  )
  ;;@ assembly/integer/u128.ts:418:4
  (set_local $3
   ;;@ assembly/integer/u128.ts:418:11
   (i64.sub
    (i64.shr_u
     (get_local $2)
     ;;@ assembly/integer/u128.ts:418:23
     (i64.const 6)
    )
    ;;@ assembly/integer/u128.ts:418:28
    (i64.const 1)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.add (; 21 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:434:4
  (drop
   ;;@ assembly/integer/u128.ts:434:13
   (i64.add
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:433:13
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:435:13
   (i64.add
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:435:20
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.sub (; 22 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:443:4
  (drop
   ;;@ assembly/integer/u128.ts:443:13
   (i64.sub
    ;;@ assembly/integer/u128.ts:442:13
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:443:20
    (i64.load
     (get_local $1)
    )
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:444:13
   (i64.sub
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:444:20
    (i64.load offset=8
     (get_local $1)
    )
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128.mul (; 23 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:452:4
  (call $assembly/globals/__multi3
   ;;@ assembly/integer/u128.ts:452:19
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:452:25
   (i64.load offset=8
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:452:31
   (i64.load
    (get_local $1)
   )
   ;;@ assembly/integer/u128.ts:452:37
   (i64.load offset=8
    (get_local $1)
   )
  )
  (unreachable)
 )
 (func $assembly/globals/__udivmod128 (; 24 ;) (; has Stack IR ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
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
         (i64.extend_s/i32
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
 (func $assembly/integer/u128/u128.div (; 25 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:458:4
  (call $assembly/globals/__udivmod128
   ;;@ assembly/integer/u128.ts:458:17
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:458:23
   (i64.load offset=8
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:458:29
   (i64.load
    (get_local $1)
   )
   ;;@ assembly/integer/u128.ts:458:35
   (i64.load offset=8
    (get_local $1)
   )
  )
  (unreachable)
 )
 (func $assembly/globals/__udivmod128_10 (; 26 ;) (; has Stack IR ;) (type $FUNCSIG$vjj) (param $0 i64) (param $1 i64)
  ;;@ assembly/globals.ts:324:2
  (if
   ;;@ assembly/globals.ts:324:6
   (i64.eqz
    (get_local $1)
   )
   ;;@ assembly/globals.ts:324:11
   (block
    ;;@ assembly/globals.ts:325:4
    (if
     ;;@ assembly/globals.ts:325:8
     (i64.lt_u
      (get_local $0)
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
     (tee_local $1
      ;;@ assembly/globals.ts:331:14
      (i64.div_u
       (get_local $0)
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
      (get_local $0)
      ;;@ assembly/globals.ts:334:28
      (i64.mul
       (get_local $1)
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
 (func $assembly/integer/u128/u128.div10 (; 27 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:470:4
  (call $assembly/globals/__udivmod128_10
   ;;@ assembly/integer/u128.ts:470:32
   (i64.load
    (get_local $0)
   )
   ;;@ assembly/integer/u128.ts:470:42
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128#sqr (; 28 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  ;;@ assembly/integer/u128.ts:668:4
  (set_local $5
   ;;@ assembly/integer/u128.ts:668:13
   (i64.and
    ;;@ assembly/integer/u128.ts:667:4
    (tee_local $3
     ;;@ assembly/integer/u128.ts:667:13
     (i64.mul
      ;;@ assembly/integer/u128.ts:666:4
      (tee_local $1
       ;;@ assembly/integer/u128.ts:666:13
       (i64.and
        (tee_local $2
         ;;@ assembly/integer/u128.ts:663:12
         (i64.load
          (get_local $0)
         )
        )
        ;;@ assembly/integer/u128.ts:666:17
        (i64.const 4294967295)
       )
      )
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:668:17
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/integer/u128.ts:674:4
  (set_local $4
   ;;@ assembly/integer/u128.ts:674:13
   (i64.shr_u
    ;;@ assembly/integer/u128.ts:673:4
    (tee_local $3
     ;;@ assembly/integer/u128.ts:673:8
     (i64.add
      ;;@ assembly/integer/u128.ts:672:4
      (tee_local $1
       ;;@ assembly/integer/u128.ts:672:12
       (i64.mul
        ;;@ assembly/integer/u128.ts:671:4
        (tee_local $2
         (i64.shr_u
          (get_local $2)
          ;;@ assembly/integer/u128.ts:671:10
          (i64.const 32)
         )
        )
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:669:13
      (i64.shr_u
       (get_local $3)
       ;;@ assembly/integer/u128.ts:669:18
       (i64.const 32)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:674:18
    (i64.const 32)
   )
  )
  ;;@ assembly/integer/u128.ts:680:8
  (set_local $1
   (i64.add
    ;;@ assembly/integer/u128.ts:679:14
    (i64.mul
     (get_local $2)
     (get_local $2)
    )
    ;;@ assembly/integer/u128.ts:680:14
    (i64.add
     (get_local $4)
     ;;@ assembly/integer/u128.ts:680:19
     (i64.shr_u
      ;;@ assembly/integer/u128.ts:676:4
      (tee_local $3
       ;;@ assembly/integer/u128.ts:676:8
       (i64.add
        (get_local $1)
        ;;@ assembly/integer/u128.ts:676:12
        (i64.and
         (get_local $3)
         ;;@ assembly/integer/u128.ts:676:17
         (i64.const 4294967295)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:680:25
      (i64.const 32)
     )
    )
   )
  )
  (set_local $4
   ;;@ assembly/integer/u128.ts:664:12
   (i64.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:683:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:678:13
   (i64.add
    (i64.shl
     (get_local $3)
     ;;@ assembly/integer/u128.ts:678:19
     (i64.const 32)
    )
    (get_local $5)
   )
  )
  ;;@ assembly/integer/u128.ts:684:4
  (i64.store offset=8
   (get_local $0)
   (i64.add
    (get_local $1)
    ;;@ assembly/integer/u128.ts:681:14
    (i64.shl
     (i64.mul
      (get_local $2)
      (get_local $4)
     )
     ;;@ assembly/integer/u128.ts:681:23
     (i64.const 1)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128.pow (; 29 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u128/u128.eq (; 30 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/integer/u128.ts:575:37
  (if
   (tee_local $2
    ;;@ assembly/integer/u128.ts:575:11
    (i64.eq
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:575:19
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
   (set_local $2
    ;;@ assembly/integer/u128.ts:575:27
    (i64.eq
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:575:35
     (i64.load
      (get_local $1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $assembly/integer/u128/u128.ne (; 31 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/integer/u128.ts:575:37
  (if
   (tee_local $2
    ;;@ assembly/integer/u128.ts:575:11
    (i64.eq
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:575:19
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
   (set_local $2
    ;;@ assembly/integer/u128.ts:575:27
    (i64.eq
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:575:35
     (i64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/integer/u128.ts:580:24
  (i32.eqz
   (get_local $2)
  )
 )
 (func $assembly/integer/u128/u128.lt (; 32 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (tee_local $0
   ;;@ assembly/integer/u128.ts:586:41
   (if (result i32)
    ;;@ assembly/integer/u128.ts:586:11
    (i64.eq
     (tee_local $2
      ;;@ assembly/integer/u128.ts:585:13
      (i64.load offset=8
       (get_local $0)
      )
     )
     (tee_local $3
      ;;@ assembly/integer/u128.ts:585:24
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:586:22
    (i64.lt_u
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:586:29
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:586:36
    (i64.lt_u
     (get_local $2)
     (get_local $3)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.gt (; 33 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (tee_local $0
   ;;@ assembly/integer/u128.ts:592:41
   (if (result i32)
    ;;@ assembly/integer/u128.ts:592:11
    (i64.eq
     (tee_local $2
      ;;@ assembly/integer/u128.ts:591:13
      (i64.load offset=8
       (get_local $0)
      )
     )
     (tee_local $3
      ;;@ assembly/integer/u128.ts:591:24
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:592:22
    (i64.gt_u
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:592:29
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:592:36
    (i64.gt_u
     (get_local $2)
     (get_local $3)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.le (; 34 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  ;;@ assembly/integer/u128.ts:597:24
  (i32.eqz
   (i32.and
    (tee_local $0
     ;;@ assembly/integer/u128.ts:592:41
     (if (result i32)
      ;;@ assembly/integer/u128.ts:592:11
      (i64.eq
       (tee_local $2
        ;;@ assembly/integer/u128.ts:591:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (tee_local $3
        ;;@ assembly/integer/u128.ts:591:24
        (i64.load offset=8
         (get_local $1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:592:22
      (i64.gt_u
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:592:29
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:592:36
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
 (func $assembly/integer/u128/u128.ge (; 35 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  ;;@ assembly/integer/u128.ts:602:24
  (i32.eqz
   (i32.and
    (tee_local $0
     ;;@ assembly/integer/u128.ts:586:41
     (if (result i32)
      ;;@ assembly/integer/u128.ts:586:11
      (i64.eq
       (tee_local $2
        ;;@ assembly/integer/u128.ts:585:13
        (i64.load offset=8
         (get_local $0)
        )
       )
       (tee_local $3
        ;;@ assembly/integer/u128.ts:585:24
        (i64.load offset=8
         (get_local $1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:586:22
      (i64.lt_u
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:586:29
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:586:36
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
 (func $assembly/integer/u128/u128.cmp (; 36 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u128.ts:610:46
  (i32.wrap/i64
   (select
    ;;@ assembly/integer/u128.ts:608:4
    (tee_local $2
     ;;@ assembly/integer/u128.ts:608:19
     (i64.sub
      (i64.load offset=8
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:608:26
      (i64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:607:19
    (i64.sub
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:607:26
     (i64.load
      (get_local $1)
     )
    )
    ;;@ assembly/integer/u128.ts:610:38
    (i64.ne
     (get_local $2)
     ;;@ assembly/integer/u128.ts:610:45
     (i64.const 0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.popcnt (; 37 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:620:52
  (i32.wrap/i64
   ;;@ assembly/integer/u128.ts:620:17
   (i64.add
    (i64.popcnt
     ;;@ assembly/integer/u128.ts:620:24
     (i64.load
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u128.ts:620:36
    (i64.popcnt
     ;;@ assembly/integer/u128.ts:620:43
     (i64.load offset=8
      (get_local $0)
     )
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.clz (; 38 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
       ;;@ assembly/integer/u128.ts:630:30
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
       ;;@ assembly/integer/u128.ts:630:20
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
 (func $assembly/integer/u128/u128.ctz (; 39 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
       ;;@ assembly/integer/u128.ts:640:30
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
            ;;@ assembly/integer/u128.ts:640:20
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
 (func $assembly/integer/u128/u128#set (; 40 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:218:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:218:14
   (i64.load
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:219:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:219:14
   (i64.load offset=8
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setI64 (; 41 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  ;;@ assembly/integer/u128.ts:225:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u128.ts:226:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:226:14
   (i64.shr_s
    (get_local $1)
    ;;@ assembly/integer/u128.ts:226:23
    (i64.const 63)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setU64 (; 42 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  ;;@ assembly/integer/u128.ts:232:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  ;;@ assembly/integer/u128.ts:233:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:233:14
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setI32 (; 43 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:239:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:239:14
   (i64.extend_s/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:240:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:240:14
   (i64.extend_s/i32
    (i32.shr_s
     (get_local $1)
     ;;@ assembly/integer/u128.ts:240:23
     (i32.const 63)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#setU32 (; 44 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/integer/u128.ts:246:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u128.ts:246:14
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u128.ts:247:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u128.ts:247:14
   (i64.const 0)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#isZero (; 45 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:253:30
  (i64.eqz
   ;;@ assembly/integer/u128.ts:253:12
   (i64.or
    ;;@ assembly/integer/u128.ts:253:13
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:253:23
    (i64.load offset=8
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#pos (; 46 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#preInc (; 47 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u128.ts:276:4
  (i64.store offset=8
   (get_local $0)
   (i64.add
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:276:15
    (i64.shr_u
     (i64.and
      ;;@ assembly/integer/u128.ts:276:16
      (i64.xor
       ;;@ assembly/integer/u128.ts:276:17
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:275:4
       (tee_local $1
        ;;@ assembly/integer/u128.ts:275:15
        (i64.add
         (i64.load
          (get_local $0)
         )
         ;;@ assembly/integer/u128.ts:275:25
         (i64.const 1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:276:34
      (i64.load
       (get_local $0)
      )
     )
     ;;@ assembly/integer/u128.ts:276:46
     (i64.const 63)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:277:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#preDec (; 48 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u128.ts:284:4
  (i64.store offset=8
   (get_local $0)
   (i64.sub
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:284:15
    (i64.shr_u
     (i64.and
      ;;@ assembly/integer/u128.ts:284:16
      (i64.xor
       ;;@ assembly/integer/u128.ts:284:17
       (i64.load
        (get_local $0)
       )
       ;;@ assembly/integer/u128.ts:283:4
       (tee_local $1
        ;;@ assembly/integer/u128.ts:283:15
        (i64.sub
         (i64.load
          (get_local $0)
         )
         ;;@ assembly/integer/u128.ts:283:25
         (i64.const 1)
        )
       )
      )
      (get_local $1)
     )
     ;;@ assembly/integer/u128.ts:284:42
     (i64.const 63)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:285:4
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#toI64 (; 49 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  ;;@ assembly/integer/u128.ts:734:4
  (i64.or
   ;;@ assembly/integer/u128.ts:732:6
   (i64.and
    ;;@ assembly/integer/u128.ts:732:7
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:732:17
    (i64.const 9223372036854775807)
   )
   ;;@ assembly/integer/u128.ts:733:6
   (i64.and
    ;;@ assembly/integer/u128.ts:733:7
    (i64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:733:17
    (i64.const -9223372036854775808)
   )
  )
 )
 (func $assembly/integer/u128/u128#toU64 (; 50 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  ;;@ assembly/integer/u128.ts:743:16
  (i64.load
   (get_local $0)
  )
 )
 (func $assembly/integer/u128/u128#toI32 (; 51 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:752:27
  (i32.wrap/i64
   ;;@ assembly/integer/u128.ts:734:4
   (i64.or
    ;;@ assembly/integer/u128.ts:732:6
    (i64.and
     ;;@ assembly/integer/u128.ts:732:7
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:732:17
     (i64.const 9223372036854775807)
    )
    ;;@ assembly/integer/u128.ts:733:6
    (i64.and
     ;;@ assembly/integer/u128.ts:733:7
     (i64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:733:17
     (i64.const -9223372036854775808)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#toU32 (; 52 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:761:21
  (i32.wrap/i64
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $assembly/integer/u128/u128#toBool (; 53 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/integer/u128.ts:770:34
  (i64.ne
   ;;@ assembly/integer/u128.ts:770:11
   (i64.or
    ;;@ assembly/integer/u128.ts:770:12
    (i64.load
     (get_local $0)
    )
    ;;@ assembly/integer/u128.ts:770:22
    (i64.load offset=8
     (get_local $0)
    )
   )
   ;;@ assembly/integer/u128.ts:770:34
   (i64.const 0)
  )
 )
 (func $assembly/integer/u128/u128#toF64 (; 54 ;) (; has Stack IR ;) (type $iF) (param $0 i32) (result f64)
  (if
   (i32.eqz
    (i64.eqz
     (i64.or
      ;;@ assembly/integer/u128.ts:779:25
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:779:34
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
 (func $assembly/integer/u128/u128#toF64Unsafe (; 55 ;) (; has Stack IR ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i64)
  (local $2 i64)
  (set_local $1
   ;;@ assembly/integer/u128.ts:786:13
   (i64.load
    (get_local $0)
   )
  )
  ;;@ assembly/integer/u128.ts:788:4
  (if
   ;;@ assembly/integer/u128.ts:788:8
   (i64.ge_u
    (tee_local $2
     ;;@ assembly/integer/u128.ts:786:27
     (i64.load offset=8
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u128.ts:788:14
    (i64.const 0)
   )
   ;;@ assembly/integer/u128.ts:789:36
   (return
    ;;@ assembly/integer/u128.ts:789:13
    (f64.add
     (f64.mul
      (f64.convert_u/i64
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:789:23
      (f64.const 18446744073709551615)
     )
     ;;@ assembly/integer/u128.ts:789:31
     (f64.convert_u/i64
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/integer/u128.ts:798:38
  (f64.neg
   ;;@ assembly/integer/u128.ts:798:12
   (f64.add
    ;;@ assembly/integer/u128.ts:798:13
    (f64.mul
     (f64.convert_s/i64
      (i64.add
       ;;@ assembly/integer/u128.ts:791:18
       (i64.xor
        (get_local $2)
        (i64.const -1)
       )
       ;;@ assembly/integer/u128.ts:794:13
       (i64.shr_u
        (i64.add
         ;;@ assembly/integer/u128.ts:794:14
         (i64.and
          ;;@ assembly/integer/u128.ts:792:4
          (tee_local $1
           ;;@ assembly/integer/u128.ts:792:18
           (i64.xor
            (get_local $1)
            (i64.const -1)
           )
          )
          ;;@ assembly/integer/u128.ts:794:20
          (i64.const 1)
         )
         ;;@ assembly/integer/u128.ts:794:25
         (i64.shr_u
          (get_local $1)
          ;;@ assembly/integer/u128.ts:794:32
          (i64.const 1)
         )
        )
        ;;@ assembly/integer/u128.ts:794:39
        (i64.const 63)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:798:23
     (f64.const 18446744073709551615)
    )
    ;;@ assembly/integer/u128.ts:798:31
    (f64.convert_u/i64
     (i64.add
      (get_local $1)
      ;;@ assembly/integer/u128.ts:795:10
      (i64.const 1)
     )
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#toF32 (; 56 ;) (; has Stack IR ;) (type $if) (param $0 i32) (result f32)
  (if
   (i32.eqz
    (i64.eqz
     (i64.or
      ;;@ assembly/integer/u128.ts:779:25
      (i64.load
       (get_local $0)
      )
      ;;@ assembly/integer/u128.ts:779:34
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 57 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (if
   ;;@ ~lib/internal/arraybuffer.ts:23:9
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 992)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/memory.ts:43:30
  (unreachable)
 )
 (func $~lib/array/Array<u8>#constructor (; 58 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  ;;@ ~lib/array.ts:23:4
  (if
   ;;@ ~lib/array.ts:23:8
   (i32.gt_u
    (get_local $0)
    ;;@ ~lib/array.ts:23:22
    (i32.const 1073741816)
   )
   ;;@ ~lib/array.ts:23:39
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 960)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (drop
   ;;@ ~lib/array.ts:25:17
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u128/u128#toBytesBE (; 59 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (set_local $1
   ;;@ assembly/integer/u128.ts:871:27
   (i64.load
    (get_local $0)
   )
  )
  (set_local $2
   ;;@ assembly/integer/u128.ts:871:13
   (i64.load offset=8
    (get_local $0)
   )
  )
  (i64.store8 offset=8
   (i32.load
    (tee_local $0
     (call $~lib/array/Array<u8>#constructor
      (i32.const 16)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:874:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:874:17
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
   ;;@ assembly/integer/u128.ts:874:27
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:874:33
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 2)
   )
   ;;@ assembly/integer/u128.ts:874:43
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:874:49
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 3)
   )
   ;;@ assembly/integer/u128.ts:874:59
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:874:65
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 4)
   )
   ;;@ assembly/integer/u128.ts:875:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:875:17
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 5)
   )
   ;;@ assembly/integer/u128.ts:875:27
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:875:33
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 6)
   )
   ;;@ assembly/integer/u128.ts:875:43
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:875:50
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 7)
   )
   (get_local $2)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 8)
   )
   ;;@ assembly/integer/u128.ts:877:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:877:17
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 9)
   )
   ;;@ assembly/integer/u128.ts:877:27
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:877:33
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 10)
   )
   ;;@ assembly/integer/u128.ts:877:43
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:877:49
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 11)
   )
   ;;@ assembly/integer/u128.ts:877:59
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:877:65
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 12)
   )
   ;;@ assembly/integer/u128.ts:878:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:878:17
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 13)
   )
   ;;@ assembly/integer/u128.ts:878:27
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:878:33
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 14)
   )
   ;;@ assembly/integer/u128.ts:878:43
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:878:50
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 15)
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#toBytesLE (; 60 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (set_local $1
   ;;@ assembly/integer/u128.ts:853:13
   (i64.load offset=8
    (get_local $0)
   )
  )
  (set_local $2
   ;;@ assembly/integer/u128.ts:853:27
   (i64.load
    (get_local $0)
   )
  )
  (i64.store8 offset=8
   (i32.load
    (tee_local $0
     (call $~lib/array/Array<u8>#constructor
      (i32.const 16)
     )
    )
   )
   (get_local $2)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
   ;;@ assembly/integer/u128.ts:856:27
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:856:34
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 2)
   )
   ;;@ assembly/integer/u128.ts:856:43
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:856:49
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 3)
   )
   ;;@ assembly/integer/u128.ts:856:59
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:856:65
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 4)
   )
   ;;@ assembly/integer/u128.ts:857:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:857:17
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 5)
   )
   ;;@ assembly/integer/u128.ts:857:27
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:857:33
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 6)
   )
   ;;@ assembly/integer/u128.ts:857:43
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:857:49
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 7)
   )
   ;;@ assembly/integer/u128.ts:857:59
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u128.ts:857:65
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 8)
   )
   (get_local $1)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 9)
   )
   ;;@ assembly/integer/u128.ts:859:27
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:859:34
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 10)
   )
   ;;@ assembly/integer/u128.ts:859:43
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:859:49
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 11)
   )
   ;;@ assembly/integer/u128.ts:859:59
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:859:65
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 12)
   )
   ;;@ assembly/integer/u128.ts:860:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:860:17
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 13)
   )
   ;;@ assembly/integer/u128.ts:860:27
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:860:33
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 14)
   )
   ;;@ assembly/integer/u128.ts:860:43
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:860:49
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 15)
   )
   ;;@ assembly/integer/u128.ts:860:59
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u128.ts:860:65
    (i64.const 56)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u128/u128#toString (; 61 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ assembly/integer/u128.ts:895:4
  (if
   ;;@ assembly/integer/u128.ts:895:8
   (i32.eqz
    (get_local $1)
   )
   ;;@ assembly/integer/u128.ts:895:16
   (set_local $1
    ;;@ assembly/integer/u128.ts:895:24
    (i32.const 10)
   )
  )
  ;;@ assembly/integer/u128.ts:896:11
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $1)
      ;;@ assembly/integer/u128.ts:896:20
      (i32.const 10)
     )
    )
   )
   (set_local $2
    ;;@ assembly/integer/u128.ts:896:26
    (i32.eq
     (get_local $1)
     ;;@ assembly/integer/u128.ts:896:35
     (i32.const 16)
    )
   )
  )
  ;;@ assembly/integer/u128.ts:896:4
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (call $~lib/env/abort
     ;;@ assembly/integer/u128.ts:896:39
     (i32.const 1056)
     (i32.const 904)
     (i32.const 896)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ assembly/integer/u128.ts:898:4
  (if
   ;;@ assembly/integer/u128.ts:253:30
   (i64.eqz
    ;;@ assembly/integer/u128.ts:253:12
    (i64.or
     ;;@ assembly/integer/u128.ts:253:13
     (i64.load
      (get_local $0)
     )
     ;;@ assembly/integer/u128.ts:253:23
     (i64.load offset=8
      (get_local $0)
     )
    )
   )
   ;;@ assembly/integer/u128.ts:898:30
   (return
    (i32.const 1144)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:890:20
   (i64.load
    (get_local $0)
   )
  )
  (drop
   ;;@ assembly/integer/u128.ts:890:29
   (i64.load offset=8
    (get_local $0)
   )
  )
  (unreachable)
 )
 (func $assembly/integer/u256/u256.fromU256 (; 62 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256.fromBits (; 63 ;) (; has Stack IR ;) (type $iiiiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  (unreachable)
 )
 (func $assembly/integer/u256/u256.isEmpty (; 64 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256.add (; 65 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256.or (; 66 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256.xor (; 67 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256.and (; 68 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256.popcnt (; 69 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256.clz (; 70 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256.ctz (; 71 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#set (; 72 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#setU128 (; 73 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#setI64 (; 74 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $assembly/integer/u256/u256#setU64 (; 75 ;) (; has Stack IR ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
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
 (func $assembly/integer/u256/u256#setI32 (; 76 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  ;;@ assembly/integer/u256.ts:127:4
  (i64.store
   (get_local $0)
   ;;@ assembly/integer/u256.ts:127:15
   (i64.extend_s/i32
    (get_local $1)
   )
  )
  ;;@ assembly/integer/u256.ts:128:4
  (i64.store offset=8
   (get_local $0)
   ;;@ assembly/integer/u256.ts:126:4
   (tee_local $2
    ;;@ assembly/integer/u256.ts:126:20
    (i64.extend_s/i32
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
 (func $assembly/integer/u256/u256#setU32 (; 77 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#isZero (; 78 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toI128 (; 79 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toI64 (; 80 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
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
 (func $assembly/integer/u256/u256#toI32 (; 81 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toBool (; 82 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toBytesLE (; 83 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (set_local $1
   ;;@ assembly/integer/u256.ts:306:14
   (i64.load offset=16
    (get_local $0)
   )
  )
  (set_local $2
   ;;@ assembly/integer/u256.ts:307:14
   (i64.load offset=24
    (get_local $0)
   )
  )
  (set_local $3
   ;;@ assembly/integer/u256.ts:307:30
   (i64.load offset=8
    (get_local $0)
   )
  )
  (set_local $4
   ;;@ assembly/integer/u256.ts:306:30
   (i64.load
    (get_local $0)
   )
  )
  (i64.store8 offset=8
   (i32.load
    (tee_local $0
     (call $~lib/array/Array<u8>#constructor
      (i32.const 32)
     )
    )
   )
   (get_local $4)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
   ;;@ assembly/integer/u256.ts:310:28
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:310:36
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 2)
   )
   ;;@ assembly/integer/u256.ts:310:45
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:310:52
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 3)
   )
   ;;@ assembly/integer/u256.ts:310:62
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:310:69
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 4)
   )
   ;;@ assembly/integer/u256.ts:311:11
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:311:18
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 5)
   )
   ;;@ assembly/integer/u256.ts:311:28
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:311:35
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 6)
   )
   ;;@ assembly/integer/u256.ts:311:45
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:311:52
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 7)
   )
   ;;@ assembly/integer/u256.ts:311:62
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:311:69
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 8)
   )
   (get_local $3)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 9)
   )
   ;;@ assembly/integer/u256.ts:313:28
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:313:36
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 10)
   )
   ;;@ assembly/integer/u256.ts:313:45
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:313:52
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 11)
   )
   ;;@ assembly/integer/u256.ts:313:62
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:313:69
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 12)
   )
   ;;@ assembly/integer/u256.ts:314:11
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:314:18
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 13)
   )
   ;;@ assembly/integer/u256.ts:314:28
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:314:35
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 14)
   )
   ;;@ assembly/integer/u256.ts:314:45
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:314:52
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 15)
   )
   ;;@ assembly/integer/u256.ts:314:62
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:314:69
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 16)
   )
   (get_local $1)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 17)
   )
   ;;@ assembly/integer/u256.ts:316:28
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:316:36
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 18)
   )
   ;;@ assembly/integer/u256.ts:316:45
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:316:52
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 19)
   )
   ;;@ assembly/integer/u256.ts:316:62
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:316:69
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 20)
   )
   ;;@ assembly/integer/u256.ts:317:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:317:18
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 21)
   )
   ;;@ assembly/integer/u256.ts:317:28
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:317:35
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 22)
   )
   ;;@ assembly/integer/u256.ts:317:45
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:317:52
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 23)
   )
   ;;@ assembly/integer/u256.ts:317:62
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:317:69
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 24)
   )
   (get_local $2)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 25)
   )
   ;;@ assembly/integer/u256.ts:319:28
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:319:36
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 26)
   )
   ;;@ assembly/integer/u256.ts:319:45
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:319:52
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 27)
   )
   ;;@ assembly/integer/u256.ts:319:62
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:319:69
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 28)
   )
   ;;@ assembly/integer/u256.ts:320:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:320:18
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 29)
   )
   ;;@ assembly/integer/u256.ts:320:28
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:320:35
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 30)
   )
   ;;@ assembly/integer/u256.ts:320:45
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:320:52
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 31)
   )
   ;;@ assembly/integer/u256.ts:320:62
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:320:69
    (i64.const 56)
   )
  )
  (get_local $0)
 )
 (func $assembly/integer/u256/u256#toBytesBE (; 84 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (set_local $1
   ;;@ assembly/integer/u256.ts:327:14
   (i64.load offset=16
    (get_local $0)
   )
  )
  (set_local $2
   ;;@ assembly/integer/u256.ts:327:30
   (i64.load
    (get_local $0)
   )
  )
  (set_local $3
   ;;@ assembly/integer/u256.ts:328:30
   (i64.load offset=8
    (get_local $0)
   )
  )
  (set_local $4
   ;;@ assembly/integer/u256.ts:328:14
   (i64.load offset=24
    (get_local $0)
   )
  )
  (i64.store8 offset=8
   (i32.load
    (tee_local $0
     (call $~lib/array/Array<u8>#constructor
      (i32.const 32)
     )
    )
   )
   ;;@ assembly/integer/u256.ts:331:11
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:331:18
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
   ;;@ assembly/integer/u256.ts:331:28
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:331:35
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 2)
   )
   ;;@ assembly/integer/u256.ts:331:45
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:331:52
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 3)
   )
   ;;@ assembly/integer/u256.ts:331:62
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:331:69
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 4)
   )
   ;;@ assembly/integer/u256.ts:332:11
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:332:18
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 5)
   )
   ;;@ assembly/integer/u256.ts:332:28
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:332:35
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 6)
   )
   ;;@ assembly/integer/u256.ts:332:45
   (i64.shr_u
    (get_local $4)
    ;;@ assembly/integer/u256.ts:332:53
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 7)
   )
   (get_local $4)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 8)
   )
   ;;@ assembly/integer/u256.ts:334:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:334:18
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 9)
   )
   ;;@ assembly/integer/u256.ts:334:28
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:334:35
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 10)
   )
   ;;@ assembly/integer/u256.ts:334:45
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:334:52
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 11)
   )
   ;;@ assembly/integer/u256.ts:334:62
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:334:69
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 12)
   )
   ;;@ assembly/integer/u256.ts:335:11
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:335:18
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 13)
   )
   ;;@ assembly/integer/u256.ts:335:28
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:335:35
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 14)
   )
   ;;@ assembly/integer/u256.ts:335:45
   (i64.shr_u
    (get_local $1)
    ;;@ assembly/integer/u256.ts:335:53
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 15)
   )
   (get_local $1)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 16)
   )
   ;;@ assembly/integer/u256.ts:337:11
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:337:18
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 17)
   )
   ;;@ assembly/integer/u256.ts:337:28
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:337:35
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 18)
   )
   ;;@ assembly/integer/u256.ts:337:45
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:337:52
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 19)
   )
   ;;@ assembly/integer/u256.ts:337:62
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:337:69
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 20)
   )
   ;;@ assembly/integer/u256.ts:338:11
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:338:18
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 21)
   )
   ;;@ assembly/integer/u256.ts:338:28
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:338:35
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 22)
   )
   ;;@ assembly/integer/u256.ts:338:45
   (i64.shr_u
    (get_local $3)
    ;;@ assembly/integer/u256.ts:338:53
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 23)
   )
   (get_local $3)
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 24)
   )
   ;;@ assembly/integer/u256.ts:340:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:340:18
    (i64.const 56)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 25)
   )
   ;;@ assembly/integer/u256.ts:340:28
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:340:35
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 26)
   )
   ;;@ assembly/integer/u256.ts:340:45
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:340:52
    (i64.const 40)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 27)
   )
   ;;@ assembly/integer/u256.ts:340:62
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:340:69
    (i64.const 32)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 28)
   )
   ;;@ assembly/integer/u256.ts:341:11
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:341:18
    (i64.const 24)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 29)
   )
   ;;@ assembly/integer/u256.ts:341:28
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:341:35
    (i64.const 16)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 30)
   )
   ;;@ assembly/integer/u256.ts:341:45
   (i64.shr_u
    (get_local $2)
    ;;@ assembly/integer/u256.ts:341:53
    (i64.const 8)
   )
  )
  (i64.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 31)
   )
   (get_local $2)
  )
  (get_local $0)
 )
 (func $null (; 85 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
 (func $assembly/integer/u128/u128.fromString|trampoline (; 86 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~setargc (; 87 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $assembly/integer/u128/u128.fromBytes|trampoline (; 88 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    ;;@ assembly/integer/u128.ts:126:50
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
 (func $assembly/integer/u128/u128#constructor|trampoline (; 89 ;) (; has Stack IR ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $u128#set:lo (; 90 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $u128#get:hi (; 91 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=8
   (get_local $0)
  )
 )
 (func $u128#set:hi (; 92 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/integer/u128/u128#toBytes|trampoline (; 93 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    ;;@ assembly/integer/u128.ts:844:28
    (i32.const 0)
   )
  )
  (tee_local $0
   (if (result i32)
    (i32.and
     (get_local $1)
     (i32.const 1)
    )
    (call $assembly/integer/u128/u128#toBytesBE
     (get_local $0)
    )
    (call $assembly/integer/u128/u128#toBytesLE
     (get_local $0)
    )
   )
  )
 )
 (func $assembly/integer/u128/u128#toString|trampoline (; 94 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    ;;@ assembly/integer/u128.ts:894:24
    (i32.const 0)
   )
  )
  (call $assembly/integer/u128/u128#toString
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/integer/u256/u256#constructor|trampoline (; 95 ;) (; has Stack IR ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
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
 (func $u256#get:hi1 (; 96 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=16
   (get_local $0)
  )
 )
 (func $u256#set:hi1 (; 97 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $u256#get:hi2 (; 98 ;) (; has Stack IR ;) (type $iI) (param $0 i32) (result i64)
  (i64.load offset=24
   (get_local $0)
  )
 )
 (func $u256#set:hi2 (; 99 ;) (; has Stack IR ;) (type $iIv) (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/integer/u256/u256#toBytes|trampoline (; 100 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (tee_local $0
   (if (result i32)
    (i32.and
     (get_local $1)
     (i32.const 1)
    )
    (call $assembly/integer/u256/u256#toBytesLE
     (get_local $0)
    )
    (call $assembly/integer/u256/u256#toBytesBE
     (get_local $0)
    )
   )
  )
 )
)
