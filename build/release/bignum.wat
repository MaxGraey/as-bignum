(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$vjjjj (func (param i64 i64 i64 i64)))
 (type $FUNCSIG$iijjjj (func (param i32 i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$iiiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 48) "\a0\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10\'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\t\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00\00\00\c1o\f2\86#\00\00\00\8a]xEc\01\00\00d\a7\b3\b6\e0\0d\00\00\e8\89\04#\c7\8a")
 (data (i32.const 304) "0\00\00\00\14")
 (data (i32.const 312) "\11\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data (i32.const 352) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 384) "K")
 (data (i32.const 393) "\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 512) "\80\01\00\00K")
 (data (i32.const 520) "\18\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 576) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 608) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 672) "\'\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 760) "\01\00\00\000")
 (data (i32.const 776) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 832) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 848) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 912) "\t\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $assembly/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "u128#get:lo" (func $assembly/integer/u128/u128#toU64))
 (export "u128#set:lo" (func $u128#set:lo))
 (export "u128#get:hi" (func $u128#get:hi))
 (export "u128#set:hi" (func $u128#set:hi))
 (export "_setargc" (func $~lib/setargc))
 (export "u128#constructor" (func $assembly/integer/u128/u128#constructor|trampoline))
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
 (export "u128.get:Zero" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u128.get:One" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u128.get:Min" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u128.get:Max" (func $assembly/integer/u128/u128.Zero.get:Zero))
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
 (export "u128.fromBytesLE" (func $assembly/integer/u128/u128.fromBytesLE))
 (export "u128.fromBytesBE" (func $assembly/integer/u128/u128.fromBytesBE))
 (export "u128.fromUint8ArrayLE" (func $assembly/integer/u128/u128.fromUint8ArrayLE))
 (export "u128.fromUint8ArrayBE" (func $assembly/integer/u128/u128.fromUint8ArrayBE))
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
 (export "u256#get:lo1" (func $assembly/integer/u128/u128#toU64))
 (export "u256#set:lo1" (func $u128#set:lo))
 (export "u256#get:lo2" (func $u128#get:hi))
 (export "u256#set:lo2" (func $u128#set:hi))
 (export "u256#get:hi1" (func $u256#get:hi1))
 (export "u256#set:hi1" (func $u256#set:hi1))
 (export "u256#get:hi2" (func $u256#get:hi2))
 (export "u256#set:hi2" (func $u256#set:hi2))
 (export "u256#constructor" (func $assembly/integer/u256/u256#constructor|trampoline))
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
 (export "u256.get:Zero" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u256.get:One" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u256.get:Min" (func $assembly/integer/u128/u128.Zero.get:Zero))
 (export "u256.get:Max" (func $assembly/integer/u128/u128.Zero.get:Zero))
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
 (func $assembly/integer/u128/u128.Zero.get:Zero (; 1 ;) (type $FUNCSIG$i) (result i32)
  unreachable
 )
 (func $~lib/string/String#charCodeAt (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 352
   i32.const 75
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.load16_u offset=4
 )
 (func $assembly/globals/__multi3 (; 3 ;) (type $FUNCSIG$vjjjj) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $5
  i64.mul
  local.tee $6
  i64.const 4294967295
  i64.and
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $5
  local.get $0
  i64.const 32
  i64.shr_u
  local.tee $5
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $6
  i64.const 4294967295
  i64.and
  i64.add
  local.tee $7
  i64.const 32
  i64.shl
  i64.add
  global.set $assembly/globals/__res128_lo
  local.get $4
  local.get $5
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $2
  i64.mul
  i64.add
  local.get $0
  local.get $3
  i64.mul
  i64.add
  local.get $7
  i64.const 32
  i64.shr_u
  i64.add
  global.set $assembly/globals/__res128_hi
 )
 (func $assembly/utils/atou128 (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 10
  local.get $1
  select
  local.tee $1
  i32.const 2
  i32.lt_s
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 312
   i32.const 159
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $1
  i32.eqz
  if
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.set $2
  local.get $1
  i32.const 1
  i32.eq
  local.tee $1
  if
   local.get $2
   i32.const 48
   i32.eq
   local.set $1
  end
  local.get $1
  if
   unreachable
  end
  local.get $0
  local.tee $1
  local.set $3
  local.get $2
  i32.const 45
  i32.eq
  local.tee $0
  i32.eqz
  if
   local.get $2
   i32.const 43
   i32.eq
   local.set $0
  end
  local.get $3
  local.get $0
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   local.get $1
   local.get $0
   i32.const 1
   i32.add
   call $~lib/string/String#charCodeAt
   local.tee $2
   i32.const 120
   i32.eq
   local.tee $1
   i32.eqz
   if
    local.get $2
    i32.const 88
    i32.eq
    local.set $1
   end
   local.get $1
   i32.eqz
   if
    local.get $2
    i32.const 111
    i32.eq
    local.tee $1
    i32.eqz
    if
     local.get $2
     i32.const 79
     i32.eq
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     local.get $2
     i32.const 98
     i32.eq
     local.tee $1
     i32.eqz
     if
      local.get $2
      i32.const 66
      i32.eq
      local.set $1
     end
    end
   end
  end
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI256 (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  drop
  local.get $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI64 (; 6 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.fromF64 (; 7 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  i64.trunc_f64_u
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromF32 (; 8 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  i64.trunc_f32_u
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromI32 (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.fromBits (; 10 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.fromBytesLE (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=4
   i32.const 15
   i32.and
   i32.eqz
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 520
   i32.const 139
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  i64.load offset=8
  drop
  local.get $0
  i32.const 8
  i32.add
  i64.load offset=8
  drop
  unreachable
 )
 (func $~lib/polyfills/bswap<u64> (; 12 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $0
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $0
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $assembly/integer/u128/u128.fromBytesBE (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=4
   i32.const 15
   i32.and
   i32.eqz
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 520
   i32.const 148
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  i32.const 8
  i32.add
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  drop
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromUint8ArrayLE (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=8
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 520
   i32.const 157
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $1
  local.get $0
  i32.load offset=4
  i32.add
  i64.load offset=8
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 8
  i32.add
  i32.add
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.fromUint8ArrayBE (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=8
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 520
   i32.const 166
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.tee $1
  i32.const 8
  i32.add
  i32.add
  i64.load offset=8
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.isEmpty (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   i64.or
   i64.eqz
   local.set $1
  end
  local.get $1
 )
 (func $assembly/integer/u128/u128.or (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.or
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.xor (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.xor
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.xor
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.and (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.and
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.shl (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  local.get $0
  i64.load
  local.get $1
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $2
  i64.const 63
  i64.and
  i64.shl
  drop
  local.get $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.shr (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $1
  i32.const 127
  i32.and
  i64.extend_i32_s
  local.tee $2
  i64.const 63
  i64.and
  local.tee $3
  i64.shr_u
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $5
  i64.const -1
  i64.xor
  i64.and
  local.get $2
  i64.const 127
  i64.add
  local.get $2
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $4
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
  local.get $5
  i64.and
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.rotl (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
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
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $0
  i64.load
  local.tee $5
  local.get $2
  i64.const 63
  i64.and
  i64.shl
  i64.and
  local.get $3
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $6
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $4
  i64.shr_u
  i64.and
  local.get $3
  i64.const 127
  i64.add
  local.get $3
  i64.or
  i64.const 64
  i64.and
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.get $2
  i64.const 64
  local.get $4
  i64.sub
  i64.shl
  i64.and
  local.get $5
  local.get $4
  i64.shr_u
  i64.or
  local.get $6
  i64.and
  i64.or
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.rotr (; 23 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $1
  i32.const 127
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $0
  i64.load
  local.tee $5
  i64.const 128
  local.get $1
  i64.extend_i32_s
  local.tee $2
  i64.sub
  local.tee $3
  i64.const 63
  i64.and
  i64.shl
  local.set $4
  local.get $2
  i64.const 6
  i64.shr_u
  i64.const 1
  i64.sub
  local.tee $6
  i64.const -1
  i64.xor
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $2
  i64.const 63
  i64.and
  local.tee $3
  i64.shr_u
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.add (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  local.get $1
  i64.load
  local.tee $2
  local.get $0
  i64.load
  i64.add
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.add
  i64.add
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.sub (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.sub
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.sub
  local.get $2
  i64.gt_u
  i64.extend_i32_u
  i64.sub
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128.mul (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  call $assembly/globals/__multi3
  unreachable
 )
 (func $assembly/globals/__udivmod128 (; 27 ;) (type $FUNCSIG$vjjjj) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $3
  i64.const 1
  i64.sub
  local.get $3
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $5
  i64.const -1
  i64.xor
  local.get $3
  i64.and
  local.get $2
  local.get $5
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $5
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.tee $4
  i32.const 128
  i32.eq
  if
   unreachable
  end
  local.get $2
  i64.const 1
  i64.sub
  local.get $2
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $5
  local.get $3
  i64.and
  local.get $5
  i64.const -1
  i64.xor
  local.get $2
  i64.and
  i64.or
  i64.ctz
  i32.wrap_i64
  local.get $5
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.set $6
  block $folding-inner0
   local.get $0
   local.get $1
   i64.or
   i64.eqz
   br_if $folding-inner0
   local.get $4
   i32.const 127
   i32.eq
   if
    local.get $0
    global.set $assembly/globals/__divmod_quot_lo
    local.get $1
    global.set $assembly/globals/__divmod_quot_hi
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    return
   end
   local.get $4
   local.get $6
   i32.add
   i32.const 127
   i32.eq
   if
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
    i64.const 1
    i64.sub
    local.get $2
    i64.and
    i64.eqz
    if
     local.get $0
     local.get $6
     i64.extend_i32_s
     i64.shr_u
     global.set $assembly/globals/__divmod_quot_lo
     i64.const 0
     global.set $assembly/globals/__divmod_rem
    else     
     local.get $0
     local.get $2
     i64.div_u
     local.tee $1
     global.set $assembly/globals/__divmod_quot_lo
     local.get $0
     local.get $1
     local.get $2
     i64.mul
     i64.sub
     global.set $assembly/globals/__divmod_rem
    end
    return
   end
   local.get $2
   i64.eqz
   local.tee $4
   if (result i32)
    local.get $3
    i64.const 1
    i64.sub
    local.get $3
    i64.and
    i64.eqz
   else    
    local.get $4
   end
   if
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    return
   end
   local.get $1
   local.get $3
   i64.sub
   local.tee $1
   i64.const 0
   i64.eq
   if (result i64)
    local.get $0
    local.get $2
    i64.sub
   else    
    local.get $1
   end
   i32.wrap_i64
   local.tee $4
   i32.const 0
   i32.lt_s
   br_if $folding-inner0
   local.get $4
   i32.eqz
   if
    i64.const 1
    global.set $assembly/globals/__divmod_quot_lo
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    global.get $assembly/globals/__divmod_rem
    global.set $assembly/globals/__divmod_quot_hi
    return
   end
   unreachable
  end
  i64.const 0
  global.set $assembly/globals/__divmod_rem
  global.get $assembly/globals/__divmod_rem
  global.set $assembly/globals/__divmod_quot_hi
  global.get $assembly/globals/__divmod_quot_hi
  global.set $assembly/globals/__divmod_quot_lo
 )
 (func $assembly/integer/u128/u128.div (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  call $assembly/globals/__udivmod128
  unreachable
 )
 (func $assembly/globals/__udivmod128_10 (; 29 ;) (type $FUNCSIG$vjj) (param $0 i64) (param $1 i64)
  local.get $1
  i64.eqz
  if
   local.get $0
   i64.const 10
   i64.lt_u
   if
    i64.const 0
    global.set $assembly/globals/__divmod_rem
    global.get $assembly/globals/__divmod_rem
    global.set $assembly/globals/__divmod_quot_hi
    global.get $assembly/globals/__divmod_quot_hi
    global.set $assembly/globals/__divmod_quot_lo
    return
   end
   local.get $0
   i64.const 10
   i64.div_u
   local.tee $1
   global.set $assembly/globals/__divmod_quot_lo
   i64.const 0
   global.set $assembly/globals/__divmod_quot_hi
   local.get $0
   local.get $1
   i64.const 10
   i64.mul
   i64.sub
   global.set $assembly/globals/__divmod_rem
   return
  end
  unreachable
 )
 (func $assembly/integer/u128/u128.div10 (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  call $assembly/globals/__udivmod128_10
  unreachable
 )
 (func $assembly/integer/u128/u128#sqr (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  i64.load
  local.tee $1
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $2
  i64.mul
  local.tee $4
  i64.const 32
  i64.shr_u
  local.get $2
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $2
  i64.mul
  local.tee $3
  i64.add
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  local.get $1
  i64.const 4294967295
  i64.and
  local.get $3
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $2
  i64.mul
  i64.add
  local.set $3
  local.get $0
  i64.load offset=8
  local.set $5
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
  local.get $5
  i64.mul
  i64.const 1
  i64.shl
  local.get $3
  i64.add
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128.pow (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u128/u128.eq (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  local.tee $2
  if
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.eq
   local.set $2
  end
  local.get $2
 )
 (func $assembly/integer/u128/u128.ne (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  local.tee $2
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.eq
  else   
   local.get $2
  end
  i32.eqz
 )
 (func $assembly/integer/u128/u128.lt (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128.gt (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128.le (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128.ge (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128.cmp (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128.popcnt (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  i64.popcnt
  local.get $0
  i64.load offset=8
  i64.popcnt
  i64.add
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128.clz (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.set $1
  local.get $1
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
 (func $assembly/integer/u128/u128.ctz (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $2
  i64.const -1
  i64.xor
  local.get $1
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
 (func $assembly/integer/u128/u128#set (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128#setI64 (; 44 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $assembly/integer/u128/u128#setU64 (; 45 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  local.get $1
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#setI32 (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u128/u128#setU32 (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#isZero (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
 )
 (func $assembly/integer/u128/u128#pos (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $assembly/integer/u128/u128#preInc (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load
  local.get $0
  i64.load
  i64.const 1
  i64.add
  local.tee $1
  local.get $0
  i64.load
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.add
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#preDec (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load
  i64.const 1
  i64.sub
  local.tee $1
  local.get $0
  i64.load
  local.get $1
  i64.xor
  i64.and
  i64.const 63
  i64.shr_u
  i64.sub
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $assembly/integer/u128/u128#toI64 (; 52 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
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
 (func $assembly/integer/u128/u128#toU64 (; 53 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $assembly/integer/u128/u128#toI32 (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u128/u128#toU32 (; 55 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  i32.wrap_i64
 )
 (func $assembly/integer/u128/u128#toBool (; 56 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.const 0
  i64.ne
 )
 (func $assembly/integer/u128/u128#toF64 (; 57 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  i32.eqz
  if
   unreachable
  end
  f64.const 0
 )
 (func $assembly/integer/u128/u128#toF64Unsafe (; 58 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i64)
  (local $2 i64)
  local.get $0
  i64.load
  local.set $1
  local.get $0
  i64.load offset=8
  local.tee $2
  i64.const 0
  i64.ge_u
  if
   local.get $2
   f64.convert_i64_u
   f64.const 18446744073709551615
   f64.mul
   local.get $1
   f64.convert_i64_u
   f64.add
   return
  end
  local.get $2
  i64.const -1
  i64.xor
  local.get $1
  i64.const -1
  i64.xor
  local.tee $1
  i64.const 1
  i64.and
  local.get $1
  i64.const 1
  i64.shr_u
  i64.add
  i64.const 63
  i64.shr_u
  i64.add
  f64.convert_i64_s
  f64.const 18446744073709551615
  f64.mul
  local.get $1
  i64.const 1
  i64.add
  f64.convert_i64_u
  f64.add
  f64.neg
 )
 (func $assembly/integer/u128/u128#toF32 (; 59 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  i32.eqz
  if
   unreachable
  end
  f32.const 0
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 608
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  unreachable
 )
 (func $~lib/array/Array<u8>#constructor (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 576
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  drop
  unreachable
 )
 (func $assembly/integer/u128/u128#toBytesBE (; 62 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  i64.load offset=8
  local.set $1
  local.get $0
  i64.load
  local.set $2
  i32.const 16
  call $~lib/array/Array<u8>#constructor
  local.tee $0
  i32.load
  local.tee $3
  local.get $1
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $3
  i32.const 8
  i32.add
  local.get $2
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#toBytesLE (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  i64.load offset=8
  local.set $1
  local.get $0
  i64.load
  local.set $2
  i32.const 16
  call $~lib/array/Array<u8>#constructor
  local.tee $0
  i32.load
  local.tee $3
  local.get $2
  i64.store offset=8
  local.get $3
  i32.const 8
  i32.add
  local.get $1
  i64.store offset=8
  local.get $0
 )
 (func $assembly/integer/u128/u128#toString (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 10
  local.get $1
  select
  local.tee $2
  i32.const 10
  i32.eq
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $2
   i32.const 16
   i32.eq
  end
  i32.eqz
  if
   i32.const 672
   i32.const 520
   i32.const 911
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 760
   return
  end
  local.get $0
  i64.load
  drop
  local.get $0
  i64.load offset=8
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.fromU256 (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  drop
  local.get $0
  i64.load offset=8
  drop
  local.get $0
  i64.load offset=16
  drop
  local.get $0
  i64.load offset=24
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.fromBits (; 66 ;) (type $FUNCSIG$iiiiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  unreachable
 )
 (func $assembly/integer/u256/u256.isEmpty (; 67 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
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
   i32.eqz
   local.set $1
  end
  local.get $1
 )
 (func $assembly/integer/u256/u256.add (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i64.load
  drop
  local.get $0
  i64.load
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.or (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.or
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.or
  drop
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.or
  drop
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.xor (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.xor
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.xor
  drop
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.xor
  drop
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.xor
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.and (; 71 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.and
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.and
  drop
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.and
  drop
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.and
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256.popcnt (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   local.get $0
   i64.load offset=8
   i64.popcnt
   local.get $1
   i64.add
   local.set $1
  end
  local.get $0
  i64.load offset=16
  i64.const 0
  i64.ne
  if
   local.get $0
   i64.load offset=16
   i64.popcnt
   local.get $1
   i64.add
   local.set $1
  end
  local.get $0
  i64.load offset=24
  i64.const 0
  i64.ne
  if (result i64)
   local.get $0
   i64.load offset=24
   i64.popcnt
   local.get $1
   i64.add
  else   
   local.get $1
  end
  i32.wrap_i64
 )
 (func $assembly/integer/u256/u256.clz (; 73 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256.ctz (; 74 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#set (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#setU128 (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#setI64 (; 77 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $assembly/integer/u256/u256#setU64 (; 78 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $assembly/integer/u256/u256#setI32 (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#setU32 (; 80 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/integer/u256/u256#isZero (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toI128 (; 82 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i64.load
  drop
  local.get $0
  i64.load offset=8
  i64.const 9223372036854775807
  i64.and
  local.get $0
  i64.load offset=24
  i64.const -9223372036854775808
  i64.and
  i64.or
  drop
  unreachable
 )
 (func $assembly/integer/u256/u256#toI64 (; 83 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
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
 (func $assembly/integer/u256/u256#toI32 (; 84 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toBool (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/integer/u256/u256#toBytesLE (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load offset=16
  local.set $1
  local.get $0
  i64.load
  local.set $2
  local.get $0
  i64.load offset=24
  local.set $3
  local.get $0
  i64.load offset=8
  local.set $4
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.tee $0
  i32.load
  local.get $2
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.get $2
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 2
  i32.add
  local.get $2
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 3
  i32.add
  local.get $2
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 4
  i32.add
  local.get $2
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 5
  i32.add
  local.get $2
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 6
  i32.add
  local.get $2
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 7
  i32.add
  local.get $2
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 8
  i32.add
  local.get $4
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 9
  i32.add
  local.get $4
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 10
  i32.add
  local.get $4
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 11
  i32.add
  local.get $4
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 12
  i32.add
  local.get $4
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 13
  i32.add
  local.get $4
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 14
  i32.add
  local.get $4
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 15
  i32.add
  local.get $4
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 16
  i32.add
  local.get $1
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 17
  i32.add
  local.get $1
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 18
  i32.add
  local.get $1
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 19
  i32.add
  local.get $1
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 20
  i32.add
  local.get $1
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 21
  i32.add
  local.get $1
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 22
  i32.add
  local.get $1
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 23
  i32.add
  local.get $1
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 24
  i32.add
  local.get $3
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 25
  i32.add
  local.get $3
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 26
  i32.add
  local.get $3
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 27
  i32.add
  local.get $3
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 28
  i32.add
  local.get $3
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 29
  i32.add
  local.get $3
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 30
  i32.add
  local.get $3
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 31
  i32.add
  local.get $3
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
 )
 (func $assembly/integer/u256/u256#toBytesBE (; 87 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load offset=16
  local.set $1
  local.get $0
  i64.load
  local.set $2
  local.get $0
  i64.load offset=24
  local.set $3
  local.get $0
  i64.load offset=8
  local.set $4
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.tee $0
  i32.load
  local.get $3
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.get $3
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 2
  i32.add
  local.get $3
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 3
  i32.add
  local.get $3
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 4
  i32.add
  local.get $3
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 5
  i32.add
  local.get $3
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 6
  i32.add
  local.get $3
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 7
  i32.add
  local.get $3
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 8
  i32.add
  local.get $1
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 9
  i32.add
  local.get $1
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 10
  i32.add
  local.get $1
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 11
  i32.add
  local.get $1
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 12
  i32.add
  local.get $1
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 13
  i32.add
  local.get $1
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 14
  i32.add
  local.get $1
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 15
  i32.add
  local.get $1
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 16
  i32.add
  local.get $4
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 17
  i32.add
  local.get $4
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 18
  i32.add
  local.get $4
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 19
  i32.add
  local.get $4
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 20
  i32.add
  local.get $4
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 21
  i32.add
  local.get $4
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 22
  i32.add
  local.get $4
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 23
  i32.add
  local.get $4
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 24
  i32.add
  local.get $2
  i64.const 56
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 25
  i32.add
  local.get $2
  i64.const 48
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 26
  i32.add
  local.get $2
  i64.const 40
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 27
  i32.add
  local.get $2
  i64.const 32
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 28
  i32.add
  local.get $2
  i64.const 24
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 29
  i32.add
  local.get $2
  i64.const 16
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 30
  i32.add
  local.get $2
  i64.const 8
  i64.shr_u
  i64.store8 offset=8
  local.get $0
  i32.load
  i32.const 31
  i32.add
  local.get $2
  i64.store8 offset=8
  local.get $0
 )
 (func $null (; 88 ;) (type $FUNCSIG$v)
  nop
 )
 (func $u128#set:lo (; 89 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $u128#get:hi (; 90 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=8
 )
 (func $u128#set:hi (; 91 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $assembly/integer/u128/u128#constructor|trampoline (; 92 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
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
  i32.eqz
  if
   unreachable
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/setargc (; 93 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
 (func $assembly/integer/u128/u128#toBytes|trampoline (; 94 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $1
  if (result i32)
   local.get $0
   call $assembly/integer/u128/u128#toBytesBE
  else   
   local.get $0
   call $assembly/integer/u128/u128#toBytesLE
  end
 )
 (func $assembly/integer/u128/u128#toString|trampoline (; 95 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/integer/u128/u128#toString
 )
 (func $assembly/integer/u128/u128.fromString|trampoline (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $assembly/utils/atou128
 )
 (func $u256#get:hi1 (; 97 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=16
 )
 (func $u256#set:hi1 (; 98 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $u256#get:hi2 (; 99 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load offset=24
 )
 (func $u256#set:hi2 (; 100 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/integer/u256/u256#constructor|trampoline (; 101 ;) (type $FUNCSIG$iijjjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  block $4of4
   block $3of4
    block $2of4
     block $1of4
      block $0of4
       block $outOfRange
        global.get $~lib/argc
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
  i32.eqz
  if
   unreachable
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
 (func $assembly/integer/u256/u256#toBytes|trampoline (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 1
   local.set $1
  end
  local.get $1
  if (result i32)
   local.get $0
   call $assembly/integer/u256/u256#toBytesLE
  else   
   local.get $0
   call $assembly/integer/u256/u256#toBytesBE
  end
 )
)
