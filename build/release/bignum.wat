(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i32_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $f32_=>_i32 (func (param f32) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i64_i64_=>_f64 (func (param i64 i64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x")
 (data (i32.const 1120) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data (i32.const 1184) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 1280) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00\b0\04\00\00\b0\04\00\00K\00\00\00K")
 (data (i32.const 1312) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 1376) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00D\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o")
 (data (i32.const 1424) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00g\00l\00o\00b\00a\00l\00s\00.\00t\00s")
 (data (i32.const 1488) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1536) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1584) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1648) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 1744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1780) "\01\00\00\00\01")
 (data (i32.const 1792) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1824) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1888) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1952) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\002\005\006\00.\00t\00s")
 (data (i32.const 2016) "\n\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00b\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\00\00\00\02\00\00\00a\08\00\00\02")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2016))
 (global $assembly/integer/u128/u128 i32 (i32.const 3))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/integer/u256/u256 i32 (i32.const 6))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__reset" (func $~lib/rt/stub/__reset))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "u128" (global $assembly/integer/u128/u128))
 (export "u128#get:lo" (func $assembly/integer/u128/u128#get:lo))
 (export "u128#set:lo" (func $assembly/integer/u128/u128#set:lo))
 (export "u128#get:hi" (func $assembly/integer/u128/u128#get:hi))
 (export "u128#set:hi" (func $assembly/integer/u128/u128#set:hi))
 (export "u128#constructor" (func $assembly/integer/u128/u128#constructor@varargs))
 (export "u128#set" (func $assembly/integer/u128/u128#set))
 (export "u128#setI64" (func $assembly/integer/u128/u128#setI64))
 (export "u128#setU64" (func $assembly/integer/u128/u128#setU64))
 (export "u128#setI32" (func $assembly/integer/u128/u128#setI32))
 (export "u128#setU32" (func $assembly/integer/u128/u128#setU32))
 (export "u128#isZero" (func $assembly/integer/u128/u128#isZero))
 (export "u128#not" (func $assembly/integer/u128/u128#not))
 (export "u128#pos" (func $~lib/rt/stub/__retain))
 (export "u128#neg" (func $assembly/integer/u128/u128#neg))
 (export "u128#preInc" (func $assembly/integer/u128/u128#preInc))
 (export "u128#preDec" (func $assembly/integer/u128/u128#preDec))
 (export "u128#postInc" (func $assembly/integer/u128/u128#postInc))
 (export "u128#postDec" (func $assembly/integer/u128/u128#postDec))
 (export "u128#sqr" (func $assembly/integer/u128/u128#sqr))
 (export "u128#toI256" (func $assembly/integer/u128/u128#toI256))
 (export "u128#toU256" (func $assembly/integer/u128/u128#toU256))
 (export "u128#toI128" (func $assembly/integer/u128/u128#toI128))
 (export "u128#toU128" (func $~lib/rt/stub/__retain))
 (export "u128#toI64" (func $assembly/integer/u128/u128#toI64))
 (export "u128#toU64" (func $assembly/integer/u128/u128#get:lo))
 (export "u128#toI32" (func $assembly/integer/u128/u128#toI32))
 (export "u128#toU32" (func $assembly/integer/u128/u128#toU32))
 (export "u128#toBool" (func $assembly/integer/u128/u128#toBool))
 (export "u128#toF64" (func $assembly/integer/u128/u128#toF64))
 (export "u128#toF32" (func $assembly/integer/u128/u128#toF32))
 (export "u128#toBytes" (func $assembly/integer/u128/u128#toBytes@varargs))
 (export "u128#toUint8Array" (func $assembly/integer/u128/u128#toUint8Array@varargs))
 (export "u128#clone" (func $assembly/integer/u128/u128.fromI256))
 (export "u128#toString" (func $assembly/integer/u128/u128#toString@varargs))
 (export "u128.get:Zero" (func $assembly/integer/u128/u128.get:Zero))
 (export "u128.get:One" (func $assembly/integer/u128/u128.get:One))
 (export "u128.get:Min" (func $assembly/integer/u128/u128.get:Zero))
 (export "u128.get:Max" (func $assembly/integer/u128/u128.get:Max))
 (export "u128.fromString" (func $assembly/integer/u128/u128.fromString@varargs))
 (export "u128.fromI256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromU256" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromI128" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromU128" (func $assembly/integer/u128/u128.fromI256))
 (export "u128.fromI64" (func $assembly/integer/u128/u128.fromI64))
 (export "u128.fromU64" (func $assembly/integer/u128/u128.fromU64))
 (export "u128.fromF64" (func $assembly/integer/u128/u128.fromF64))
 (export "u128.fromF32" (func $assembly/integer/u128/u128.fromF32))
 (export "u128.fromI32" (func $assembly/integer/u128/u128.fromI32))
 (export "u128.fromU32" (func $assembly/integer/u128/u128.fromU32))
 (export "u128.fromBool" (func $assembly/integer/u128/u128.fromBool))
 (export "u128.fromBits" (func $assembly/integer/u128/u128.fromBits))
 (export "u128.fromBytesLE" (func $assembly/integer/u128/u128.fromBytesLE))
 (export "u128.fromBytesBE" (func $assembly/integer/u128/u128.fromBytesBE))
 (export "u128.fromUint8ArrayLE" (func $assembly/integer/u128/u128.fromUint8ArrayLE))
 (export "u128.fromUint8ArrayBE" (func $assembly/integer/u128/u128.fromUint8ArrayBE))
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
 (export "u128.rem" (func $assembly/integer/u128/u128.rem))
 (export "u128.div10" (func $assembly/integer/u128/u128.div10))
 (export "u128.rem10" (func $assembly/integer/u128/u128.rem10))
 (export "u128.pow" (func $assembly/integer/u128/u128.pow))
 (export "u128.sqrt" (func $assembly/integer/u128/u128.sqrt))
 (export "u128.eq" (func $assembly/integer/u128/u128.eq))
 (export "u128.ne" (func $assembly/integer/u128/u128.ne))
 (export "u128.lt" (func $assembly/integer/u128/u128.lt))
 (export "u128.gt" (func $assembly/integer/u128/u128.gt))
 (export "u128.le" (func $assembly/integer/u128/u128.le))
 (export "u128.ge" (func $assembly/integer/u128/u128.ge))
 (export "u128.ord" (func $assembly/integer/u128/u128.ord))
 (export "u128.popcnt" (func $assembly/integer/u128/u128.popcnt))
 (export "u128.clz" (func $assembly/integer/u128/u128.clz))
 (export "u128.ctz" (func $assembly/integer/u128/u128.ctz))
 (export "u128.sqr" (func $assembly/integer/u128/u128.sqr))
 (export "u128.mulq" (func $assembly/integer/u128/u128.mulq))
 (export "u256" (global $assembly/integer/u256/u256))
 (export "u256#get:lo1" (func $assembly/integer/u128/u128#get:lo))
 (export "u256#set:lo1" (func $assembly/integer/u128/u128#set:lo))
 (export "u256#get:lo2" (func $assembly/integer/u128/u128#get:hi))
 (export "u256#set:lo2" (func $assembly/integer/u128/u128#set:hi))
 (export "u256#get:hi1" (func $assembly/integer/u256/u256#get:hi1))
 (export "u256#set:hi1" (func $assembly/integer/u256/u256#set:hi1))
 (export "u256#get:hi2" (func $assembly/integer/u256/u256#get:hi2))
 (export "u256#set:hi2" (func $assembly/integer/u256/u256#set:hi2))
 (export "u256#constructor" (func $assembly/integer/u256/u256#constructor@varargs))
 (export "u256#set" (func $assembly/integer/u256/u256#set))
 (export "u256#setU128" (func $assembly/integer/u256/u256#setU128))
 (export "u256#setI64" (func $assembly/integer/u256/u256#setI64))
 (export "u256#setU64" (func $assembly/integer/u256/u256#setU64))
 (export "u256#setI32" (func $assembly/integer/u256/u256#setI32))
 (export "u256#setU32" (func $assembly/integer/u256/u256#setU32))
 (export "u256#isZero" (func $assembly/integer/u256/u256#isZero))
 (export "u256#not" (func $assembly/integer/u256/u256#not))
 (export "u256#pos" (func $~lib/rt/stub/__retain))
 (export "u256#neg" (func $assembly/integer/u256/u256#neg))
 (export "u256#preInc" (func $assembly/integer/u256/u256#preInc))
 (export "u256#preDec" (func $assembly/integer/u256/u256#preDec))
 (export "u256#postInc" (func $assembly/integer/u256/u256#postInc))
 (export "u256#postDec" (func $assembly/integer/u256/u256#postDec))
 (export "u256#toI128" (func $assembly/integer/u256/u256#toI128))
 (export "u256#toU128" (func $assembly/integer/u128/u128.fromI256))
 (export "u256#toU256" (func $~lib/rt/stub/__retain))
 (export "u256#toI64" (func $assembly/integer/u256/u256#toI64))
 (export "u256#toU64" (func $assembly/integer/u128/u128#get:lo))
 (export "u256#toI32" (func $assembly/integer/u256/u256#toI32))
 (export "u256#toU32" (func $assembly/integer/u128/u128#toU32))
 (export "u256#toBool" (func $assembly/integer/u256/u256#toBool))
 (export "u256#toBytes" (func $assembly/integer/u256/u256#toBytes@varargs))
 (export "u256#toUint8Array" (func $assembly/integer/u256/u256#toUint8Array@varargs))
 (export "u256#clone" (func $assembly/integer/u256/u256.fromU256))
 (export "u256#toString" (func $assembly/integer/u256/u256#toString@varargs))
 (export "u256.get:Zero" (func $assembly/integer/u256/u256.get:Zero))
 (export "u256.get:One" (func $assembly/integer/u256/u256.get:One))
 (export "u256.get:Min" (func $assembly/integer/u256/u256.get:Zero))
 (export "u256.get:Max" (func $assembly/integer/u256/u256.get:Max))
 (export "u256.fromU256" (func $assembly/integer/u256/u256.fromU256))
 (export "u256.fromU128" (func $assembly/integer/u128/u128#toU256))
 (export "u256.fromU64" (func $assembly/integer/u256/u256.fromU64))
 (export "u256.fromI64" (func $assembly/integer/u256/u256.fromI64))
 (export "u256.fromU32" (func $assembly/integer/u256/u256.fromU32))
 (export "u256.fromI32" (func $assembly/integer/u256/u256.fromI32))
 (export "u256.fromBits" (func $assembly/integer/u256/u256.fromBits))
 (export "u256.fromBytesLE" (func $assembly/integer/u256/u256.fromBytesLE))
 (export "u256.fromBytesBE" (func $assembly/integer/u256/u256.fromBytesBE))
 (export "u256.fromUint8ArrayLE" (func $assembly/integer/u256/u256.fromUint8ArrayLE))
 (export "u256.fromUint8ArrayBE" (func $assembly/integer/u256/u256.fromUint8ArrayBE))
 (export "u256.fromF64" (func $assembly/integer/u256/u256.fromF64))
 (export "u256.fromF32" (func $assembly/integer/u256/u256.fromF32))
 (export "u256.isEmpty" (func $assembly/integer/u256/u256.isEmpty))
 (export "u256.add" (func $assembly/integer/u256/u256.add))
 (export "u256.sub" (func $assembly/integer/u256/u256.sub))
 (export "u256.or" (func $assembly/integer/u256/u256.or))
 (export "u256.xor" (func $assembly/integer/u256/u256.xor))
 (export "u256.and" (func $assembly/integer/u256/u256.and))
 (export "u256.shr" (func $assembly/integer/u256/u256.shr))
 (export "u256.shr_u" (func $assembly/integer/u256/u256.shr_u))
 (export "u256.eq" (func $assembly/integer/u256/u256.eq))
 (export "u256.ne" (func $assembly/integer/u256/u256.ne))
 (export "u256.lt" (func $assembly/integer/u256/u256.lt))
 (export "u256.gt" (func $assembly/integer/u256/u256.gt))
 (export "u256.le" (func $assembly/integer/u256/u256.le))
 (export "u256.ge" (func $assembly/integer/u256/u256.ge))
 (export "u256.popcnt" (func $assembly/integer/u256/u256.popcnt))
 (export "u256.clz" (func $assembly/integer/u256/u256.clz))
 (export "u256.ctz" (func $assembly/integer/u256/u256.ctz))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $5
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~lib/rt/stub/__reset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $assembly/integer/u128/u128#constructor (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128.get:Zero (result i32)
  i32.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.get:One (result i32)
  i32.const 0
  i64.const 1
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.get:Max (result i32)
  i32.const 0
  i64.const -1
  i64.const -1
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/utils/atou128 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  i32.const 1
  local.get $1
  i32.const 36
  i32.gt_s
  local.get $1
  i32.const 2
  i32.lt_s
  select
  if
   i32.const 1088
   i32.const 1136
   i32.const 133
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.tee $2
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  local.tee $7
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $assembly/integer/u128/u128#constructor
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt (result i32)
   i32.const -1
   i32.const 0
   local.get $2
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   i32.ge_u
   br_if $__inlined_func$~lib/string/String#charCodeAt
   drop
   local.get $2
   i32.load16_u
  end
  local.tee $0
  i32.const 48
  i32.eq
  i32.const 0
  local.get $7
  i32.const 1
  i32.eq
  select
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $assembly/integer/u128/u128#constructor
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt1 (result i32)
   i32.const -1
   local.get $0
   i32.const 45
   i32.eq
   local.tee $11
   local.get $0
   i32.const 43
   i32.eq
   i32.or
   i32.const 0
   i32.ne
   local.tee $3
   local.get $2
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   i32.ge_u
   br_if $__inlined_func$~lib/string/String#charCodeAt1
   drop
   local.get $2
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.load16_u
  end
  i32.const 48
  i32.eq
  if
   block $__inlined_func$~lib/string/String#charCodeAt3 (result i32)
    i32.const -1
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    local.get $2
    i32.const 16
    i32.sub
    i32.load offset=12
    i32.const 1
    i32.shr_u
    i32.ge_u
    br_if $__inlined_func$~lib/string/String#charCodeAt3
    drop
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
   end
   local.tee $0
   i32.const 120
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 88
    i32.eq
   end
   if (result i32)
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    i32.const 16
   else
    i32.const 1
    local.get $0
    i32.const 79
    i32.eq
    local.get $0
    i32.const 111
    i32.eq
    select
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     i32.const 8
    else
     i32.const 1
     local.get $0
     i32.const 66
     i32.eq
     local.get $0
     i32.const 98
     i32.eq
     select
     if (result i32)
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      i32.const 2
     else
      local.get $1
     end
    end
   end
   local.set $1
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $0
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      local.get $1
      i32.const 2
      i32.ne
      if
       local.get $1
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      loop $do-continue|1
       block $__inlined_func$~lib/string/String#charCodeAt5 (result i32)
        i32.const -1
        local.get $3
        local.get $2
        i32.const 16
        i32.sub
        i32.load offset=12
        i32.const 1
        i32.shr_u
        i32.ge_u
        br_if $__inlined_func$~lib/string/String#charCodeAt5
        drop
        local.get $2
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
       end
       i32.const 48
       i32.sub
       local.tee $1
       i32.const 2
       i32.lt_u
       if
        i32.const 0
        local.get $0
        i64.load
        local.tee $4
        i64.const 1
        i64.shl
        local.get $0
        i64.load offset=8
        i64.const 1
        i64.shl
        local.get $4
        i64.const 63
        i64.shr_u
        i64.or
        call $assembly/integer/u128/u128#constructor
        local.set $0
        i32.const 0
        local.get $1
        i64.extend_i32_u
        i64.const 0
        call $assembly/integer/u128/u128#constructor
        local.set $1
        i32.const 0
        local.get $0
        i64.load
        local.get $1
        i64.load
        i64.or
        local.get $0
        i64.load offset=8
        local.get $1
        i64.load offset=8
        i64.or
        call $assembly/integer/u128/u128#constructor
        local.set $0
        local.get $3
        i32.const 1
        i32.add
        local.tee $3
        local.get $7
        i32.lt_s
        br_if $do-continue|1
       end
      end
      br $break|0
     end
     loop $do-continue|2
      block $__inlined_func$~lib/string/String#charCodeAt7 (result i32)
       i32.const -1
       local.get $3
       local.get $2
       i32.const 16
       i32.sub
       i32.load offset=12
       i32.const 1
       i32.shr_u
       i32.ge_u
       br_if $__inlined_func$~lib/string/String#charCodeAt7
       drop
       local.get $2
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
      end
      i32.const 48
      i32.sub
      local.tee $8
      i32.const 10
      i32.lt_u
      if
       i32.const 0
       local.get $0
       i64.load
       local.tee $4
       i64.const 3
       i64.shl
       local.get $0
       i64.load offset=8
       i64.const 3
       i64.shl
       local.get $4
       i64.const 61
       i64.shr_u
       i64.or
       call $assembly/integer/u128/u128#constructor
       local.set $1
       i32.const 0
       local.get $0
       i64.load
       local.tee $4
       i64.const 1
       i64.shl
       local.get $0
       i64.load offset=8
       i64.const 1
       i64.shl
       local.get $4
       i64.const 63
       i64.shr_u
       i64.or
       call $assembly/integer/u128/u128#constructor
       local.set $0
       i32.const 0
       local.get $1
       i64.load
       local.tee $4
       local.get $0
       i64.load
       i64.add
       local.tee $5
       local.get $5
       local.get $4
       i64.lt_u
       i64.extend_i32_u
       local.get $1
       i64.load offset=8
       local.get $0
       i64.load offset=8
       i64.add
       i64.add
       call $assembly/integer/u128/u128#constructor
       local.set $0
       i32.const 0
       local.get $8
       i64.extend_i32_u
       i64.const 0
       call $assembly/integer/u128/u128#constructor
       local.set $1
       i32.const 0
       local.get $0
       i64.load
       local.tee $4
       local.get $1
       i64.load
       i64.add
       local.tee $5
       local.get $5
       local.get $4
       i64.lt_u
       i64.extend_i32_u
       local.get $0
       i64.load offset=8
       local.get $1
       i64.load offset=8
       i64.add
       i64.add
       call $assembly/integer/u128/u128#constructor
       local.set $0
       local.get $3
       i32.const 1
       i32.add
       local.tee $3
       local.get $7
       i32.lt_s
       br_if $do-continue|2
      end
     end
     br $break|0
    end
    loop $do-continue|3
     block $do-break|3
      block $__inlined_func$~lib/string/String#charCodeAt9 (result i32)
       i32.const -1
       local.get $3
       local.get $2
       i32.const 16
       i32.sub
       i32.load offset=12
       i32.const 1
       i32.shr_u
       i32.ge_u
       br_if $__inlined_func$~lib/string/String#charCodeAt9
       drop
       local.get $2
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
      end
      i32.const 48
      i32.sub
      local.tee $1
      i32.const 74
      i32.gt_u
      br_if $do-break|3
      local.get $1
      i32.const 1300
      i32.load
      i32.add
      i32.load8_u
      local.tee $1
      i32.const 16
      i32.ge_u
      br_if $do-break|3
      i32.const 0
      local.get $0
      i64.load
      local.tee $4
      i64.const 4
      i64.shl
      local.get $0
      i64.load offset=8
      i64.const 4
      i64.shl
      local.get $4
      i64.const 60
      i64.shr_u
      i64.or
      call $assembly/integer/u128/u128#constructor
      local.set $0
      i32.const 0
      local.get $1
      i64.extend_i32_u
      i64.const 0
      call $assembly/integer/u128/u128#constructor
      local.set $1
      i32.const 0
      local.get $0
      i64.load
      local.get $1
      i64.load
      i64.or
      local.get $0
      i64.load offset=8
      local.get $1
      i64.load offset=8
      i64.or
      call $assembly/integer/u128/u128#constructor
      local.set $0
      local.get $3
      i32.const 1
      i32.add
      local.tee $3
      local.get $7
      i32.lt_s
      br_if $do-continue|3
     end
    end
    br $break|0
   end
   i32.const 0
   local.get $1
   i64.extend_i32_s
   i64.const 0
   call $assembly/integer/u128/u128#constructor
   local.set $8
   loop $do-continue|4
    block $do-break|4
     block $__inlined_func$~lib/string/String#charCodeAt11 (result i32)
      i32.const -1
      local.get $3
      local.get $2
      i32.const 16
      i32.sub
      i32.load offset=12
      i32.const 1
      i32.shr_u
      i32.ge_u
      br_if $__inlined_func$~lib/string/String#charCodeAt11
      drop
      local.get $2
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
     end
     i32.const 48
     i32.sub
     local.tee $6
     i32.const 74
     i32.gt_u
     br_if $do-break|4
     local.get $6
     i32.const 1300
     i32.load
     i32.add
     i32.load8_u
     local.tee $6
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     br_if $do-break|4
     local.get $8
     i64.load
     local.tee $4
     i64.const 4294967295
     i64.and
     local.set $5
     local.get $0
     i64.load
     local.tee $10
     i64.const 4294967295
     i64.and
     local.tee $9
     local.get $4
     i64.const 32
     i64.shr_u
     local.tee $12
     i64.mul
     local.get $5
     local.get $10
     i64.const 32
     i64.shr_u
     local.tee $13
     i64.mul
     local.get $5
     local.get $9
     i64.mul
     local.tee $9
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $14
     i64.const 4294967295
     i64.and
     i64.add
     local.set $5
     local.get $12
     local.get $13
     i64.mul
     local.get $14
     i64.const 32
     i64.shr_u
     i64.add
     local.get $0
     i64.load offset=8
     local.get $4
     i64.mul
     i64.add
     local.get $10
     local.get $8
     i64.load offset=8
     i64.mul
     i64.add
     local.get $5
     i64.const 32
     i64.shr_u
     i64.add
     global.set $assembly/globals/__res128_hi
     i32.const 0
     local.get $9
     i64.const 4294967295
     i64.and
     local.get $5
     i64.const 32
     i64.shl
     i64.or
     global.get $assembly/globals/__res128_hi
     call $assembly/integer/u128/u128#constructor
     local.set $0
     i32.const 0
     local.get $6
     i64.extend_i32_u
     i64.const 0
     call $assembly/integer/u128/u128#constructor
     local.set $6
     i32.const 0
     local.get $0
     i64.load
     local.tee $4
     local.get $6
     i64.load
     i64.add
     local.tee $5
     local.get $5
     local.get $4
     i64.lt_u
     i64.extend_i32_u
     local.get $0
     i64.load offset=8
     local.get $6
     i64.load offset=8
     i64.add
     i64.add
     call $assembly/integer/u128/u128#constructor
     local.set $0
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     local.get $7
     i32.lt_s
     br_if $do-continue|4
    end
   end
  end
  local.get $11
  if (result i32)
   i32.const 0
   local.get $0
   i64.load
   i64.const -1
   i64.xor
   local.tee $4
   i64.const 1
   i64.add
   local.tee $5
   local.get $5
   local.get $4
   i64.lt_u
   i64.extend_i32_u
   local.get $0
   i64.load offset=8
   i64.const -1
   i64.xor
   i64.add
   call $assembly/integer/u128/u128#constructor
  else
   local.get $0
  end
 )
 (func $assembly/integer/u128/u128.fromI256 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromI64 (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  local.get $0
  i64.const 63
  i64.shr_s
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromU64 (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromF64 (param $0 f64) (result i32)
  i32.const 0
  local.get $0
  i64.trunc_f64_u
  local.get $0
  i64.reinterpret_f64
  i64.const 63
  i64.shr_s
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromF32 (param $0 f32) (result i32)
  i32.const 0
  local.get $0
  i64.trunc_f32_u
  local.get $0
  i32.reinterpret_f32
  i32.const 31
  i32.shr_s
  i64.extend_i32_s
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromI32 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.extend_i32_s
  local.get $0
  i32.const 63
  i32.shr_s
  i64.extend_i32_s
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromU32 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.extend_i32_u
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromBool (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromBits (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 0
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromBytesLE (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  if (result i32)
   local.get $0
   i32.load offset=12
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 120
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromBytesBE (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  i32.load offset=12
  if (result i32)
   local.get $0
   i32.load offset=12
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 130
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=8
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromUint8ArrayLE (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 140
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.fromUint8ArrayBE (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1328
   i32.const 150
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=8
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.isEmpty (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   i64.or
   i64.eqz
  else
   i32.const 1
  end
 )
 (func $assembly/integer/u128/u128.or (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.or
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.or
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.xor (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.xor
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.xor
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.and (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.and
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.and
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.shl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  i32.const 0
  local.get $0
  i64.load
  local.tee $6
  local.get $1
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $2
  i64.const 63
  i64.and
  local.tee $3
  i64.shl
  local.tee $4
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $5
  i64.and
  local.get $4
  local.get $5
  i64.const -1
  i64.xor
  i64.and
  local.get $5
  local.get $2
  local.get $2
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $6
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.and
  local.get $0
  i64.load offset=8
  local.get $3
  i64.shl
  i64.or
  i64.and
  i64.or
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.shr (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  i32.const 0
  local.get $0
  i64.load offset=8
  local.tee $5
  local.get $1
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $2
  i64.const 63
  i64.and
  local.tee $3
  i64.shr_u
  local.tee $6
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $4
  i64.const -1
  i64.xor
  i64.and
  local.get $4
  local.get $2
  local.get $2
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $5
  i64.const 64
  local.get $3
  i64.sub
  i64.shl
  i64.and
  local.get $0
  i64.load
  local.get $3
  i64.shr_u
  i64.or
  i64.and
  i64.or
  local.get $4
  local.get $6
  i64.and
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.rotl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  local.get $1
  i32.const 127
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   return
  end
  i64.const 128
  local.get $1
  i64.extend_i32_s
  local.tee $3
  i64.sub
  local.tee $2
  i64.const 63
  i64.and
  local.set $4
  local.get $0
  i64.load
  local.tee $5
  local.get $3
  i64.const 63
  i64.and
  local.tee $6
  i64.shl
  local.set $7
  i32.const 0
  local.get $0
  i64.load offset=8
  local.tee $8
  local.get $4
  i64.shr_u
  local.tee $10
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $9
  i64.const -1
  i64.xor
  i64.and
  local.get $9
  local.get $2
  local.get $2
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $8
  i64.const 64
  local.get $4
  i64.sub
  i64.shl
  i64.and
  local.get $5
  local.get $4
  i64.shr_u
  i64.or
  i64.and
  i64.or
  local.get $3
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $2
  local.get $7
  i64.and
  i64.or
  local.get $9
  local.get $10
  i64.and
  local.get $7
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  local.get $2
  local.get $3
  local.get $3
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $5
  i64.const 64
  local.get $6
  i64.sub
  i64.shr_u
  i64.and
  local.get $8
  local.get $6
  i64.shl
  i64.or
  i64.and
  i64.or
  i64.or
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.rotr (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  local.get $1
  i32.const 127
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   return
  end
  i64.const 128
  local.get $1
  i64.extend_i32_s
  local.tee $2
  i64.sub
  local.tee $3
  i64.const 63
  i64.and
  local.set $4
  i32.const 0
  local.get $3
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $5
  local.get $0
  i64.load
  local.tee $6
  local.get $4
  i64.shl
  local.tee $10
  i64.and
  local.get $0
  i64.load offset=8
  local.tee $7
  local.get $2
  i64.const 63
  i64.and
  local.tee $8
  i64.shr_u
  local.tee $11
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $9
  i64.const -1
  i64.xor
  i64.and
  local.get $9
  local.get $2
  local.get $2
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $7
  i64.const 64
  local.get $8
  i64.sub
  i64.shl
  i64.and
  local.get $6
  local.get $8
  i64.shr_u
  i64.or
  i64.and
  i64.or
  i64.or
  local.get $9
  local.get $11
  i64.and
  local.get $10
  local.get $5
  i64.const -1
  i64.xor
  i64.and
  local.get $5
  local.get $3
  local.get $3
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $6
  i64.const 64
  local.get $4
  i64.sub
  i64.shr_u
  i64.and
  local.get $7
  local.get $4
  i64.shl
  i64.or
  i64.and
  i64.or
  i64.or
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.add
  local.tee $3
  local.get $3
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.sub
  local.tee $3
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.sub
  local.get $3
  local.get $2
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  local.get $1
  i64.load
  local.tee $4
  i64.const 4294967295
  i64.and
  local.set $2
  local.get $0
  i64.load
  local.tee $5
  i64.const 4294967295
  i64.and
  local.tee $3
  local.get $4
  i64.const 32
  i64.shr_u
  local.tee $6
  i64.mul
  local.get $2
  local.get $5
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $2
  local.get $3
  i64.mul
  local.tee $3
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $8
  i64.const 4294967295
  i64.and
  i64.add
  local.set $2
  local.get $6
  local.get $7
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  i64.add
  local.get $0
  i64.load offset=8
  local.get $4
  i64.mul
  i64.add
  local.get $5
  local.get $1
  i64.load offset=8
  i64.mul
  i64.add
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  global.set $assembly/globals/__res128_hi
  i32.const 0
  local.get $3
  i64.const 4294967295
  i64.and
  local.get $2
  i64.const 32
  i64.shl
  i64.or
  global.get $assembly/globals/__res128_hi
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/globals/__udivmod128core (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  i32.const 0
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $4
  i32.const 0
  local.get $2
  local.get $3
  call $assembly/integer/u128/u128#constructor
  local.set $9
  i32.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $8
  i32.const 0
  local.get $4
  i64.load
  local.get $4
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.tee $5
  i64.load offset=8
  local.tee $2
  local.get $2
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.set $11
  i32.const 0
  local.get $9
  i64.load
  local.tee $0
  local.get $9
  i64.load offset=8
  local.tee $1
  local.get $1
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $3
  i64.const -1
  i64.xor
  local.get $1
  i64.and
  local.get $3
  local.get $9
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $3
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.tee $12
  local.get $2
  local.get $11
  i64.const -1
  i64.xor
  i64.and
  local.get $11
  local.get $5
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $11
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.tee $14
  i32.sub
  local.tee $10
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $11
  i64.const 63
  i64.and
  local.tee $3
  i64.shl
  local.tee $2
  local.get $11
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $1
  i64.and
  local.get $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  local.get $1
  local.get $11
  local.get $11
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $0
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.and
  local.get $9
  i64.load offset=8
  local.get $3
  i64.shl
  i64.or
  i64.and
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.set $7
  i32.const 0
  i32.const 0
  i64.const 1
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.tee $4
  i64.load
  local.tee $0
  i32.const 128
  local.get $12
  i32.sub
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $11
  i64.const 63
  i64.and
  local.tee $3
  i64.shl
  local.tee $2
  local.get $11
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $1
  i64.and
  local.get $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  local.get $1
  local.get $11
  local.get $11
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $0
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.and
  local.get $4
  i64.load offset=8
  local.get $3
  i64.shl
  i64.or
  i64.and
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.tee $4
  local.get $4
  i64.load offset=8
  local.get $4
  i64.load
  local.tee $1
  i64.const 1
  i64.sub
  local.tee $0
  local.get $1
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  i64.store offset=8
  local.get $4
  local.get $0
  i64.store
  i32.const 0
  local.get $4
  i64.load
  local.tee $0
  local.get $10
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $11
  i64.const 63
  i64.and
  local.tee $3
  i64.shl
  local.tee $2
  local.get $11
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $1
  i64.and
  local.get $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  local.get $1
  local.get $11
  local.get $11
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $0
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.and
  local.get $4
  i64.load offset=8
  local.get $3
  i64.shl
  i64.or
  i64.and
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.set $6
  loop $while-continue|0
   local.get $5
   i64.load offset=8
   local.tee $1
   local.get $9
   i64.load offset=8
   local.tee $0
   i64.eq
   if (result i32)
    local.get $5
    i64.load
    local.get $9
    i64.load
    i64.lt_u
   else
    local.get $1
    local.get $0
    i64.lt_u
   end
   i32.eqz
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    i32.const 0
    local.get $8
    i64.load
    local.tee $1
    i64.const 1
    i64.shl
    local.get $8
    i64.load offset=8
    i64.const 1
    i64.shl
    local.get $1
    i64.const 63
    i64.shr_u
    i64.or
    call $assembly/integer/u128/u128#constructor
    local.set $8
    i32.const 0
    local.get $5
    i64.load
    local.get $6
    local.tee $4
    i64.load
    i64.and
    local.get $5
    i64.load offset=8
    local.get $4
    i64.load offset=8
    i64.and
    call $assembly/integer/u128/u128#constructor
    local.tee $10
    i64.load offset=8
    local.tee $1
    local.get $7
    i64.load offset=8
    local.tee $0
    i64.eq
    if (result i32)
     local.get $10
     i64.load
     local.get $7
     i64.load
     i64.lt_u
    else
     local.get $1
     local.get $0
     i64.lt_u
    end
    i32.eqz
    if
     local.get $8
     local.get $8
     i64.load offset=8
     local.get $8
     i64.load
     local.tee $1
     i64.const 1
     i64.add
     local.tee $0
     local.get $1
     i64.lt_u
     i64.extend_i32_u
     i64.add
     i64.store offset=8
     local.get $8
     local.get $0
     i64.store
     i32.const 0
     local.get $5
     i64.load
     local.tee $1
     local.get $7
     i64.load
     i64.sub
     local.tee $0
     local.get $5
     i64.load offset=8
     local.get $7
     i64.load offset=8
     i64.sub
     local.get $0
     local.get $1
     i64.gt_u
     i64.extend_i32_u
     i64.sub
     call $assembly/integer/u128/u128#constructor
     local.set $5
    end
    i32.const 0
    local.get $6
    local.tee $4
    i64.load offset=8
    local.tee $1
    i64.const 1
    i64.shr_u
    local.tee $0
    i64.const 0
    i64.and
    local.get $1
    i64.const 63
    i64.shl
    local.get $4
    i64.load
    i64.const 1
    i64.shr_u
    i64.or
    i64.or
    local.get $0
    call $assembly/integer/u128/u128#constructor
    local.set $4
    i32.const 0
    local.get $6
    i64.load
    local.get $4
    i64.load
    i64.or
    local.get $6
    i64.load offset=8
    local.get $4
    i64.load offset=8
    i64.or
    call $assembly/integer/u128/u128#constructor
    local.set $6
    i32.const 0
    local.get $7
    local.tee $4
    i64.load offset=8
    local.tee $1
    i64.const 1
    i64.shr_u
    local.tee $0
    i64.const 0
    i64.and
    local.get $1
    i64.const 63
    i64.shl
    local.get $4
    i64.load
    i64.const 1
    i64.shr_u
    i64.or
    i64.or
    local.get $0
    call $assembly/integer/u128/u128#constructor
    local.set $7
    br $while-continue|0
   end
  end
  i32.const 0
  local.get $8
  local.tee $4
  i64.load
  local.tee $0
  local.get $12
  local.get $14
  i32.sub
  local.get $13
  i32.sub
  i32.const 1
  i32.add
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $11
  i64.const 63
  i64.and
  local.tee $3
  i64.shl
  local.tee $2
  local.get $11
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $1
  i64.and
  local.get $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  local.get $1
  local.get $11
  local.get $11
  i64.const 127
  i64.add
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $0
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.and
  local.get $4
  i64.load offset=8
  local.get $3
  i64.shl
  i64.or
  i64.and
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.tee $6
  i64.load offset=8
  global.set $assembly/globals/__divmod_quot_hi
  local.get $5
  i64.load
  global.set $assembly/globals/__divmod_rem
  local.get $6
  i64.load
 )
 (func $assembly/globals/__udivmod128 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $3
  local.get $3
  local.get $3
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $4
  i64.const -1
  i64.xor
  i64.and
  local.get $2
  local.get $4
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $4
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.tee $6
  i32.const 128
  i32.eq
  if
   i32.const 1392
   i32.const 1440
   i32.const 187
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $1
  local.get $1
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $4
  i64.const -1
  i64.xor
  i64.and
  local.get $0
  local.get $4
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $4
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.set $7
  local.get $3
  local.get $2
  local.get $2
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $4
  i64.and
  local.get $2
  local.get $4
  i64.const -1
  i64.xor
  i64.and
  i64.or
  i64.ctz
  i32.wrap_i64
  local.get $4
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.set $5
  local.get $0
  local.get $1
  i64.or
  i64.eqz
  if
   i64.const 0
   global.set $assembly/globals/__divmod_quot_hi
   i64.const 0
   global.set $assembly/globals/__divmod_rem
   i64.const 0
   return
  end
  local.get $6
  i32.const 127
  i32.eq
  if
   local.get $1
   global.set $assembly/globals/__divmod_quot_hi
   i64.const 0
   global.set $assembly/globals/__divmod_rem
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i64.or
  i64.eqz
  if
   i64.const 0
   global.set $assembly/globals/__divmod_quot_hi
   local.get $2
   local.get $2
   i64.const 1
   i64.sub
   i64.and
   i64.eqz
   if
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    local.get $0
    local.get $5
    i64.extend_i32_s
    i64.shr_u
    return
   else
    local.get $0
    local.get $2
    local.get $0
    local.get $2
    i64.div_u
    local.tee $0
    i64.mul
    i64.sub
    global.set $assembly/globals/__divmod_rem
    local.get $0
    return
   end
   unreachable
  end
  local.get $1
  local.get $3
  i64.sub
  local.tee $4
  i64.eqz
  if (result i64)
   local.get $0
   local.get $2
   i64.sub
  else
   local.get $4
  end
  i32.wrap_i64
  local.tee $5
  i32.const 0
  i32.le_s
  if
   i64.const 0
   global.set $assembly/globals/__divmod_quot_hi
   i64.const 0
   global.set $assembly/globals/__divmod_rem
   local.get $5
   i32.eqz
   i64.extend_i32_u
   return
  end
  block $folding-inner0
   local.get $6
   local.get $7
   i32.sub
   i32.const 5
   i32.le_s
   br_if $folding-inner0
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/globals/__udivmod128core
 )
 (func $assembly/integer/u128/u128.div (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  call $assembly/globals/__udivmod128
  global.get $assembly/globals/__divmod_quot_hi
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.rem (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  call $assembly/globals/__udivmod128
  drop
  i32.const 0
  global.get $assembly/globals/__divmod_rem
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/globals/__udivmod128_10 (param $0 i64) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i64.eqz
  if
   i64.const 0
   global.set $assembly/globals/__divmod_quot_hi
   local.get $0
   i64.const 10
   i64.lt_u
   if
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    i64.const 0
    return
   else
    local.get $0
    local.get $0
    i64.const 10
    i64.div_u
    local.tee $0
    i64.const 10
    i64.mul
    i64.sub
    global.set $assembly/globals/__divmod_rem
    local.get $0
    return
   end
   unreachable
  end
  i32.const 0
  i32.const 0
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.tee $2
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 1
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 63
  i64.shl
  local.get $3
  i64.load
  i64.const 1
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  local.get $2
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 2
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 62
  i64.shl
  local.get $3
  i64.load
  i64.const 2
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $3
  i32.const 0
  i32.const 0
  local.get $5
  i64.load
  local.tee $0
  local.get $3
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $5
  i64.load offset=8
  local.get $3
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 4
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 60
  i64.shl
  local.get $3
  i64.load
  i64.const 4
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  i32.const 0
  local.get $3
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $3
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 8
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 56
  i64.shl
  local.get $3
  i64.load
  i64.const 8
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  i32.const 0
  local.get $3
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $3
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 16
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 48
  i64.shl
  local.get $3
  i64.load
  i64.const 16
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  i32.const 0
  local.get $3
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $3
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  local.tee $0
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 32
  i64.shl
  local.get $3
  i64.load
  i64.const 32
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  i32.const 0
  local.get $3
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $3
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $5
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  local.get $3
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $3
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $5
  i64.load offset=8
  local.tee $0
  i64.const 3
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 61
  i64.shl
  local.get $5
  i64.load
  i64.const 3
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.tee $5
  i64.load
  local.tee $0
  i64.const 2
  i64.shl
  local.get $5
  i64.load offset=8
  i64.const 2
  i64.shl
  local.get $0
  i64.const 62
  i64.shr_u
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.tee $4
  i64.load
  local.tee $0
  local.get $5
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $4
  i64.load offset=8
  local.get $5
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load
  local.tee $0
  i64.const 1
  i64.shl
  local.get $3
  i64.load offset=8
  i64.const 1
  i64.shl
  local.get $0
  i64.const 63
  i64.shr_u
  i64.or
  call $assembly/integer/u128/u128#constructor
  local.set $3
  i32.const 0
  i32.const 0
  local.get $2
  i64.load
  local.tee $0
  local.get $3
  i64.load
  i64.sub
  local.tee $1
  local.get $2
  i64.load offset=8
  local.get $3
  i64.load offset=8
  i64.sub
  local.get $1
  local.get $0
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  call $assembly/integer/u128/u128#constructor
  local.tee $4
  i64.load
  i64.const 9
  i64.gt_u
  i64.extend_i32_u
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $3
  i32.const 0
  local.get $5
  i64.load
  local.tee $0
  local.get $3
  i64.load
  i64.add
  local.tee $1
  local.get $1
  local.get $0
  i64.lt_u
  i64.extend_i32_u
  local.get $5
  i64.load offset=8
  local.get $3
  i64.load offset=8
  i64.add
  i64.add
  call $assembly/integer/u128/u128#constructor
  local.tee $3
  i64.load offset=8
  global.set $assembly/globals/__divmod_quot_hi
  local.get $4
  i64.load
  global.set $assembly/globals/__divmod_rem
  local.get $3
  i64.load
 )
 (func $assembly/integer/u128/u128.div10 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/globals/__udivmod128_10
  global.get $assembly/globals/__divmod_quot_hi
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.rem10 (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/globals/__udivmod128_10
  drop
  i32.const 0
  global.get $assembly/globals/__divmod_rem
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128#sqr (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $1
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  i64.mul
  local.tee $3
  local.get $1
  local.get $1
  i64.mul
  local.tee $4
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  local.get $3
  local.get $1
  i64.const 4294967295
  i64.and
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $2
  i64.mul
  i64.add
  local.get $2
  local.get $0
  i64.load offset=8
  i64.mul
  i64.const 1
  i64.shl
  i64.add
  local.set $2
  local.get $0
  local.get $4
  i64.const 4294967295
  i64.and
  local.get $1
  i64.const 32
  i64.shl
  i64.add
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128.pow (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  i32.const 0
  i64.const 1
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.tee $2
  local.set $6
  local.get $0
  i64.load offset=8
  local.get $2
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $6
   i64.load
   i64.eq
  else
   i32.const 0
  end
  if
   local.get $2
   return
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $assembly/integer/u128/u128#constructor
   return
  end
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.set $6
  block $folding-inner0
   local.get $1
   i32.eqz
   br_if $folding-inner0
   local.get $1
   i32.const 1
   i32.eq
   if
    local.get $6
    return
   end
   local.get $0
   i64.load offset=8
   local.get $0
   i64.load
   local.tee $4
   i64.eqz
   if
    i32.const 0
    i64.const 0
    i64.const 0
    call $assembly/integer/u128/u128#constructor
    return
   end
   i64.eqz
   if
    local.get $4
    i64.const 1
    i64.sub
    local.tee $3
    i64.eqz
    br_if $folding-inner0
    local.get $3
    local.get $4
    i64.and
    i64.eqz
    if
     local.get $1
     i64.const 64
     local.get $3
     i64.clz
     i64.sub
     i32.wrap_i64
     i32.mul
     local.tee $0
     i32.const 128
     i32.lt_s
     if (result i32)
      i32.const 0
      local.get $2
      i64.load
      local.tee $4
      local.get $0
      i32.const 127
      i32.and
      i64.extend_i32_s
      local.tee $8
      i64.const 63
      i64.and
      local.tee $7
      i64.shl
      local.tee $3
      local.get $8
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.tee $5
      i64.and
      local.get $3
      local.get $5
      i64.const -1
      i64.xor
      i64.and
      local.get $5
      local.get $8
      local.get $8
      i64.const 127
      i64.add
      i64.or
      i64.const 64
      i64.and
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.get $4
      i64.const 64
      local.get $7
      i64.sub
      i64.shr_u
      i64.and
      local.get $2
      i64.load offset=8
      local.get $7
      i64.shl
      i64.or
      i64.and
      i64.or
      call $assembly/integer/u128/u128#constructor
     else
      i32.const 0
      i64.const 0
      i64.const 0
      call $assembly/integer/u128/u128#constructor
     end
     return
    end
   end
   local.get $1
   i32.const 4
   i32.le_s
   if
    local.get $6
    i64.load
    local.tee $3
    i64.const 4294967295
    i64.and
    local.tee $5
    local.get $3
    i64.const 32
    i64.shr_u
    local.tee $7
    i64.mul
    local.tee $4
    local.get $5
    local.get $5
    i64.mul
    local.tee $5
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $3
    i64.const 32
    i64.shr_u
    local.get $4
    local.get $3
    i64.const 4294967295
    i64.and
    i64.add
    local.tee $4
    i64.const 32
    i64.shr_u
    i64.add
    local.get $7
    local.get $7
    i64.mul
    i64.add
    local.get $7
    local.get $6
    i64.load offset=8
    i64.mul
    i64.const 1
    i64.shl
    i64.add
    local.set $3
    local.get $6
    local.get $5
    i64.const 4294967295
    i64.and
    local.get $4
    i64.const 32
    i64.shl
    i64.add
    i64.store
    local.get $6
    local.get $3
    i64.store offset=8
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $1
        i32.const 2
        i32.sub
        br_table $case0|1 $case1|1 $case2|1 $break|1
       end
       local.get $6
       return
      end
      local.get $0
      i64.load
      local.tee $9
      i64.const 4294967295
      i64.and
      local.set $4
      local.get $6
      i64.load
      local.tee $10
      i64.const 4294967295
      i64.and
      local.tee $3
      local.get $9
      i64.const 32
      i64.shr_u
      local.tee $7
      i64.mul
      local.get $4
      local.get $10
      i64.const 32
      i64.shr_u
      local.tee $5
      i64.mul
      local.get $3
      local.get $4
      i64.mul
      local.tee $4
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $3
      i64.const 4294967295
      i64.and
      i64.add
      local.set $8
      local.get $5
      local.get $7
      i64.mul
      local.get $3
      i64.const 32
      i64.shr_u
      i64.add
      local.get $6
      i64.load offset=8
      local.get $9
      i64.mul
      i64.add
      local.get $10
      local.get $0
      i64.load offset=8
      i64.mul
      i64.add
      local.get $8
      i64.const 32
      i64.shr_u
      i64.add
      global.set $assembly/globals/__res128_hi
      i32.const 0
      local.get $4
      i64.const 4294967295
      i64.and
      local.get $8
      i64.const 32
      i64.shl
      i64.or
      global.get $assembly/globals/__res128_hi
      call $assembly/integer/u128/u128#constructor
      return
     end
     local.get $6
     i64.load
     local.tee $3
     i64.const 4294967295
     i64.and
     local.tee $5
     local.get $3
     i64.const 32
     i64.shr_u
     local.tee $7
     i64.mul
     local.tee $4
     local.get $5
     local.get $5
     i64.mul
     local.tee $5
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $3
     i64.const 32
     i64.shr_u
     local.get $4
     local.get $3
     i64.const 4294967295
     i64.and
     i64.add
     local.tee $4
     i64.const 32
     i64.shr_u
     i64.add
     local.get $7
     local.get $7
     i64.mul
     i64.add
     local.get $7
     local.get $6
     i64.load offset=8
     i64.mul
     i64.const 1
     i64.shl
     i64.add
     local.set $3
     local.get $6
     local.get $5
     i64.const 4294967295
     i64.and
     local.get $4
     i64.const 32
     i64.shl
     i64.add
     i64.store
     local.get $6
     local.get $3
     i64.store offset=8
     local.get $6
     return
    end
   end
   i32.const 32
   local.get $1
   i32.clz
   i32.sub
   local.tee $0
   i32.const 7
   i32.le_s
   if
    block $case6|2
     block $case5|2
      block $case4|2
       block $case3|2
        block $case2|2
         block $case1|2
          local.get $0
          i32.const 7
          i32.ne
          if
           local.get $0
           i32.const 1
           i32.sub
           br_table $case6|2 $case5|2 $case4|2 $case3|2 $case2|2 $case1|2 $folding-inner0
          end
          local.get $1
          i32.const 1
          i32.and
          if
           local.get $6
           i64.load
           local.tee $9
           i64.const 4294967295
           i64.and
           local.set $4
           local.get $2
           i64.load
           local.tee $10
           i64.const 4294967295
           i64.and
           local.tee $3
           local.get $9
           i64.const 32
           i64.shr_u
           local.tee $7
           i64.mul
           local.get $4
           local.get $10
           i64.const 32
           i64.shr_u
           local.tee $5
           i64.mul
           local.get $3
           local.get $4
           i64.mul
           local.tee $4
           i64.const 32
           i64.shr_u
           i64.add
           local.tee $3
           i64.const 4294967295
           i64.and
           i64.add
           local.set $8
           local.get $5
           local.get $7
           i64.mul
           local.get $3
           i64.const 32
           i64.shr_u
           i64.add
           local.get $2
           i64.load offset=8
           local.get $9
           i64.mul
           i64.add
           local.get $10
           local.get $6
           i64.load offset=8
           i64.mul
           i64.add
           local.get $8
           i64.const 32
           i64.shr_u
           i64.add
           global.set $assembly/globals/__res128_hi
           i32.const 0
           local.get $4
           i64.const 4294967295
           i64.and
           local.get $8
           i64.const 32
           i64.shl
           i64.or
           global.get $assembly/globals/__res128_hi
           call $assembly/integer/u128/u128#constructor
           local.set $2
          end
          local.get $1
          i32.const 1
          i32.shr_s
          local.set $1
          local.get $6
          i64.load
          local.tee $3
          i64.const 4294967295
          i64.and
          local.tee $5
          local.get $3
          i64.const 32
          i64.shr_u
          local.tee $7
          i64.mul
          local.tee $4
          local.get $5
          local.get $5
          i64.mul
          local.tee $5
          i64.const 32
          i64.shr_u
          i64.add
          local.tee $3
          i64.const 32
          i64.shr_u
          local.get $4
          local.get $3
          i64.const 4294967295
          i64.and
          i64.add
          local.tee $4
          i64.const 32
          i64.shr_u
          i64.add
          local.get $7
          local.get $7
          i64.mul
          i64.add
          local.get $7
          local.get $6
          i64.load offset=8
          i64.mul
          i64.const 1
          i64.shl
          i64.add
          local.set $3
          local.get $6
          local.get $5
          i64.const 4294967295
          i64.and
          local.get $4
          i64.const 32
          i64.shl
          i64.add
          i64.store
          local.get $6
          local.get $3
          i64.store offset=8
         end
         local.get $1
         i32.const 1
         i32.and
         if
          local.get $6
          i64.load
          local.tee $9
          i64.const 4294967295
          i64.and
          local.set $4
          local.get $2
          i64.load
          local.tee $10
          i64.const 4294967295
          i64.and
          local.tee $3
          local.get $9
          i64.const 32
          i64.shr_u
          local.tee $7
          i64.mul
          local.get $4
          local.get $10
          i64.const 32
          i64.shr_u
          local.tee $5
          i64.mul
          local.get $3
          local.get $4
          i64.mul
          local.tee $4
          i64.const 32
          i64.shr_u
          i64.add
          local.tee $3
          i64.const 4294967295
          i64.and
          i64.add
          local.set $8
          local.get $5
          local.get $7
          i64.mul
          local.get $3
          i64.const 32
          i64.shr_u
          i64.add
          local.get $2
          i64.load offset=8
          local.get $9
          i64.mul
          i64.add
          local.get $10
          local.get $6
          i64.load offset=8
          i64.mul
          i64.add
          local.get $8
          i64.const 32
          i64.shr_u
          i64.add
          global.set $assembly/globals/__res128_hi
          i32.const 0
          local.get $4
          i64.const 4294967295
          i64.and
          local.get $8
          i64.const 32
          i64.shl
          i64.or
          global.get $assembly/globals/__res128_hi
          call $assembly/integer/u128/u128#constructor
          local.set $2
         end
         local.get $1
         i32.const 1
         i32.shr_s
         local.set $1
         local.get $6
         i64.load
         local.tee $3
         i64.const 4294967295
         i64.and
         local.tee $5
         local.get $3
         i64.const 32
         i64.shr_u
         local.tee $7
         i64.mul
         local.tee $4
         local.get $5
         local.get $5
         i64.mul
         local.tee $5
         i64.const 32
         i64.shr_u
         i64.add
         local.tee $3
         i64.const 32
         i64.shr_u
         local.get $4
         local.get $3
         i64.const 4294967295
         i64.and
         i64.add
         local.tee $4
         i64.const 32
         i64.shr_u
         i64.add
         local.get $7
         local.get $7
         i64.mul
         i64.add
         local.get $7
         local.get $6
         i64.load offset=8
         i64.mul
         i64.const 1
         i64.shl
         i64.add
         local.set $3
         local.get $6
         local.get $5
         i64.const 4294967295
         i64.and
         local.get $4
         i64.const 32
         i64.shl
         i64.add
         i64.store
         local.get $6
         local.get $3
         i64.store offset=8
        end
        local.get $1
        i32.const 1
        i32.and
        if
         local.get $6
         i64.load
         local.tee $9
         i64.const 4294967295
         i64.and
         local.set $4
         local.get $2
         i64.load
         local.tee $10
         i64.const 4294967295
         i64.and
         local.tee $3
         local.get $9
         i64.const 32
         i64.shr_u
         local.tee $7
         i64.mul
         local.get $4
         local.get $10
         i64.const 32
         i64.shr_u
         local.tee $5
         i64.mul
         local.get $3
         local.get $4
         i64.mul
         local.tee $4
         i64.const 32
         i64.shr_u
         i64.add
         local.tee $3
         i64.const 4294967295
         i64.and
         i64.add
         local.set $8
         local.get $5
         local.get $7
         i64.mul
         local.get $3
         i64.const 32
         i64.shr_u
         i64.add
         local.get $2
         i64.load offset=8
         local.get $9
         i64.mul
         i64.add
         local.get $10
         local.get $6
         i64.load offset=8
         i64.mul
         i64.add
         local.get $8
         i64.const 32
         i64.shr_u
         i64.add
         global.set $assembly/globals/__res128_hi
         i32.const 0
         local.get $4
         i64.const 4294967295
         i64.and
         local.get $8
         i64.const 32
         i64.shl
         i64.or
         global.get $assembly/globals/__res128_hi
         call $assembly/integer/u128/u128#constructor
         local.set $2
        end
        local.get $1
        i32.const 1
        i32.shr_s
        local.set $1
        local.get $6
        i64.load
        local.tee $3
        i64.const 4294967295
        i64.and
        local.tee $5
        local.get $3
        i64.const 32
        i64.shr_u
        local.tee $7
        i64.mul
        local.tee $4
        local.get $5
        local.get $5
        i64.mul
        local.tee $5
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $3
        i64.const 32
        i64.shr_u
        local.get $4
        local.get $3
        i64.const 4294967295
        i64.and
        i64.add
        local.tee $4
        i64.const 32
        i64.shr_u
        i64.add
        local.get $7
        local.get $7
        i64.mul
        i64.add
        local.get $7
        local.get $6
        i64.load offset=8
        i64.mul
        i64.const 1
        i64.shl
        i64.add
        local.set $3
        local.get $6
        local.get $5
        i64.const 4294967295
        i64.and
        local.get $4
        i64.const 32
        i64.shl
        i64.add
        i64.store
        local.get $6
        local.get $3
        i64.store offset=8
       end
       local.get $1
       i32.const 1
       i32.and
       if
        local.get $6
        i64.load
        local.tee $9
        i64.const 4294967295
        i64.and
        local.set $4
        local.get $2
        i64.load
        local.tee $10
        i64.const 4294967295
        i64.and
        local.tee $3
        local.get $9
        i64.const 32
        i64.shr_u
        local.tee $7
        i64.mul
        local.get $4
        local.get $10
        i64.const 32
        i64.shr_u
        local.tee $5
        i64.mul
        local.get $3
        local.get $4
        i64.mul
        local.tee $4
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $3
        i64.const 4294967295
        i64.and
        i64.add
        local.set $8
        local.get $5
        local.get $7
        i64.mul
        local.get $3
        i64.const 32
        i64.shr_u
        i64.add
        local.get $2
        i64.load offset=8
        local.get $9
        i64.mul
        i64.add
        local.get $10
        local.get $6
        i64.load offset=8
        i64.mul
        i64.add
        local.get $8
        i64.const 32
        i64.shr_u
        i64.add
        global.set $assembly/globals/__res128_hi
        i32.const 0
        local.get $4
        i64.const 4294967295
        i64.and
        local.get $8
        i64.const 32
        i64.shl
        i64.or
        global.get $assembly/globals/__res128_hi
        call $assembly/integer/u128/u128#constructor
        local.set $2
       end
       local.get $1
       i32.const 1
       i32.shr_s
       local.set $1
       local.get $6
       i64.load
       local.tee $3
       i64.const 4294967295
       i64.and
       local.tee $5
       local.get $3
       i64.const 32
       i64.shr_u
       local.tee $7
       i64.mul
       local.tee $4
       local.get $5
       local.get $5
       i64.mul
       local.tee $5
       i64.const 32
       i64.shr_u
       i64.add
       local.tee $3
       i64.const 32
       i64.shr_u
       local.get $4
       local.get $3
       i64.const 4294967295
       i64.and
       i64.add
       local.tee $4
       i64.const 32
       i64.shr_u
       i64.add
       local.get $7
       local.get $7
       i64.mul
       i64.add
       local.get $7
       local.get $6
       i64.load offset=8
       i64.mul
       i64.const 1
       i64.shl
       i64.add
       local.set $3
       local.get $6
       local.get $5
       i64.const 4294967295
       i64.and
       local.get $4
       i64.const 32
       i64.shl
       i64.add
       i64.store
       local.get $6
       local.get $3
       i64.store offset=8
      end
      local.get $1
      i32.const 1
      i32.and
      if
       local.get $6
       i64.load
       local.tee $9
       i64.const 4294967295
       i64.and
       local.set $4
       local.get $2
       i64.load
       local.tee $10
       i64.const 4294967295
       i64.and
       local.tee $3
       local.get $9
       i64.const 32
       i64.shr_u
       local.tee $7
       i64.mul
       local.get $4
       local.get $10
       i64.const 32
       i64.shr_u
       local.tee $5
       i64.mul
       local.get $3
       local.get $4
       i64.mul
       local.tee $4
       i64.const 32
       i64.shr_u
       i64.add
       local.tee $3
       i64.const 4294967295
       i64.and
       i64.add
       local.set $8
       local.get $5
       local.get $7
       i64.mul
       local.get $3
       i64.const 32
       i64.shr_u
       i64.add
       local.get $2
       i64.load offset=8
       local.get $9
       i64.mul
       i64.add
       local.get $10
       local.get $6
       i64.load offset=8
       i64.mul
       i64.add
       local.get $8
       i64.const 32
       i64.shr_u
       i64.add
       global.set $assembly/globals/__res128_hi
       i32.const 0
       local.get $4
       i64.const 4294967295
       i64.and
       local.get $8
       i64.const 32
       i64.shl
       i64.or
       global.get $assembly/globals/__res128_hi
       call $assembly/integer/u128/u128#constructor
       local.set $2
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      local.get $6
      i64.load
      local.tee $3
      i64.const 4294967295
      i64.and
      local.tee $5
      local.get $3
      i64.const 32
      i64.shr_u
      local.tee $7
      i64.mul
      local.tee $4
      local.get $5
      local.get $5
      i64.mul
      local.tee $5
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $3
      i64.const 32
      i64.shr_u
      local.get $4
      local.get $3
      i64.const 4294967295
      i64.and
      i64.add
      local.tee $4
      i64.const 32
      i64.shr_u
      i64.add
      local.get $7
      local.get $7
      i64.mul
      i64.add
      local.get $7
      local.get $6
      i64.load offset=8
      i64.mul
      i64.const 1
      i64.shl
      i64.add
      local.set $3
      local.get $6
      local.get $5
      i64.const 4294967295
      i64.and
      local.get $4
      i64.const 32
      i64.shl
      i64.add
      i64.store
      local.get $6
      local.get $3
      i64.store offset=8
     end
     local.get $1
     i32.const 1
     i32.and
     if
      local.get $6
      i64.load
      local.tee $9
      i64.const 4294967295
      i64.and
      local.set $4
      local.get $2
      i64.load
      local.tee $10
      i64.const 4294967295
      i64.and
      local.tee $3
      local.get $9
      i64.const 32
      i64.shr_u
      local.tee $7
      i64.mul
      local.get $4
      local.get $10
      i64.const 32
      i64.shr_u
      local.tee $5
      i64.mul
      local.get $3
      local.get $4
      i64.mul
      local.tee $4
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $3
      i64.const 4294967295
      i64.and
      i64.add
      local.set $8
      local.get $5
      local.get $7
      i64.mul
      local.get $3
      i64.const 32
      i64.shr_u
      i64.add
      local.get $2
      i64.load offset=8
      local.get $9
      i64.mul
      i64.add
      local.get $10
      local.get $6
      i64.load offset=8
      i64.mul
      i64.add
      local.get $8
      i64.const 32
      i64.shr_u
      i64.add
      global.set $assembly/globals/__res128_hi
      i32.const 0
      local.get $4
      i64.const 4294967295
      i64.and
      local.get $8
      i64.const 32
      i64.shl
      i64.or
      global.get $assembly/globals/__res128_hi
      call $assembly/integer/u128/u128#constructor
      local.set $2
     end
     local.get $1
     i32.const 1
     i32.shr_s
     local.set $1
     local.get $6
     i64.load
     local.tee $3
     i64.const 4294967295
     i64.and
     local.tee $5
     local.get $3
     i64.const 32
     i64.shr_u
     local.tee $7
     i64.mul
     local.tee $4
     local.get $5
     local.get $5
     i64.mul
     local.tee $5
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $3
     i64.const 32
     i64.shr_u
     local.get $4
     local.get $3
     i64.const 4294967295
     i64.and
     i64.add
     local.tee $4
     i64.const 32
     i64.shr_u
     i64.add
     local.get $7
     local.get $7
     i64.mul
     i64.add
     local.get $7
     local.get $6
     i64.load offset=8
     i64.mul
     i64.const 1
     i64.shl
     i64.add
     local.set $3
     local.get $6
     local.get $5
     i64.const 4294967295
     i64.and
     local.get $4
     i64.const 32
     i64.shl
     i64.add
     i64.store
     local.get $6
     local.get $3
     i64.store offset=8
    end
    local.get $1
    i32.const 1
    i32.and
    if
     local.get $6
     i64.load
     local.tee $9
     i64.const 4294967295
     i64.and
     local.set $4
     local.get $2
     i64.load
     local.tee $10
     i64.const 4294967295
     i64.and
     local.tee $3
     local.get $9
     i64.const 32
     i64.shr_u
     local.tee $7
     i64.mul
     local.get $4
     local.get $10
     i64.const 32
     i64.shr_u
     local.tee $5
     i64.mul
     local.get $3
     local.get $4
     i64.mul
     local.tee $4
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $3
     i64.const 4294967295
     i64.and
     i64.add
     local.set $8
     local.get $5
     local.get $7
     i64.mul
     local.get $3
     i64.const 32
     i64.shr_u
     i64.add
     local.get $2
     i64.load offset=8
     local.get $9
     i64.mul
     i64.add
     local.get $10
     local.get $6
     i64.load offset=8
     i64.mul
     i64.add
     local.get $8
     i64.const 32
     i64.shr_u
     i64.add
     global.set $assembly/globals/__res128_hi
     i32.const 0
     local.get $4
     i64.const 4294967295
     i64.and
     local.get $8
     i64.const 32
     i64.shl
     i64.or
     global.get $assembly/globals/__res128_hi
     call $assembly/integer/u128/u128#constructor
     local.set $2
    end
    br $folding-inner0
   end
   loop $while-continue|3
    local.get $1
    i32.const 0
    i32.gt_s
    if
     local.get $1
     i32.const 1
     i32.and
     if
      local.get $6
      i64.load
      local.tee $9
      i64.const 4294967295
      i64.and
      local.set $4
      local.get $2
      i64.load
      local.tee $10
      i64.const 4294967295
      i64.and
      local.tee $3
      local.get $9
      i64.const 32
      i64.shr_u
      local.tee $7
      i64.mul
      local.get $4
      local.get $10
      i64.const 32
      i64.shr_u
      local.tee $5
      i64.mul
      local.get $3
      local.get $4
      i64.mul
      local.tee $4
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $3
      i64.const 4294967295
      i64.and
      i64.add
      local.set $8
      local.get $5
      local.get $7
      i64.mul
      local.get $3
      i64.const 32
      i64.shr_u
      i64.add
      local.get $2
      i64.load offset=8
      local.get $9
      i64.mul
      i64.add
      local.get $10
      local.get $6
      i64.load offset=8
      i64.mul
      i64.add
      local.get $8
      i64.const 32
      i64.shr_u
      i64.add
      global.set $assembly/globals/__res128_hi
      i32.const 0
      local.get $4
      i64.const 4294967295
      i64.and
      local.get $8
      i64.const 32
      i64.shl
      i64.or
      global.get $assembly/globals/__res128_hi
      call $assembly/integer/u128/u128#constructor
      local.set $2
     end
     local.get $1
     i32.const 1
     i32.shr_s
     local.set $1
     local.get $6
     i64.load
     local.tee $3
     i64.const 4294967295
     i64.and
     local.tee $5
     local.get $3
     i64.const 32
     i64.shr_u
     local.tee $7
     i64.mul
     local.tee $4
     local.get $5
     local.get $5
     i64.mul
     local.tee $5
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $3
     i64.const 32
     i64.shr_u
     local.get $4
     local.get $3
     i64.const 4294967295
     i64.and
     i64.add
     local.tee $4
     i64.const 32
     i64.shr_u
     i64.add
     local.get $7
     local.get $7
     i64.mul
     i64.add
     local.get $7
     local.get $6
     i64.load offset=8
     i64.mul
     i64.const 1
     i64.shl
     i64.add
     local.set $3
     local.get $6
     local.get $5
     i64.const 4294967295
     i64.and
     local.get $4
     i64.const 32
     i64.shl
     i64.add
     i64.store
     local.get $6
     local.get $3
     i64.store offset=8
     br $while-continue|3
    end
   end
   local.get $2
   return
  end
  local.get $2
 )
 (func $assembly/integer/u128/u128.sqrt (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  i32.const 0
  i64.const 1
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $2
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $2
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $2
   i64.load
   i64.gt_u
  else
   local.get $4
   local.get $3
   i64.gt_u
  end
  i32.eqz
  if
   local.get $0
   return
  end
  i32.const 0
  i64.const 3
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $2
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $2
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $2
   i64.load
   i64.gt_u
  else
   local.get $4
   local.get $3
   i64.gt_u
  end
  i32.eqz
  if
   i32.const 0
   i64.const 1
   i64.const 0
   call $assembly/integer/u128/u128#constructor
   return
  end
  i64.const -9223372036854775808
  local.set $4
  i32.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u128/u128#constructor
  local.set $2
  loop $for-loop|0
   local.get $7
   i32.const 64
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $4
    i64.or
    i64.store
    local.get $2
    i64.const 0
    i64.store offset=8
    local.get $2
    i64.load
    local.tee $3
    i64.const 4294967295
    i64.and
    local.set $5
    local.get $2
    i64.load
    local.tee $8
    i64.const 4294967295
    i64.and
    local.tee $6
    local.get $3
    i64.const 32
    i64.shr_u
    local.tee $9
    i64.mul
    local.get $5
    local.get $8
    i64.const 32
    i64.shr_u
    local.tee $10
    i64.mul
    local.get $5
    local.get $6
    i64.mul
    local.tee $6
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $11
    i64.const 4294967295
    i64.and
    i64.add
    local.set $5
    local.get $9
    local.get $10
    i64.mul
    local.get $11
    i64.const 32
    i64.shr_u
    i64.add
    local.get $2
    i64.load offset=8
    local.get $3
    i64.mul
    i64.add
    local.get $8
    local.get $2
    i64.load offset=8
    i64.mul
    i64.add
    local.get $5
    i64.const 32
    i64.shr_u
    i64.add
    global.set $assembly/globals/__res128_hi
    i32.const 0
    local.get $6
    i64.const 4294967295
    i64.and
    local.get $5
    i64.const 32
    i64.shl
    i64.or
    global.get $assembly/globals/__res128_hi
    call $assembly/integer/u128/u128#constructor
    local.tee $12
    i64.load offset=8
    local.tee $3
    local.get $0
    i64.load offset=8
    local.tee $5
    i64.eq
    if (result i32)
     local.get $0
     i64.load
     local.get $12
     i64.load
     i64.lt_u
    else
     local.get $5
     local.get $3
     i64.lt_u
    end
    i32.eqz
    if
     local.get $2
     i64.load
     local.set $1
    end
    local.get $4
    i64.const 1
    i64.shr_u
    local.set $4
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $1
  i64.const 0
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128.eq (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.eq
  else
   i32.const 0
  end
 )
 (func $assembly/integer/u128/u128.ne (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
 )
 (func $assembly/integer/u128/u128.lt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.lt_u
  else
   local.get $2
   local.get $3
   i64.lt_u
  end
 )
 (func $assembly/integer/u128/u128.gt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.gt_u
  else
   local.get $2
   local.get $3
   i64.gt_u
  end
 )
 (func $assembly/integer/u128/u128.le (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.gt_u
  else
   local.get $2
   local.get $3
   i64.gt_u
  end
  i32.eqz
 )
 (func $assembly/integer/u128/u128.ge (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.lt_u
  else
   local.get $2
   local.get $3
   i64.lt_u
  end
  i32.eqz
 )
 (func $assembly/integer/u128/u128.ord (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.sub
  local.tee $2
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.sub
  local.get $2
  i64.const 0
  i64.ne
  select
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128.popcnt (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.popcnt
  local.get $0
  i64.load offset=8
  i64.popcnt
  i64.add
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128.clz (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $2
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $1
  i64.const -1
  i64.xor
  local.get $2
  i64.and
  local.get $1
  local.get $0
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $1
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
 )
 (func $assembly/integer/u128/u128.ctz (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load
  local.tee $1
  local.get $1
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $2
  local.get $0
  i64.load offset=8
  i64.and
  local.get $1
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  i64.or
  i64.ctz
  i32.wrap_i64
  local.get $2
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
 )
 (func $assembly/integer/u128/u128.sqr (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.tee $0
  i64.load
  local.tee $1
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.mul
  local.tee $3
  local.get $2
  local.get $2
  i64.mul
  local.tee $2
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 32
  i64.shr_u
  local.get $3
  local.get $4
  i64.const 4294967295
  i64.and
  i64.add
  local.tee $3
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $1
  i64.mul
  i64.add
  local.get $1
  local.get $0
  i64.load offset=8
  i64.mul
  i64.const 1
  i64.shl
  i64.add
  local.set $1
  local.get $0
  local.get $2
  i64.const 4294967295
  i64.and
  local.get $3
  i64.const 32
  i64.shl
  i64.add
  i64.store
  local.get $0
  local.get $1
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u256/u256#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   i32.const 6
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
  local.get $3
  i64.store offset=16
  local.get $0
  local.get $4
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u128/u128.mulq (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u128/u128#get:lo (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $assembly/integer/u128/u128#set:lo (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $assembly/integer/u128/u128#get:hi (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $assembly/integer/u128/u128#set:hi (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $assembly/integer/u128/u128#set (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.load
  i64.store
  local.get $0
  local.get $1
  i64.load offset=8
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#setI64 (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $1
  i64.const 63
  i64.shr_s
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#setU64 (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#setI32 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.extend_i32_s
  i64.store
  local.get $0
  local.get $1
  i32.const 63
  i32.shr_s
  i64.extend_i32_s
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#setU32 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#isZero (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
 )
 (func $assembly/integer/u128/u128#not (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=8
  i64.const -1
  i64.xor
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128#neg (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  i32.const 0
  local.get $0
  i64.load
  i64.const -1
  i64.xor
  local.tee $1
  i64.const 1
  i64.add
  local.tee $2
  local.get $2
  local.get $1
  i64.lt_u
  i64.extend_i32_u
  local.get $0
  i64.load offset=8
  i64.const -1
  i64.xor
  i64.add
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128#preInc (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load
  local.tee $1
  i64.const 1
  i64.add
  local.tee $2
  local.get $1
  i64.lt_u
  i64.extend_i32_u
  i64.add
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#preDec (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load
  local.tee $1
  i64.const 1
  i64.sub
  local.tee $2
  local.get $1
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#postInc (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.tee $0
  i64.load
  local.tee $2
  i64.const 1
  i64.add
  local.set $1
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $1
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  i64.add
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#postDec (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.tee $0
  i64.load
  local.tee $2
  i64.const 1
  i64.sub
  local.set $1
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $1
  local.get $2
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#toI256 (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load
  local.set $1
  local.get $0
  i64.load offset=8
  local.set $2
  i32.const 32
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u128/u128#toU256 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u128/u128#toI128 (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load
  local.set $1
  local.get $0
  i64.load offset=8
  local.set $2
  i32.const 16
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#toI64 (param $0 i32) (result i64)
  local.get $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=8
  i64.const -9223372036854775808
  i64.and
  i64.or
 )
 (func $assembly/integer/u128/u128#toI32 (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=8
  i64.const -9223372036854775808
  i64.and
  i64.or
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128#toU32 (param $0 i32) (result i32)
  local.get $0
  i64.load
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128#toBool (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.const 0
  i64.ne
 )
 (func $assembly/globals/__floatuntidf (param $0 i64) (param $1 i64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i64.or
  i64.eqz
  if
   f64.const 0
   return
  end
  i32.const 0
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#constructor
  local.set $2
  i32.const 128
  local.get $1
  local.get $1
  local.get $1
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $1
  i64.const -1
  i64.xor
  i64.and
  local.get $0
  local.get $1
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $1
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  i32.sub
  local.tee $3
  i32.const 1
  i32.sub
  local.set $7
  local.get $3
  i32.const 53
  i32.gt_s
  if (result i32)
   local.get $3
   i32.const 55
   i32.ne
   if
    local.get $3
    i32.const 54
    i32.eq
    if (result i32)
     i32.const 0
     local.get $2
     i64.load
     local.tee $0
     i64.const 1
     i64.shl
     local.get $2
     i64.load offset=8
     i64.const 1
     i64.shl
     local.get $0
     i64.const 63
     i64.shr_u
     i64.or
     call $assembly/integer/u128/u128#constructor
    else
     i32.const 0
     local.get $2
     i64.load offset=8
     local.tee $5
     local.get $3
     i32.const 55
     i32.sub
     i32.const 127
     i32.and
     i64.extend_i32_s
     local.tee $0
     i64.const 63
     i64.and
     local.tee $1
     i64.shr_u
     local.tee $6
     local.get $0
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.tee $4
     i64.const -1
     i64.xor
     i64.and
     local.get $4
     local.get $0
     local.get $0
     i64.const 127
     i64.add
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.get $5
     i64.const 64
     local.get $1
     i64.sub
     i64.shl
     i64.and
     local.get $2
     i64.load
     local.get $1
     i64.shr_u
     i64.or
     i64.and
     i64.or
     local.get $4
     local.get $6
     i64.and
     call $assembly/integer/u128/u128#constructor
     local.set $8
     i32.const 0
     i32.const 0
     i64.const -1
     i64.const -1
     call $assembly/integer/u128/u128#constructor
     local.tee $9
     i64.load offset=8
     local.tee $5
     i32.const 183
     local.get $3
     i32.sub
     i32.const 127
     i32.and
     i64.extend_i32_s
     local.tee $0
     i64.const 63
     i64.and
     local.tee $1
     i64.shr_u
     local.tee $6
     local.get $0
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.tee $4
     i64.const -1
     i64.xor
     i64.and
     local.get $4
     local.get $0
     local.get $0
     i64.const 127
     i64.add
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.get $5
     i64.const 64
     local.get $1
     i64.sub
     i64.shl
     i64.and
     local.get $9
     i64.load
     local.get $1
     i64.shr_u
     i64.or
     i64.and
     i64.or
     local.get $4
     local.get $6
     i64.and
     call $assembly/integer/u128/u128#constructor
     local.set $3
     i32.const 0
     i32.const 0
     local.get $2
     i64.load
     local.get $3
     i64.load
     i64.and
     local.get $2
     i64.load offset=8
     local.get $3
     i64.load offset=8
     i64.and
     call $assembly/integer/u128/u128#constructor
     local.tee $2
     i64.load
     local.get $2
     i64.load offset=8
     i64.or
     i64.const 0
     i64.ne
     i32.const 0
     i32.ne
     i64.extend_i32_u
     i64.const 0
     call $assembly/integer/u128/u128#constructor
     local.set $2
     i32.const 0
     local.get $8
     i64.load
     local.get $2
     i64.load
     i64.or
     local.get $8
     i64.load offset=8
     local.get $2
     i64.load offset=8
     i64.or
     call $assembly/integer/u128/u128#constructor
    end
    local.set $2
   end
   local.get $2
   local.get $2
   i64.load
   local.get $2
   i64.load
   i64.const 4
   i64.and
   i64.const 2
   i64.shr_u
   i64.or
   i64.store
   local.get $2
   local.get $2
   i64.load offset=8
   local.get $2
   i64.load
   local.tee $0
   i64.const 1
   i64.add
   local.tee $1
   local.get $0
   i64.lt_u
   i64.extend_i32_u
   i64.add
   i64.store offset=8
   local.get $2
   local.get $1
   i64.store
   i32.const 0
   local.get $2
   i64.load offset=8
   local.tee $0
   i64.const 2
   i64.shr_u
   local.tee $1
   i64.const 0
   i64.and
   local.get $0
   i64.const 62
   i64.shl
   local.get $2
   i64.load
   i64.const 2
   i64.shr_u
   i64.or
   i64.or
   local.get $1
   call $assembly/integer/u128/u128#constructor
   local.tee $2
   i64.load
   i64.const 9007199254740992
   i64.and
   i64.const 0
   i64.ne
   if (result i32)
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    i32.const 0
    local.get $2
    i64.load offset=8
    local.tee $0
    i64.const 1
    i64.shr_u
    local.tee $1
    i64.const 0
    i64.and
    local.get $0
    i64.const 63
    i64.shl
    local.get $2
    i64.load
    i64.const 1
    i64.shr_u
    i64.or
    i64.or
    local.get $1
    call $assembly/integer/u128/u128#constructor
   else
    local.get $2
   end
  else
   i32.const 0
   local.get $2
   i64.load
   local.tee $6
   i32.const 53
   local.get $3
   i32.sub
   i32.const 127
   i32.and
   i64.extend_i32_s
   local.tee $0
   i64.const 63
   i64.and
   local.tee $1
   i64.shl
   local.tee $4
   local.get $0
   i64.const 6
   i64.shr_u
   i64.const 1
   i64.sub
   local.tee $5
   i64.and
   local.get $4
   local.get $5
   i64.const -1
   i64.xor
   i64.and
   local.get $5
   local.get $0
   local.get $0
   i64.const 127
   i64.add
   i64.or
   i64.const 64
   i64.and
   i64.const 6
   i64.shr_u
   i64.const 1
   i64.sub
   local.get $6
   i64.const 64
   local.get $1
   i64.sub
   i64.shr_u
   i64.and
   local.get $2
   i64.load offset=8
   local.get $1
   i64.shl
   i64.or
   i64.and
   i64.or
   call $assembly/integer/u128/u128#constructor
  end
  local.set $2
  local.get $7
  i32.const 1023
  i32.add
  i32.const 20
  i32.shl
  i64.extend_i32_s
  i32.const 0
  local.get $2
  i64.load offset=8
  local.tee $0
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.const 0
  i64.and
  local.get $0
  i64.const 32
  i64.shl
  local.get $2
  i64.load
  i64.const 32
  i64.shr_u
  i64.or
  i64.or
  local.get $1
  call $assembly/integer/u128/u128#constructor
  i64.load
  i64.const 1048575
  i64.and
  i64.or
  i64.const 32
  i64.shl
  local.get $2
  i64.load
  i64.const 4294967295
  i64.and
  i64.or
  f64.reinterpret_i64
 )
 (func $assembly/integer/u128/u128#toF64 (param $0 i32) (result f64)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/globals/__floatuntidf
 )
 (func $assembly/integer/u128/u128#toF32 (param $0 i32) (result f32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/globals/__floatuntidf
  f32.demote_f64
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1504
   i32.const 1552
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.load
  drop
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $assembly/integer/u128/u128#toBytes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  call $~lib/array/Array<u8>#constructor
  local.tee $4
  i32.load offset=4
  local.set $3
  local.get $1
  if
   local.get $3
   local.get $0
   i64.load offset=8
   local.tee $2
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $2
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $2
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $2
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store
   local.get $3
   local.get $0
   i64.load
   local.tee $2
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $2
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $2
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $2
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store offset=8
  else
   local.get $3
   local.get $0
   i64.load
   i64.store
   local.get $3
   local.get $0
   i64.load offset=8
   i64.store offset=8
  end
  local.get $4
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1504
   i32.const 1600
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#toUint8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i32.const 12
  i32.const 8
  call $~lib/rt/stub/__alloc
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $4
  i32.load offset=4
  local.set $3
  local.get $1
  if
   local.get $3
   local.get $0
   i64.load offset=8
   local.tee $2
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $2
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $2
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $2
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store
   local.get $3
   local.get $0
   i64.load
   local.tee $2
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $2
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $2
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $2
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store offset=8
  else
   local.get $3
   local.get $0
   i64.load
   i64.store
   local.get $3
   local.get $0
   i64.load offset=8
   i64.store offset=8
  end
  local.get $4
 )
 (func $~lib/string/String#charAt (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1036
  i32.load
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1792
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 1040
  i32.add
  i32.load16_u
  i32.store16
  local.get $1
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $4
      i32.const 2
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   i32.const 1
   local.get $0
   local.get $4
   i32.add
   local.get $1
   i32.le_u
   local.get $1
   local.get $4
   i32.add
   local.get $0
   i32.le_u
   select
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  i32.const 1808
  local.get $1
  select
  local.tee $1
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 1792
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1840
   i32.const 1904
   i32.const 24
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1840
   i32.const 1904
   i32.const 35
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $assembly/utils/processU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $2
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $3
  i32.const 63
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     local.get $3
     i32.le_s
     if
      local.get $2
      local.get $0
      local.get $2
      local.get $0
      call $~lib/typedarray/Int8Array#__get
      local.get $2
      local.get $0
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $3
    local.set $0
    loop $for-loop|2
     local.get $0
     i32.const -1
     i32.ne
     if
      local.get $2
      local.get $0
      local.get $2
      local.get $0
      call $~lib/typedarray/Int8Array#__get
      i32.const 25
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $0
      local.get $3
      i32.lt_s
      if
       local.get $2
       local.get $0
       i32.const 1
       i32.add
       local.tee $5
       local.get $2
       local.get $5
       call $~lib/typedarray/Int8Array#__get
       local.get $2
       local.get $0
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $2
      local.get $0
      local.get $2
      local.get $0
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $for-loop|2
     end
    end
    local.get $2
    i32.const 0
    local.get $2
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $4
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $assembly/integer/u128/u128#toString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  i32.const 1
  local.get $1
  i32.const 16
  i32.eq
  local.get $1
  i32.const 10
  i32.eq
  select
  i32.eqz
  if
   i32.const 1664
   i32.const 1328
   i32.const 909
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 1760
   return
  end
  i32.const 1792
  local.set $2
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/integer/u128/u128#constructor
  local.set $3
  local.get $1
  i32.const 16
  i32.eq
  if
   i32.const 124
   local.get $3
   i64.load offset=8
   local.tee $5
   local.get $5
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   local.tee $4
   i64.const -1
   i64.xor
   local.get $5
   i64.and
   local.get $4
   local.get $3
   i64.load
   i64.and
   i64.or
   i64.clz
   i32.wrap_i64
   local.get $4
   i32.wrap_i64
   i32.const 64
   i32.and
   i32.add
   i32.const -4
   i32.and
   i32.sub
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 0
     local.get $3
     i64.load offset=8
     local.tee $7
     local.get $0
     i32.const 127
     i32.and
     i64.extend_i32_s
     local.tee $4
     i64.const 63
     i64.and
     local.tee $5
     i64.shr_u
     local.tee $8
     local.get $4
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.tee $6
     i64.const -1
     i64.xor
     i64.and
     local.get $6
     local.get $4
     local.get $4
     i64.const 127
     i64.add
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.get $7
     i64.const 64
     local.get $5
     i64.sub
     i64.shl
     i64.and
     local.get $3
     i64.load
     local.get $5
     i64.shr_u
     i64.or
     i64.and
     i64.or
     local.get $6
     local.get $8
     i64.and
     call $assembly/integer/u128/u128#constructor
     local.tee $3
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $2
     local.get $0
     i32.const 4
     i32.sub
     local.set $0
     br $while-continue|0
    end
   end
   local.get $2
   return
  end
  i32.const 0
  local.set $1
  i32.const 12
  i32.const 9
  call $~lib/rt/stub/__alloc
  i32.const 40
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $3
  local.get $0
  i64.load offset=8
  call $assembly/utils/processU64
  local.get $3
  local.get $0
  i64.load
  call $assembly/utils/processU64
  i32.const 39
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const -1
   i32.ne
   if
    local.get $1
    if (result i32)
     i32.const 0
    else
     local.get $3
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    if
     i32.const 1
     local.set $1
    end
    local.get $1
    if
     local.get $2
     local.get $3
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $2
    end
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $assembly/integer/u256/u256.get:Zero (result i32)
  i32.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.get:One (result i32)
  i32.const 0
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.get:Max (result i32)
  i32.const 0
  i64.const -1
  i64.const -1
  i64.const -1
  i64.const -1
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromU256 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromU64 (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromI64 (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  local.get $0
  i64.const 63
  i64.shr_s
  local.tee $0
  local.get $0
  local.get $0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromU32 (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.extend_i32_u
  i64.const 0
  i64.const 0
  i64.const 0
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromI32 (param $0 i32) (result i32)
  (local $1 i64)
  i32.const 0
  local.get $0
  i64.extend_i32_s
  local.get $0
  i32.const 63
  i32.shr_s
  i64.extend_i32_s
  local.tee $1
  local.get $1
  local.get $1
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromBits (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  i32.const 0
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $4
  i64.extend_i32_u
  local.get $5
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $6
  i64.extend_i32_u
  local.get $7
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromBytesLE (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  if (result i32)
   local.get $0
   i32.load offset=12
   i32.const 31
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 77
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromBytesBE (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  i32.load offset=12
  if (result i32)
   local.get $0
   i32.load offset=12
   i32.const 31
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 89
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load offset=16
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load offset=8
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromUint8ArrayLE (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 31
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 101
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromUint8ArrayBE (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 31
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1968
   i32.const 113
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load offset=16
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load offset=8
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.get $0
  i64.load
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromF64 (param $0 f64) (result i32)
  (local $1 i64)
  i32.const 0
  local.get $0
  i64.trunc_f64_u
  local.get $0
  i64.reinterpret_f64
  i64.const 63
  i64.shr_s
  local.tee $1
  local.get $1
  local.get $1
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.fromF32 (param $0 f32) (result i32)
  (local $1 i64)
  i32.const 0
  local.get $0
  i64.trunc_f32_u
  local.get $0
  i32.reinterpret_f32
  i32.const 31
  i32.shr_s
  i64.extend_i32_s
  local.tee $1
  local.get $1
  local.get $1
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.isEmpty (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $0
   i64.load offset=16
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   i64.or
   i64.or
   i64.or
   i64.eqz
   i32.const 0
   i32.ne
  else
   i32.const 1
  end
 )
 (func $assembly/integer/u256/u256.add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.add
  local.tee $3
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $1
  i64.load offset=8
  local.tee $5
  i64.add
  i64.add
  local.set $2
  i32.const 0
  local.get $3
  local.get $2
  local.get $0
  i64.load offset=16
  local.tee $3
  local.get $1
  i64.load offset=16
  local.tee $6
  i64.add
  local.get $4
  local.get $5
  i64.and
  local.get $4
  local.get $5
  i64.or
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  i64.or
  i64.const 63
  i64.shr_u
  i64.add
  local.tee $2
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.add
  local.get $3
  local.get $6
  i64.and
  local.get $3
  local.get $6
  i64.or
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  i64.or
  i64.const 63
  i64.shr_u
  i64.add
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load offset=16
  local.tee $6
  local.get $1
  i64.load offset=16
  local.tee $5
  i64.sub
  local.get $1
  i64.load offset=8
  local.tee $2
  local.get $0
  i64.load offset=8
  local.tee $4
  i64.const -1
  i64.xor
  local.tee $7
  i64.and
  local.get $4
  local.get $2
  i64.sub
  local.get $0
  i64.load
  local.tee $3
  local.get $1
  i64.load
  i64.sub
  local.tee $4
  local.get $3
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.tee $3
  local.get $2
  local.get $7
  i64.or
  i64.and
  i64.or
  i64.const 63
  i64.shr_u
  i64.sub
  local.set $2
  i32.const 0
  local.get $4
  local.get $3
  local.get $2
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.sub
  local.get $5
  local.get $6
  i64.const -1
  i64.xor
  local.tee $3
  i64.and
  local.get $2
  local.get $3
  local.get $5
  i64.or
  i64.and
  i64.or
  i64.const 63
  i64.shr_u
  i64.sub
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.or (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.or
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.or
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.or
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.or
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.xor (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.xor
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.xor
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.xor
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.xor
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.and (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.and
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.and
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.and
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.and
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256.shr (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  local.get $1
  i32.const 255
  i32.and
  local.tee $1
  i64.extend_i32_s
  local.set $2
  local.get $1
  i32.const 64
  i32.le_s
  if (result i32)
   local.get $1
   i32.eqz
   if
    local.get $0
    return
   end
   i32.const 0
   local.get $0
   i64.load
   local.get $2
   i64.shr_u
   local.get $0
   i64.load offset=8
   local.get $2
   i64.shr_u
   local.get $0
   i64.load offset=16
   local.get $2
   i64.shr_u
   local.get $0
   i64.load offset=24
   local.get $2
   i64.shr_u
   local.tee $3
   i64.const 64
   local.get $2
   i64.sub
   local.tee $2
   i64.shl
   i64.or
   local.tee $4
   local.get $2
   i64.shl
   i64.or
   local.tee $5
   local.get $2
   i64.shl
   i64.or
   local.get $5
   local.get $4
   local.get $3
   call $assembly/integer/u256/u256#constructor
  else
   local.get $1
   i32.const 128
   i32.le_s
   i32.const 0
   local.get $1
   i32.const 64
   i32.gt_s
   select
   if (result i32)
    i32.const 0
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    i64.const 128
    local.get $2
    i64.sub
    i64.shr_u
    i64.const 0
    call $assembly/integer/u256/u256#constructor
   else
    local.get $1
    i32.const 192
    i32.le_s
    i32.const 0
    local.get $1
    i32.const 128
    i32.gt_s
    select
    if (result i32)
     i32.const 0
     local.get $0
     i64.load offset=16
     local.get $0
     i64.load offset=24
     i64.const 192
     local.get $2
     i64.sub
     i64.shr_u
     i64.const 0
     i64.const 0
     call $assembly/integer/u256/u256#constructor
    else
     i32.const 0
     local.get $0
     i64.load offset=24
     i64.const 256
     local.get $2
     i64.sub
     i64.shr_u
     i64.const 0
     i64.const 0
     i64.const 0
     call $assembly/integer/u256/u256#constructor
    end
   end
  end
 )
 (func $assembly/integer/u256/u256.shr_u (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/integer/u256/u256.shr
 )
 (func $assembly/integer/u256/u256.eq (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
 )
 (func $assembly/integer/u256/u256.ne (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
 )
 (func $assembly/integer/u256/u256.lt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load offset=16
  local.set $2
  local.get $1
  i64.load offset=16
  local.set $3
  local.get $0
  i64.load offset=8
  local.set $4
  local.get $1
  i64.load offset=8
  local.set $5
  local.get $0
  i64.load offset=24
  local.tee $6
  local.get $1
  i64.load offset=24
  local.tee $7
  i64.eq
  if (result i32)
   local.get $2
   local.get $3
   i64.eq
   if (result i32)
    local.get $4
    local.get $5
    i64.eq
    if (result i32)
     local.get $0
     i64.load
     local.get $1
     i64.load
     i64.lt_u
    else
     local.get $4
     local.get $5
     i64.lt_u
    end
   else
    local.get $2
    local.get $3
    i64.lt_u
   end
  else
   local.get $6
   local.get $7
   i64.lt_u
  end
 )
 (func $assembly/integer/u256/u256.gt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $1
  i64.load offset=16
  local.set $2
  local.get $0
  i64.load offset=16
  local.set $3
  local.get $1
  i64.load offset=8
  local.set $4
  local.get $0
  i64.load offset=8
  local.set $5
  local.get $1
  i64.load offset=24
  local.tee $6
  local.get $0
  i64.load offset=24
  local.tee $7
  i64.eq
  if (result i32)
   local.get $2
   local.get $3
   i64.eq
   if (result i32)
    local.get $4
    local.get $5
    i64.eq
    if (result i32)
     local.get $1
     i64.load
     local.get $0
     i64.load
     i64.lt_u
    else
     local.get $4
     local.get $5
     i64.lt_u
    end
   else
    local.get $2
    local.get $3
    i64.lt_u
   end
  else
   local.get $6
   local.get $7
   i64.lt_u
  end
 )
 (func $assembly/integer/u256/u256.le (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $1
  i64.load offset=16
  local.set $2
  local.get $0
  i64.load offset=16
  local.set $3
  local.get $1
  i64.load offset=8
  local.set $4
  local.get $0
  i64.load offset=8
  local.set $5
  local.get $1
  i64.load offset=24
  local.tee $6
  local.get $0
  i64.load offset=24
  local.tee $7
  i64.eq
  if (result i32)
   local.get $2
   local.get $3
   i64.eq
   if (result i32)
    local.get $4
    local.get $5
    i64.eq
    if (result i32)
     local.get $1
     i64.load
     local.get $0
     i64.load
     i64.lt_u
    else
     local.get $4
     local.get $5
     i64.lt_u
    end
   else
    local.get $2
    local.get $3
    i64.lt_u
   end
  else
   local.get $6
   local.get $7
   i64.lt_u
  end
  i32.eqz
 )
 (func $assembly/integer/u256/u256.ge (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load offset=16
  local.set $2
  local.get $1
  i64.load offset=16
  local.set $3
  local.get $0
  i64.load offset=8
  local.set $4
  local.get $1
  i64.load offset=8
  local.set $5
  local.get $0
  i64.load offset=24
  local.tee $6
  local.get $1
  i64.load offset=24
  local.tee $7
  i64.eq
  if (result i32)
   local.get $2
   local.get $3
   i64.eq
   if (result i32)
    local.get $4
    local.get $5
    i64.eq
    if (result i32)
     local.get $0
     i64.load
     local.get $1
     i64.load
     i64.lt_u
    else
     local.get $4
     local.get $5
     i64.lt_u
    end
   else
    local.get $2
    local.get $3
    i64.lt_u
   end
  else
   local.get $6
   local.get $7
   i64.lt_u
  end
  i32.eqz
 )
 (func $assembly/integer/u256/u256.popcnt (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  i64.load
  i64.popcnt
  local.set $1
  local.get $0
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   local.get $1
   local.get $0
   i64.load offset=8
   i64.popcnt
   i64.add
   local.set $1
  end
  local.get $0
  i64.load offset=16
  i64.const 0
  i64.ne
  if
   local.get $1
   local.get $0
   i64.load offset=16
   i64.popcnt
   i64.add
   local.set $1
  end
  local.get $0
  i64.load offset=24
  i64.const 0
  i64.ne
  if (result i64)
   local.get $1
   local.get $0
   i64.load offset=24
   i64.popcnt
   i64.add
  else
   local.get $1
  end
  i32.wrap_i64
 )
 (func $assembly/integer/u256/u256.clz (param $0 i32) (result i32)
  local.get $0
  i64.load offset=24
  i64.const 0
  i64.ne
  if (result i32)
   local.get $0
   i64.load offset=24
   i64.clz
   i64.const 0
   i64.add
   i32.wrap_i64
  else
   local.get $0
   i64.load offset=16
   i64.const 0
   i64.ne
   if (result i32)
    local.get $0
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap_i64
   else
    local.get $0
    i64.load offset=8
    i64.const 0
    i64.ne
    if (result i32)
     local.get $0
     i64.load offset=8
     i64.clz
     i64.const 128
     i64.add
     i32.wrap_i64
    else
     local.get $0
     i64.load
     i64.clz
     i64.const 192
     i64.add
     i32.wrap_i64
    end
   end
  end
 )
 (func $assembly/integer/u256/u256.ctz (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 0
  i64.ne
  if (result i32)
   local.get $0
   i64.load
   i64.ctz
   i64.const 0
   i64.add
   i32.wrap_i64
  else
   local.get $0
   i64.load offset=8
   i64.const 0
   i64.ne
   if (result i32)
    local.get $0
    i64.load offset=8
    i64.ctz
    i64.const -64
    i64.sub
    i32.wrap_i64
   else
    local.get $0
    i64.load offset=16
    i64.const 0
    i64.ne
    if (result i32)
     local.get $0
     i64.load offset=16
     i64.ctz
     i64.const 128
     i64.add
     i32.wrap_i64
    else
     local.get $0
     i64.load offset=24
     i64.ctz
     i64.const 192
     i64.add
     i32.wrap_i64
    end
   end
  end
 )
 (func $assembly/integer/u256/u256#get:hi1 (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $assembly/integer/u256/u256#set:hi1 (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $assembly/integer/u256/u256#get:hi2 (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $assembly/integer/u256/u256#set:hi2 (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/integer/u256/u256#set (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.load
  i64.store
  local.get $0
  local.get $1
  i64.load offset=8
  i64.store offset=8
  local.get $0
  local.get $1
  i64.load offset=16
  i64.store offset=16
  local.get $0
  local.get $1
  i64.load offset=24
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#setU128 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.load
  i64.store
  local.get $0
  local.get $1
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#setI64 (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $1
  i64.const 63
  i64.shr_s
  local.tee $1
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#setU64 (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#setI32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  local.get $0
  local.get $1
  i64.extend_i32_s
  i64.store
  local.get $0
  local.get $1
  i32.const 63
  i32.shr_s
  i64.extend_i32_s
  local.tee $2
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
  local.get $2
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#setU32 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#isZero (param $0 i32) (result i32)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
 )
 (func $assembly/integer/u256/u256#not (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i64.load
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=8
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=16
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=24
  i64.const -1
  i64.xor
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256#neg (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  i64.const -1
  i64.xor
  local.tee $3
  local.get $0
  i64.load
  i64.const -1
  i64.xor
  local.tee $1
  i64.const 1
  i64.add
  local.tee $2
  local.get $1
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $1
  i32.const 0
  local.get $2
  local.get $1
  local.get $0
  i64.load offset=16
  i64.const -1
  i64.xor
  local.tee $2
  local.get $3
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  local.tee $1
  local.get $0
  i64.load offset=24
  i64.const -1
  i64.xor
  local.get $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256#preInc (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.tee $3
  local.get $0
  i64.load offset=8
  local.tee $1
  local.get $0
  i64.load
  local.tee $2
  i64.const 1
  i64.add
  local.tee $4
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.tee $2
  i64.const -1
  i64.xor
  local.get $1
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  local.tee $1
  i64.const -1
  i64.xor
  local.get $3
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  local.set $3
  local.get $0
  local.get $4
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store offset=16
  local.get $0
  local.get $3
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#preDec (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.tee $1
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $0
  i64.load
  local.tee $3
  i64.const 1
  i64.sub
  local.tee $4
  local.get $3
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.tee $3
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  local.tee $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  local.set $1
  local.get $0
  local.get $4
  i64.store
  local.get $0
  local.get $3
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#postInc (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
  local.tee $0
  i64.load offset=8
  local.set $1
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.tee $2
  local.get $1
  local.get $1
  local.get $0
  i64.load
  local.tee $1
  i64.const 1
  i64.add
  local.tee $3
  local.get $1
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.tee $4
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  local.tee $1
  i64.const -1
  i64.xor
  local.get $2
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  local.set $2
  local.get $0
  local.get $3
  i64.store
  local.get $0
  local.get $4
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store offset=16
  local.get $0
  local.get $2
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#postDec (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
  local.tee $0
  i64.load offset=16
  local.set $1
  local.get $0
  i64.load offset=24
  local.get $1
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $0
  i64.load
  local.tee $3
  i64.const 1
  i64.sub
  local.tee $4
  local.get $3
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  local.tee $3
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  local.tee $2
  local.get $1
  i64.const -1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  local.set $1
  local.get $0
  local.get $4
  i64.store
  local.get $0
  local.get $3
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store offset=24
  local.get $0
 )
 (func $assembly/integer/u256/u256#toI128 (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load
  local.set $1
  local.get $0
  i64.load offset=8
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
  local.set $2
  i32.const 16
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u256/u256#toI64 (param $0 i32) (result i64)
  local.get $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
 )
 (func $assembly/integer/u256/u256#toI32 (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
  i32.wrap_i64
 )
 (func $assembly/integer/u256/u256#toBool (param $0 i32) (result i32)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.const 0
  i64.ne
 )
 (func $assembly/integer/u256/u256#toArrayBufferBE (param $0 i32) (param $1 i32)
  (local $2 i64)
  local.get $1
  local.get $0
  i64.load offset=24
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store
  local.get $1
  local.get $0
  i64.load offset=16
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store offset=8
  local.get $1
  local.get $0
  i64.load offset=8
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store offset=16
  local.get $1
  local.get $0
  i64.load
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store offset=24
 )
 (func $assembly/integer/u256/u256#toString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.get $1
  i32.const 16
  i32.eq
  local.get $1
  i32.const 10
  i32.eq
  select
  i32.eqz
  if
   i32.const 1664
   i32.const 1968
   i32.const 609
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 1760
   return
  end
  i32.const 1792
  local.set $2
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $assembly/integer/u256/u256#constructor
  local.set $3
  local.get $1
  i32.const 16
  i32.eq
  if
   i32.const 252
   local.get $3
   i64.load offset=24
   i64.const 0
   i64.ne
   if (result i32)
    local.get $3
    i64.load offset=24
    i64.clz
    i64.const 0
    i64.add
    i32.wrap_i64
   else
    local.get $3
    i64.load offset=16
    i64.const 0
    i64.ne
    if (result i32)
     local.get $3
     i64.load offset=16
     i64.clz
     i64.const -64
     i64.sub
     i32.wrap_i64
    else
     local.get $3
     i64.load offset=8
     i64.const 0
     i64.ne
     if (result i32)
      local.get $3
      i64.load offset=8
      i64.clz
      i64.const 128
      i64.add
      i32.wrap_i64
     else
      local.get $3
      i64.load
      i64.clz
      i64.const 192
      i64.add
      i32.wrap_i64
     end
    end
   end
   i32.const -4
   i32.and
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $2
     local.get $3
     local.get $1
     call $assembly/integer/u256/u256.shr
     local.tee $3
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $2
     local.get $1
     i32.const 4
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   local.get $2
   return
  end
  i32.const 0
  local.set $3
  i32.const 12
  i32.const 9
  call $~lib/rt/stub/__alloc
  i32.const 78
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  local.get $0
  i64.load offset=24
  call $assembly/utils/processU64
  local.get $1
  local.get $0
  i64.load offset=16
  call $assembly/utils/processU64
  local.get $1
  local.get $0
  i64.load offset=8
  call $assembly/utils/processU64
  local.get $1
  local.get $0
  i64.load
  call $assembly/utils/processU64
  i32.const 77
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const -1
   i32.ne
   if
    local.get $3
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    if
     i32.const 1
     local.set $3
    end
    local.get $3
    if
     local.get $2
     local.get $1
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $2
    end
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~start
  i32.const 2112
  global.set $~lib/rt/stub/startOffset
  i32.const 2112
  global.set $~lib/rt/stub/offset
 )
 (func $assembly/integer/u128/u128#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i64.const 0
    local.set $1
   end
   i64.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $assembly/integer/u128/u128#constructor
 )
 (func $assembly/integer/u128/u128#toBytes@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#toBytes
 )
 (func $assembly/integer/u128/u128#toUint8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#toUint8Array
 )
 (func $assembly/integer/u128/u128#toString@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 10
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#toString
 )
 (func $assembly/integer/u128/u128.fromString@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 10
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/utils/atou128
 )
 (func $assembly/integer/u256/u256#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  block $4of4
   block $3of4
    block $2of4
     block $1of4
      block $0of4
       block $outOfRange
        global.get $~argumentsLength
        br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
       end
       unreachable
      end
      i64.const 0
      local.set $1
     end
     i64.const 0
     local.set $2
    end
    i64.const 0
    local.set $3
   end
   i64.const 0
   local.set $4
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $assembly/integer/u256/u256#constructor
 )
 (func $assembly/integer/u256/u256#toBytes@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.tee $3
  i32.load offset=4
  local.set $2
  local.get $1
  if
   local.get $0
   local.get $2
   call $assembly/integer/u256/u256#toArrayBufferBE
  else
   local.get $2
   local.get $0
   i64.load
   i64.store
   local.get $2
   local.get $0
   i64.load offset=8
   i64.store offset=8
   local.get $2
   local.get $0
   i64.load offset=16
   i64.store offset=16
   local.get $2
   local.get $0
   i64.load offset=24
   i64.store offset=24
  end
  local.get $3
 )
 (func $assembly/integer/u256/u256#toUint8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/stub/__alloc
  i32.const 32
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $3
  i32.load offset=4
  local.set $2
  local.get $1
  if
   local.get $0
   local.get $2
   call $assembly/integer/u256/u256#toArrayBufferBE
  else
   local.get $2
   local.get $0
   i64.load
   i64.store
   local.get $2
   local.get $0
   i64.load offset=8
   i64.store offset=8
   local.get $2
   local.get $0
   i64.load offset=16
   i64.store offset=16
   local.get $2
   local.get $0
   i64.load offset=24
   i64.store offset=24
  end
  local.get $3
 )
 (func $assembly/integer/u256/u256#toString@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 10
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/integer/u256/u256#toString
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
