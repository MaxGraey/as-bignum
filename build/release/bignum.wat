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
 (type $II (func (param i64) (result i64)))
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
 (data (i32.const 960) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (data (i32.const 1000) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1032) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1096) "\'\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 1184) "\01\00\00\000")
 (data (i32.const 1200) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1256) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1272) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1336) "\t\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
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
 (export "u128.sqrt" (func $assembly/integer/u128/u128.fromI32))
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
 (export "u128#postInc" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#postDec" (func $assembly/integer/u128/u128.fromI256))
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
 (func $assembly/integer/u128/u128.get:Zero (; 1 ;) (type $i) (result i32)
  unreachable
 )
 (func $~lib/string/String#charCodeAt (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 75
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const -1
   return
  end
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
 )
 (func $assembly/globals/__multi3 (; 3 ;) (type $FUNCSIG$vjjjj) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  get_local $0
  i64.const 4294967295
  i64.and
  tee_local $5
  get_local $2
  i64.const 4294967295
  i64.and
  tee_local $6
  i64.mul
  tee_local $4
  i64.const 4294967295
  i64.and
  set_local $7
  get_local $0
  i64.const 32
  i64.shr_u
  tee_local $8
  get_local $6
  i64.mul
  get_local $4
  i64.const 32
  i64.shr_u
  i64.add
  tee_local $4
  i64.const 32
  i64.shr_u
  set_local $6
  get_local $7
  get_local $5
  get_local $2
  i64.const 32
  i64.shr_u
  tee_local $5
  i64.mul
  get_local $4
  i64.const 4294967295
  i64.and
  i64.add
  tee_local $4
  i64.const 32
  i64.shl
  i64.add
  set_global $assembly/globals/__res128_lo
  get_local $8
  get_local $5
  i64.mul
  get_local $6
  i64.add
  get_local $1
  get_local $2
  i64.mul
  i64.add
  get_local $0
  get_local $3
  i64.mul
  i64.add
  get_local $4
  i64.const 32
  i64.shr_u
  i64.add
  set_global $assembly/globals/__res128_hi
 )
 (func $assembly/utils/atou128 (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   i32.const 10
   set_local $1
  end
  get_local $1
  i32.const 2
  i32.lt_s
  tee_local $2
  i32.eqz
  if
   get_local $1
   i32.const 36
   i32.gt_s
   set_local $2
  end
  get_local $2
  if
   i32.const 0
   i32.const 312
   i32.const 159
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  tee_local $2
  i32.eqz
  if
   unreachable
  end
  get_local $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  set_local $1
  get_local $2
  i32.const 1
  i32.eq
  tee_local $2
  if
   get_local $1
   i32.const 48
   i32.eq
   set_local $2
  end
  get_local $2
  if
   unreachable
  end
  get_local $0
  set_local $2
  get_local $1
  i32.const 45
  i32.eq
  tee_local $0
  i32.eqz
  if
   get_local $1
   i32.const 43
   i32.eq
   set_local $0
  end
  get_local $2
  get_local $0
  tee_local $1
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   get_local $2
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   call $~lib/string/String#charCodeAt
   tee_local $2
   i32.const 120
   i32.eq
   tee_local $0
   i32.eqz
   if
    get_local $2
    i32.const 88
    i32.eq
    set_local $0
   end
   get_local $0
   i32.eqz
   if
    get_local $2
    i32.const 111
    i32.eq
    tee_local $0
    i32.eqz
    if
     get_local $2
     i32.const 79
     i32.eq
     set_local $0
    end
    get_local $0
    i32.eqz
    if
     get_local $2
     i32.const 98
     i32.eq
     tee_local $0
     i32.eqz
     if
      get_local $2
      i32.const 66
      i32.eq
      set_local $0
     end
    end
   end
  end
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI256 (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  drop
  get_local $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI64 (; 6 ;) (type $Ii) (param $0 i64) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.fromF64 (; 7 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  i64.trunc_u/f64
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromF32 (; 8 ;) (type $fi) (param $0 f32) (result i32)
  get_local $0
  i64.trunc_u/f32
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI32 (; 9 ;) (type $ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.fromBits (; 10 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  unreachable
 )
 (func $~lib/polyfills/bswap<u64> (; 11 ;) (type $II) (param $0 i64) (result i64)
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  tee_local $0
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  get_local $0
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $assembly/integer/u128/u128.fromBytesBE (; 12 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 904
   i32.const 142
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  tee_local $0
  i32.const 8
  i32.add
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  drop
  get_local $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromBytesLE (; 13 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 904
   i32.const 133
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  tee_local $0
  i64.load offset=8
  drop
  get_local $0
  i32.const 8
  i32.add
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.isEmpty (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.eqz
  tee_local $1
  i32.eqz
  if
   get_local $0
   i64.load
   get_local $0
   i64.load offset=8
   i64.or
   i64.eqz
   set_local $1
  end
  get_local $1
 )
 (func $assembly/integer/u128/u128.or (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.or
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.xor (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.xor
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.xor
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.and (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.and
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.shl (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  get_local $1
  i32.const 127
  i32.and
  i64.extend_s/i32
  set_local $2
  get_local $0
  i64.load
  drop
  get_local $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.shr (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  get_local $1
  i32.const 127
  i32.and
  i64.extend_s/i32
  set_local $2
  get_local $0
  i64.load offset=8
  drop
  get_local $0
  i64.load
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.rotl (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  get_local $1
  i32.const 127
  i32.and
  tee_local $1
  i32.eqz
  if
   get_local $0
   return
  end
  i64.const 128
  get_local $1
  i64.extend_s/i32
  tee_local $4
  i64.sub
  tee_local $2
  i64.const 127
  i64.add
  get_local $2
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  set_local $6
  get_local $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  set_local $3
  get_local $0
  i64.load offset=8
  tee_local $7
  get_local $2
  i64.const 63
  i64.and
  tee_local $2
  i64.shr_u
  tee_local $8
  get_local $3
  i64.const -1
  i64.xor
  i64.and
  tee_local $5
  get_local $0
  i64.load
  tee_local $5
  get_local $2
  i64.shr_u
  get_local $7
  i64.const 64
  get_local $2
  i64.sub
  i64.shl
  get_local $6
  i64.and
  i64.or
  get_local $3
  i64.and
  i64.or
  drop
  get_local $4
  set_local $2
  get_local $5
  get_local $2
  i64.const 63
  i64.and
  i64.shl
  tee_local $4
  get_local $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  tee_local $3
  i64.const -1
  i64.xor
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.rotr (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  get_local $1
  i32.const 127
  i32.and
  tee_local $1
  i32.eqz
  if
   get_local $0
   return
  end
  i64.const 128
  get_local $1
  i64.extend_s/i32
  tee_local $4
  i64.sub
  tee_local $2
  i64.const 127
  i64.add
  get_local $2
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  set_local $5
  get_local $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  set_local $3
  get_local $0
  i64.load
  tee_local $6
  get_local $2
  i64.const 63
  i64.and
  tee_local $2
  i64.shl
  tee_local $8
  get_local $3
  i64.const -1
  i64.xor
  i64.and
  tee_local $7
  get_local $0
  i64.load offset=8
  tee_local $7
  get_local $2
  i64.shl
  get_local $6
  i64.const 64
  get_local $2
  i64.sub
  i64.shr_u
  get_local $5
  i64.and
  i64.or
  get_local $3
  i64.and
  i64.or
  drop
  get_local $4
  set_local $2
  get_local $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  set_local $3
  unreachable
 )
 (func $assembly/integer/u128/u128.add (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.add
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.add
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.sub (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.sub
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.sub
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.mul (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load
  get_local $1
  i64.load offset=8
  call $assembly/globals/__multi3
  unreachable
 )
 (func $assembly/globals/__udivmod128 (; 25 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  block $folding-inner0
   get_local $3
   get_local $3
   get_local $3
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   tee_local $4
   i64.const -1
   i64.xor
   i64.and
   get_local $2
   get_local $4
   i64.and
   i64.or
   i64.clz
   i32.wrap/i64
   get_local $4
   i32.wrap/i64
   i32.const 64
   i32.and
   i32.add
   tee_local $6
   i32.const 128
   i32.eq
   if
    unreachable
   end
   get_local $3
   get_local $2
   get_local $2
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   tee_local $4
   i64.and
   get_local $2
   get_local $4
   i64.const -1
   i64.xor
   i64.and
   i64.or
   i64.ctz
   i32.wrap/i64
   get_local $4
   i32.wrap/i64
   i32.const 64
   i32.and
   i32.add
   set_local $5
   get_local $0
   get_local $1
   i64.or
   i64.eqz
   br_if $folding-inner0
   get_local $6
   i32.const 127
   i32.eq
   if
    get_local $0
    set_global $assembly/globals/__divmod_quot_lo
    get_local $1
    set_global $assembly/globals/__divmod_quot_hi
    i64.const 0
    set_global $assembly/globals/__divmod_rem
    return
   end
   get_local $5
   get_local $6
   i32.add
   i32.const 127
   i32.eq
   if
    return
   end
   get_local $1
   get_local $3
   i64.or
   i64.eqz
   if
    i64.const 0
    set_global $assembly/globals/__divmod_quot_hi
    get_local $2
    get_local $2
    i64.const 1
    i64.sub
    i64.and
    i64.eqz
    if
     get_local $0
     get_local $5
     i64.extend_s/i32
     i64.shr_u
     set_global $assembly/globals/__divmod_quot_lo
     i64.const 0
     set_global $assembly/globals/__divmod_rem
    else     
     get_local $0
     get_local $2
     i64.div_u
     tee_local $4
     set_global $assembly/globals/__divmod_quot_lo
     get_local $0
     get_local $4
     get_local $2
     i64.mul
     i64.sub
     set_global $assembly/globals/__divmod_rem
    end
    return
   end
   get_local $2
   i64.eqz
   tee_local $5
   if
    get_local $3
    get_local $3
    i64.const 1
    i64.sub
    i64.and
    i64.eqz
    set_local $5
   end
   get_local $5
   if
    i64.const 0
    set_global $assembly/globals/__divmod_rem
    return
   end
   get_local $1
   get_local $3
   i64.sub
   tee_local $4
   i64.const 0
   i64.eq
   if
    get_local $0
    get_local $2
    i64.sub
    set_local $4
   end
   get_local $4
   i32.wrap/i64
   tee_local $5
   i32.const 0
   i32.lt_s
   br_if $folding-inner0
   get_local $5
   i32.eqz
   if
    i64.const 1
    set_global $assembly/globals/__divmod_quot_lo
    i64.const 0
    set_global $assembly/globals/__divmod_rem
    get_global $assembly/globals/__divmod_rem
    set_global $assembly/globals/__divmod_quot_hi
    return
   end
   unreachable
  end
  i64.const 0
  set_global $assembly/globals/__divmod_rem
  get_global $assembly/globals/__divmod_rem
  set_global $assembly/globals/__divmod_quot_hi
  get_global $assembly/globals/__divmod_quot_hi
  set_global $assembly/globals/__divmod_quot_lo
 )
 (func $assembly/integer/u128/u128.div (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load
  get_local $1
  i64.load offset=8
  call $assembly/globals/__udivmod128
  unreachable
 )
 (func $assembly/globals/__udivmod128_10 (; 27 ;) (type $FUNCSIG$vjj) (param $0 i64) (param $1 i64)
  get_local $1
  i64.eqz
  if
   get_local $0
   i64.const 10
   i64.lt_u
   if
    i64.const 0
    set_global $assembly/globals/__divmod_rem
    get_global $assembly/globals/__divmod_rem
    set_global $assembly/globals/__divmod_quot_hi
    get_global $assembly/globals/__divmod_quot_hi
    set_global $assembly/globals/__divmod_quot_lo
    return
   end
   get_local $0
   i64.const 10
   i64.div_u
   tee_local $1
   set_global $assembly/globals/__divmod_quot_lo
   i64.const 0
   set_global $assembly/globals/__divmod_quot_hi
   get_local $0
   get_local $1
   i64.const 10
   i64.mul
   i64.sub
   set_global $assembly/globals/__divmod_rem
   return
  end
  unreachable
 )
 (func $assembly/integer/u128/u128.div10 (; 28 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  call $assembly/globals/__udivmod128_10
  unreachable
 )
 (func $assembly/integer/u128/u128#sqr (; 29 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  get_local $0
  i64.load
  tee_local $2
  i64.const 4294967295
  i64.and
  tee_local $1
  get_local $1
  i64.mul
  tee_local $3
  i64.const 4294967295
  i64.and
  set_local $5
  get_local $2
  i64.const 32
  i64.shr_u
  tee_local $2
  get_local $1
  i64.mul
  tee_local $1
  get_local $3
  i64.const 32
  i64.shr_u
  i64.add
  tee_local $3
  i64.const 32
  i64.shr_u
  set_local $4
  get_local $2
  get_local $2
  i64.mul
  get_local $4
  get_local $1
  get_local $3
  i64.const 4294967295
  i64.and
  i64.add
  tee_local $3
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  set_local $1
  get_local $0
  i64.load offset=8
  set_local $4
  get_local $0
  get_local $3
  i64.const 32
  i64.shl
  get_local $5
  i64.add
  i64.store
  get_local $0
  get_local $1
  get_local $2
  get_local $4
  i64.mul
  i64.const 1
  i64.shl
  i64.add
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128.pow (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.eq (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.eq
  tee_local $2
  if
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.eq
   set_local $2
  end
  get_local $2
 )
 (func $assembly/integer/u128/u128.ne (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.eq
  tee_local $2
  if
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.eq
   set_local $2
  end
  get_local $2
  i32.eqz
 )
 (func $assembly/integer/u128/u128.lt (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.load offset=8
  tee_local $2
  get_local $1
  i64.load offset=8
  tee_local $3
  i64.eq
  if (result i32)
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.lt_u
  else   
   get_local $2
   get_local $3
   i64.lt_u
  end
  tee_local $0
 )
 (func $assembly/integer/u128/u128.gt (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.load offset=8
  tee_local $2
  get_local $1
  i64.load offset=8
  tee_local $3
  i64.eq
  if (result i32)
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.gt_u
  else   
   get_local $2
   get_local $3
   i64.gt_u
  end
  tee_local $0
 )
 (func $assembly/integer/u128/u128.le (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.load offset=8
  tee_local $2
  get_local $1
  i64.load offset=8
  tee_local $3
  i64.eq
  if (result i32)
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.gt_u
  else   
   get_local $2
   get_local $3
   i64.gt_u
  end
  tee_local $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $assembly/integer/u128/u128.ge (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.load offset=8
  tee_local $2
  get_local $1
  i64.load offset=8
  tee_local $3
  i64.eq
  if (result i32)
   get_local $0
   i64.load
   get_local $1
   i64.load
   i64.lt_u
  else   
   get_local $2
   get_local $3
   i64.lt_u
  end
  tee_local $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $assembly/integer/u128/u128.cmp (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.sub
  tee_local $2
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.sub
  get_local $2
  i64.const 0
  i64.ne
  select
  i32.wrap/i64
 )
 (func $assembly/integer/u128/u128.popcnt (; 38 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  i64.popcnt
  get_local $0
  i64.load offset=8
  i64.popcnt
  i64.add
  i32.wrap/i64
 )
 (func $assembly/integer/u128/u128.clz (; 39 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  get_local $0
  i64.load offset=8
  tee_local $2
  get_local $2
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  set_local $1
  get_local $2
  get_local $1
  i64.const -1
  i64.xor
  i64.and
  get_local $0
  i64.load
  get_local $1
  i64.and
  i64.or
  i64.clz
  i32.wrap/i64
  get_local $1
  i32.wrap/i64
  i32.const 64
  i32.and
  i32.add
 )
 (func $assembly/integer/u128/u128.ctz (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load
  tee_local $1
  get_local $1
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  tee_local $2
  i64.and
  get_local $1
  get_local $2
  i64.const -1
  i64.xor
  i64.and
  i64.or
  i64.ctz
  i32.wrap/i64
  get_local $2
  i32.wrap/i64
  i32.const 64
  i32.and
  i32.add
 )
 (func $assembly/integer/u128/u128#set (; 41 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.load
  i64.store
  get_local $0
  get_local $1
  i64.load offset=8
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#setI64 (; 42 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $1
  i64.const 63
  i64.shr_s
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#setU64 (; 43 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  i64.store
  get_local $0
  i64.const 0
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#setI32 (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.extend_s/i32
  i64.store
  get_local $0
  get_local $1
  i32.const 63
  i32.shr_s
  i64.extend_s/i32
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#setU32 (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.extend_u/i32
  i64.store
  get_local $0
  i64.const 0
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#isZero (; 46 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  i64.eqz
 )
 (func $assembly/integer/u128/u128#pos (; 47 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $assembly/integer/u128/u128#preInc (; 48 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  get_local $0
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load
  get_local $0
  i64.load
  i64.const 1
  i64.add
  tee_local $1
  i64.xor
  get_local $0
  i64.load
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  i64.store offset=8
  get_local $0
  get_local $1
  i64.store
  get_local $0
 )
 (func $assembly/integer/u128/u128#preDec (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  get_local $0
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load
  get_local $0
  i64.load
  i64.const 1
  i64.sub
  tee_local $1
  i64.xor
  get_local $1
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  i64.store offset=8
  get_local $0
  get_local $1
  i64.store
  get_local $0
 )
 (func $assembly/integer/u128/u128#toI64 (; 50 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  get_local $0
  i64.load offset=8
  i64.const -9223372036854775808
  i64.and
  i64.or
 )
 (func $assembly/integer/u128/u128#toU64 (; 51 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
 )
 (func $assembly/integer/u128/u128#toI32 (; 52 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  get_local $0
  i64.load offset=8
  i64.const -9223372036854775808
  i64.and
  i64.or
  i32.wrap/i64
 )
 (func $assembly/integer/u128/u128#toU32 (; 53 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  i32.wrap/i64
 )
 (func $assembly/integer/u128/u128#toBool (; 54 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  i64.const 0
  i64.ne
 )
 (func $assembly/integer/u128/u128#toF64 (; 55 ;) (type $iF) (param $0 i32) (result f64)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  i64.eqz
  i32.eqz
  if
   unreachable
  end
  f64.const 0
 )
 (func $assembly/integer/u128/u128#toF64Unsafe (; 56 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i64)
  (local $2 i64)
  get_local $0
  i64.load
  set_local $1
  get_local $0
  i64.load offset=8
  tee_local $2
  i64.const 0
  i64.ge_u
  if
   get_local $2
   f64.convert_u/i64
   f64.const 18446744073709551615
   f64.mul
   get_local $1
   f64.convert_u/i64
   f64.add
   return
  end
  get_local $2
  i64.const -1
  i64.xor
  get_local $1
  i64.const -1
  i64.xor
  tee_local $1
  i64.const 1
  i64.and
  get_local $1
  i64.const 1
  i64.shr_u
  i64.add
  i64.const 63
  i64.shr_u
  i64.add
  f64.convert_s/i64
  f64.const 18446744073709551615
  f64.mul
  get_local $1
  i64.const 1
  i64.add
  f64.convert_u/i64
  f64.add
  f64.neg
 )
 (func $assembly/integer/u128/u128#toF32 (; 57 ;) (type $if) (param $0 i32) (result f32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  i64.eqz
  i32.eqz
  if
   unreachable
  end
  f32.const 0
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 58 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 1032
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  unreachable
 )
 (func $~lib/array/Array<u8>#constructor (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 1000
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128#toBytesBE (; 60 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  get_local $0
  i64.load
  set_local $1
  get_local $0
  i64.load offset=8
  set_local $2
  i32.const 16
  call $~lib/array/Array<u8>#constructor
  tee_local $0
  i32.load
  tee_local $3
  get_local $2
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  get_local $3
  i32.const 8
  i32.add
  get_local $1
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#toBytesLE (; 61 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  get_local $0
  i64.load offset=8
  set_local $1
  get_local $0
  i64.load
  set_local $2
  i32.const 16
  call $~lib/array/Array<u8>#constructor
  tee_local $0
  i32.load
  tee_local $3
  get_local $2
  i64.store offset=8
  get_local $3
  i32.const 8
  i32.add
  get_local $1
  i64.store offset=8
  get_local $0
 )
 (func $assembly/integer/u128/u128#toString (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   i32.const 10
   set_local $1
  end
  get_local $1
  i32.const 10
  i32.eq
  tee_local $2
  i32.eqz
  if
   get_local $1
   i32.const 16
   i32.eq
   set_local $2
  end
  get_local $2
  i32.eqz
  if
   i32.const 1096
   i32.const 904
   i32.const 890
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 1184
   return
  end
  get_local $0
  i64.load
  drop
  get_local $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.fromU256 (; 63 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  drop
  get_local $0
  i64.load offset=8
  drop
  get_local $0
  i64.load offset=16
  drop
  get_local $0
  i64.load offset=24
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.fromBits (; 64 ;) (type $iiiiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u256/u256.isEmpty (; 65 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.eqz
  tee_local $1
  i32.eqz
  if
   get_local $0
   i64.load
   get_local $0
   i64.load offset=8
   i64.or
   get_local $0
   i64.load offset=16
   i64.or
   get_local $0
   i64.load offset=24
   i64.or
   i64.eqz
   i32.eqz
   set_local $1
  end
  get_local $1
 )
 (func $assembly/integer/u256/u256.add (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  i64.load
  drop
  get_local $0
  i64.load
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.or (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.or
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.or
  drop
  get_local $0
  i64.load offset=16
  get_local $1
  i64.load offset=16
  i64.or
  drop
  get_local $0
  i64.load offset=24
  get_local $1
  i64.load offset=24
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.xor (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.xor
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.xor
  drop
  get_local $0
  i64.load offset=16
  get_local $1
  i64.load offset=16
  i64.xor
  drop
  get_local $0
  i64.load offset=24
  get_local $1
  i64.load offset=24
  i64.xor
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.and (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.and
  drop
  get_local $0
  i64.load offset=8
  get_local $1
  i64.load offset=8
  i64.and
  drop
  get_local $0
  i64.load offset=16
  get_local $1
  i64.load offset=16
  i64.and
  drop
  get_local $0
  i64.load offset=24
  get_local $1
  i64.load offset=24
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.popcnt (; 70 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  get_local $0
  i64.load
  i64.popcnt
  set_local $1
  get_local $0
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   get_local $1
   get_local $0
   i64.load offset=8
   i64.popcnt
   i64.add
   set_local $1
  end
  get_local $0
  i64.load offset=16
  i64.const 0
  i64.ne
  if
   get_local $1
   get_local $0
   i64.load offset=16
   i64.popcnt
   i64.add
   set_local $1
  end
  get_local $0
  i64.load offset=24
  i64.const 0
  i64.ne
  if
   get_local $1
   get_local $0
   i64.load offset=24
   i64.popcnt
   i64.add
   set_local $1
  end
  get_local $1
  i32.wrap/i64
 )
 (func $assembly/integer/u256/u256.clz (; 71 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load offset=24
  i64.const 0
  i64.ne
  if (result i32)
   get_local $0
   i64.load offset=24
   i64.clz
   i64.const 0
   i64.add
   i32.wrap/i64
  else   
   get_local $0
   i64.load offset=16
   i64.const 0
   i64.ne
   if (result i32)
    get_local $0
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap/i64
   else    
    get_local $0
    i64.load offset=8
    i64.const 0
    i64.ne
    if (result i32)
     get_local $0
     i64.load offset=8
     i64.clz
     i64.const 128
     i64.add
     i32.wrap/i64
    else     
     get_local $0
     i64.load
     i64.clz
     i64.const 192
     i64.add
     i32.wrap/i64
    end
   end
  end
 )
 (func $assembly/integer/u256/u256.ctz (; 72 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  i64.const 0
  i64.ne
  if (result i32)
   get_local $0
   i64.load
   i64.ctz
   i64.const 0
   i64.add
   i32.wrap/i64
  else   
   get_local $0
   i64.load offset=8
   i64.const 0
   i64.ne
   if (result i32)
    get_local $0
    i64.load offset=8
    i64.ctz
    i64.const -64
    i64.sub
    i32.wrap/i64
   else    
    get_local $0
    i64.load offset=16
    i64.const 0
    i64.ne
    if (result i32)
     get_local $0
     i64.load offset=16
     i64.ctz
     i64.const 128
     i64.add
     i32.wrap/i64
    else     
     get_local $0
     i64.load offset=24
     i64.ctz
     i64.const 192
     i64.add
     i32.wrap/i64
    end
   end
  end
 )
 (func $assembly/integer/u256/u256#set (; 73 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.load
  i64.store
  get_local $0
  get_local $1
  i64.load offset=8
  i64.store offset=8
  get_local $0
  get_local $1
  i64.load offset=16
  i64.store offset=16
  get_local $0
  get_local $1
  i64.load offset=24
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#setU128 (; 74 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.load
  i64.store
  get_local $0
  get_local $1
  i64.load offset=8
  i64.store offset=8
  get_local $0
  i64.const 0
  i64.store offset=16
  get_local $0
  i64.const 0
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#setI64 (; 75 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  get_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $1
  i64.const 63
  i64.shr_s
  tee_local $2
  i64.store offset=8
  get_local $0
  get_local $2
  i64.store offset=16
  get_local $0
  get_local $2
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#setU64 (; 76 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  get_local $0
  get_local $1
  i64.store
  get_local $0
  i64.const 0
  i64.store offset=8
  get_local $0
  i64.const 0
  i64.store offset=16
  get_local $0
  i64.const 0
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#setI32 (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  get_local $0
  get_local $1
  i64.extend_s/i32
  i64.store
  get_local $0
  get_local $1
  i32.const 63
  i32.shr_s
  i64.extend_s/i32
  tee_local $2
  i64.store offset=8
  get_local $0
  get_local $2
  i64.store offset=16
  get_local $0
  get_local $2
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#setU32 (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i64.extend_u/i32
  i64.store
  get_local $0
  i64.const 0
  i64.store offset=8
  get_local $0
  i64.const 0
  i64.store offset=16
  get_local $0
  i64.const 0
  i64.store offset=24
  get_local $0
 )
 (func $assembly/integer/u256/u256#isZero (; 79 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  get_local $0
  i64.load offset=16
  i64.or
  get_local $0
  i64.load offset=24
  i64.or
  i64.eqz
 )
 (func $assembly/integer/u256/u256#toI128 (; 80 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  drop
  get_local $0
  i64.load offset=8
  i64.const 9223372036854775807
  i64.and
  get_local $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256#toI64 (; 81 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  get_local $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
 )
 (func $assembly/integer/u256/u256#toI32 (; 82 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  get_local $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
  i32.wrap/i64
 )
 (func $assembly/integer/u256/u256#toBool (; 83 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i64.load
  get_local $0
  i64.load offset=8
  i64.or
  get_local $0
  i64.load offset=16
  i64.or
  get_local $0
  i64.load offset=24
  i64.or
  i32.wrap/i64
 )
 (func $assembly/integer/u256/u256#toBytesLE (; 84 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  get_local $0
  i64.load offset=16
  set_local $1
  get_local $0
  i64.load offset=24
  set_local $2
  get_local $0
  i64.load offset=8
  set_local $3
  get_local $0
  i64.load
  set_local $4
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  tee_local $0
  i32.load
  get_local $4
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 1
  i32.add
  get_local $4
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 2
  i32.add
  get_local $4
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 3
  i32.add
  get_local $4
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 4
  i32.add
  get_local $4
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 5
  i32.add
  get_local $4
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 6
  i32.add
  get_local $4
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 7
  i32.add
  get_local $4
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 8
  i32.add
  get_local $3
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 9
  i32.add
  get_local $3
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 10
  i32.add
  get_local $3
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 11
  i32.add
  get_local $3
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 12
  i32.add
  get_local $3
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 13
  i32.add
  get_local $3
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 14
  i32.add
  get_local $3
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 15
  i32.add
  get_local $3
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 16
  i32.add
  get_local $1
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 17
  i32.add
  get_local $1
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 18
  i32.add
  get_local $1
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 19
  i32.add
  get_local $1
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 20
  i32.add
  get_local $1
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 21
  i32.add
  get_local $1
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 22
  i32.add
  get_local $1
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 23
  i32.add
  get_local $1
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 24
  i32.add
  get_local $2
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 25
  i32.add
  get_local $2
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 26
  i32.add
  get_local $2
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 27
  i32.add
  get_local $2
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 28
  i32.add
  get_local $2
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 29
  i32.add
  get_local $2
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 30
  i32.add
  get_local $2
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 31
  i32.add
  get_local $2
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
 )
 (func $assembly/integer/u256/u256#toBytesBE (; 85 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  get_local $0
  i64.load offset=16
  set_local $1
  get_local $0
  i64.load
  set_local $2
  get_local $0
  i64.load offset=8
  set_local $3
  get_local $0
  i64.load offset=24
  set_local $4
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  tee_local $0
  i32.load
  get_local $4
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 1
  i32.add
  get_local $4
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 2
  i32.add
  get_local $4
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 3
  i32.add
  get_local $4
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 4
  i32.add
  get_local $4
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 5
  i32.add
  get_local $4
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 6
  i32.add
  get_local $4
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 7
  i32.add
  get_local $4
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 8
  i32.add
  get_local $1
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 9
  i32.add
  get_local $1
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 10
  i32.add
  get_local $1
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 11
  i32.add
  get_local $1
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 12
  i32.add
  get_local $1
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 13
  i32.add
  get_local $1
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 14
  i32.add
  get_local $1
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 15
  i32.add
  get_local $1
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 16
  i32.add
  get_local $3
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 17
  i32.add
  get_local $3
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 18
  i32.add
  get_local $3
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 19
  i32.add
  get_local $3
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 20
  i32.add
  get_local $3
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 21
  i32.add
  get_local $3
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 22
  i32.add
  get_local $3
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 23
  i32.add
  get_local $3
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 24
  i32.add
  get_local $2
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 25
  i32.add
  get_local $2
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 26
  i32.add
  get_local $2
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 27
  i32.add
  get_local $2
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 28
  i32.add
  get_local $2
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 29
  i32.add
  get_local $2
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 30
  i32.add
  get_local $2
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  get_local $0
  i32.load
  i32.const 31
  i32.add
  get_local $2
  i64.store8 offset=8
  get_local $0
 )
 (func $null (; 86 ;) (type $v)
  nop
 )
 (func $assembly/integer/u128/u128.fromString|trampoline (; 87 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   set_local $1
  end
  get_local $0
  get_local $1
  call $assembly/utils/atou128
 )
 (func $~setargc (; 88 ;) (type $iv) (param $0 i32)
  get_local $0
  set_global $~argc
 )
 (func $assembly/integer/u128/u128.fromBytes|trampoline (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   set_local $1
  end
  get_local $1
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
   call $assembly/integer/u128/u128.fromBytesBE
  else   
   get_local $0
   call $assembly/integer/u128/u128.fromBytesLE
  end
  tee_local $0
 )
 (func $assembly/integer/u128/u128#constructor|trampoline (; 90 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
   end
  end
  get_local $0
  tee_local $3
  i32.eqz
  if
   unreachable
  end
  get_local $3
 )
 (func $u128#set:lo (; 91 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  get_local $1
  i64.store
 )
 (func $u128#get:hi (; 92 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load offset=8
 )
 (func $u128#set:hi (; 93 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  get_local $1
  i64.store offset=8
 )
 (func $assembly/integer/u128/u128#toBytes|trampoline (; 94 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   set_local $1
  end
  get_local $1
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
   call $assembly/integer/u128/u128#toBytesBE
  else   
   get_local $0
   call $assembly/integer/u128/u128#toBytesLE
  end
  tee_local $0
 )
 (func $assembly/integer/u128/u128#toString|trampoline (; 95 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   set_local $1
  end
  get_local $0
  get_local $1
  call $assembly/integer/u128/u128#toString
 )
 (func $assembly/integer/u256/u256#constructor|trampoline (; 96 ;) (type $iIIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i32)
  block $4of4
   block $3of4
    block $2of4
     block $1of4
      block $0of4
       block $outOfRange
        get_global $~argc
        br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
       end
       unreachable
      end
     end
    end
   end
  end
  get_local $0
  tee_local $5
  i32.eqz
  if
   unreachable
  end
  get_local $5
 )
 (func $u256#get:hi1 (; 97 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load offset=16
 )
 (func $u256#set:hi1 (; 98 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  get_local $1
  i64.store offset=16
 )
 (func $u256#get:hi2 (; 99 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load offset=24
 )
 (func $u256#set:hi2 (; 100 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  get_local $1
  i64.store offset=24
 )
 (func $assembly/integer/u256/u256#toBytes|trampoline (; 101 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 1
   set_local $1
  end
  get_local $1
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
   call $assembly/integer/u256/u256#toBytesLE
  else   
   get_local $0
   call $assembly/integer/u256/u256#toBytesBE
  end
  tee_local $0
 )
)
