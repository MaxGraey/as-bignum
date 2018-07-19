(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $assembly/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $assembly/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $assembly/integer/u128/HEX_CHARS i32 (i32.const 8))
 (global $HEAP_BASE i32 (i32.const 148))
 (data (i32.const 8) "\10\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 44) "\17\00\00\00v\00a\00l\00u\00e\00 \00s\00h\00o\00u\00l\00d\00n\00\'\00t\00 \00b\00e\00 \00n\00u\00l\00l\00")
 (data (i32.const 96) "\18\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (export "plus" (func $test/u128/u128/plus))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   ;;@ ~lib/allocator/arena.ts:17:6
   (get_local $0)
   ;;@ ~lib/allocator/arena.ts:17:12
   (block
    ;;@ ~lib/allocator/arena.ts:18:4
    (if
     ;;@ ~lib/allocator/arena.ts:18:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/arena.ts:18:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/arena.ts:18:28
     (unreachable)
    )
    ;;@ ~lib/allocator/arena.ts:19:4
    (set_local $1
     ;;@ ~lib/allocator/arena.ts:19:14
     (get_global $~lib/allocator/arena/offset)
    )
    ;;@ ~lib/allocator/arena.ts:20:4
    (set_local $2
     ;;@ ~lib/allocator/arena.ts:20:17
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/arena.ts:20:18
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/arena.ts:20:24
        (get_local $0)
       )
       ;;@ ~lib/allocator/arena.ts:20:31
       (i32.const 7)
      )
      ;;@ ~lib/allocator/arena.ts:20:42
      (i32.xor
       ;;@ ~lib/allocator/arena.ts:20:43
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:21:4
    (set_local $3
     ;;@ ~lib/allocator/arena.ts:21:22
     (current_memory)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      (get_local $2)
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       (get_local $3)
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:22:43
     (block
      ;;@ ~lib/allocator/arena.ts:23:6
      (set_local $4
       ;;@ ~lib/allocator/arena.ts:23:24
       (i32.shr_u
        (i32.and
         ;;@ ~lib/allocator/arena.ts:23:25
         (i32.add
          ;;@ ~lib/allocator/arena.ts:23:26
          (i32.sub
           (get_local $2)
           ;;@ ~lib/allocator/arena.ts:23:35
           (get_local $1)
          )
          ;;@ ~lib/allocator/arena.ts:23:41
          (i32.const 65535)
         )
         ;;@ ~lib/allocator/arena.ts:23:51
         (i32.xor
          ;;@ ~lib/allocator/arena.ts:23:52
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ ~lib/allocator/arena.ts:23:64
        (i32.const 16)
       )
      )
      ;;@ ~lib/allocator/arena.ts:24:6
      (set_local $5
       ;;@ ~lib/allocator/arena.ts:24:24
       (select
        (tee_local $5
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $3)
        )
        (tee_local $6
         ;;@ ~lib/allocator/arena.ts:24:41
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      ;;@ ~lib/allocator/arena.ts:25:6
      (if
       ;;@ ~lib/allocator/arena.ts:25:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:25:22
         (get_local $5)
        )
        ;;@ ~lib/allocator/arena.ts:25:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:25:40
       (if
        ;;@ ~lib/allocator/arena.ts:26:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/arena.ts:26:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/arena.ts:26:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/arena.ts:26:42
        (unreachable)
       )
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     ;;@ ~lib/allocator/arena.ts:31:13
     (get_local $2)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:34:9
  (i32.const 0)
 )
 (func $assembly/integer/u128/u128#constructor (; 2 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 16)
       )
      )
      (i64.store
       (get_local $3)
       (get_local $1)
      )
      (i64.store offset=8
       (get_local $3)
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
  )
 )
 (func $test/u128/u128/plus (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  ;;@ test/u128/u128.ts:7:66
  (block $assembly/integer/u128/u128.add|inlined.0 (result i32)
   (set_local $3
    ;;@ test/u128/u128.ts:7:34
    (block $assembly/integer/u128/u128.from<u32>|inlined.1 (result i32)
     (br $assembly/integer/u128/u128.from<u32>|inlined.1
      (block $assembly/integer/u128/u128.fromU64|inlined.1 (result i32)
       (set_local $2
        (i64.extend_u/i32
         (get_local $0)
        )
       )
       (call $assembly/integer/u128/u128#constructor
        (i32.const 0)
        (get_local $2)
        (i64.const 0)
       )
      )
     )
    )
   )
   (set_local $4
    ;;@ test/u128/u128.ts:7:54
    (block $assembly/integer/u128/u128.from<u32>|inlined.2 (result i32)
     ;;@ assembly/integer/u128.ts:141:9
     (br $assembly/integer/u128/u128.from<u32>|inlined.2
      ;;@ assembly/integer/u128.ts:147:48
      (block $assembly/integer/u128/u128.fromU64|inlined.2 (result i32)
       (set_local $2
        ;;@ assembly/integer/u128.ts:147:56
        (i64.extend_u/i32
         (get_local $1)
        )
       )
       ;;@ assembly/integer/u128.ts:64:25
       (call $assembly/integer/u128/u128#constructor
        (i32.const 0)
        ;;@ assembly/integer/u128.ts:64:20
        (get_local $2)
        ;;@ assembly/integer/u128.ts:170:21
        (i64.const 0)
       )
      )
     )
    )
   )
   ;;@ assembly/integer/u128.ts:409:4
   (if
    (i32.eqz
     ;;@ assembly/integer/u128.ts:409:11
     (get_local $3)
    )
    (block
     (call $~lib/env/abort
      ;;@ assembly/integer/u128.ts:409:14
      (i32.const 44)
      (i32.const 96)
      (i32.const 409)
      (i32.const 4)
     )
     (unreachable)
    )
   )
   ;;@ assembly/integer/u128.ts:410:4
   (if
    (i32.eqz
     ;;@ assembly/integer/u128.ts:410:11
     (get_local $4)
    )
    (block
     (call $~lib/env/abort
      ;;@ assembly/integer/u128.ts:410:14
      (i32.const 44)
      (i32.const 96)
      (i32.const 410)
      (i32.const 4)
     )
     (unreachable)
    )
   )
   ;;@ assembly/integer/u128.ts:420:4
   (set_local $2
    ;;@ assembly/integer/u128.ts:420:13
    (i64.load
     (get_local $4)
    )
   )
   ;;@ assembly/integer/u128.ts:421:4
   (set_local $5
    ;;@ assembly/integer/u128.ts:421:13
    (i64.add
     (i64.load
      (get_local $3)
     )
     ;;@ assembly/integer/u128.ts:421:20
     (get_local $2)
    )
   )
   ;;@ assembly/integer/u128.ts:422:4
   (set_local $6
    ;;@ assembly/integer/u128.ts:422:13
    (i64.add
     (i64.add
      (i64.load offset=8
       (get_local $3)
      )
      ;;@ assembly/integer/u128.ts:422:20
      (i64.load offset=8
       (get_local $4)
      )
     )
     ;;@ assembly/integer/u128.ts:422:27
     (i64.extend_u/i32
      ;;@ assembly/integer/u128.ts:422:34
      (i64.lt_u
       (get_local $5)
       ;;@ assembly/integer/u128.ts:422:39
       (get_local $2)
      )
     )
    )
   )
   ;;@ assembly/integer/u128.ts:424:26
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ assembly/integer/u128.ts:424:20
    (get_local $5)
    ;;@ assembly/integer/u128.ts:424:24
    (get_local $6)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    ;;@ ~lib/allocator/arena.ts:12:49
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:12:50
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
)
