(module
 (type $ii (func (param i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIIIIv (func (param i32 i64 i64 i64 i64)))
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
 (global $tests/assembly/u128.spec.as/HEX_CHARS i32 (i32.const 8))
 (global $assembly/integer/u128/u128.Zero (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 148))
 (data (i32.const 8) "\10\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 44) "\17\00\00\00v\00a\00l\00u\00e\00 \00s\00h\00o\00u\00l\00d\00n\00\'\00t\00 \00b\00e\00 \00n\00u\00l\00l\00")
 (data (i32.const 96) "\18\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (export "BasicOperationsTest#shouldAddTwoNumbers" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldAddTwoNumbers))
 (export "BasicOperationsTest#shouldSubtractTwoNumbers" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldSubtractTwoNumbers))
 (export "BasicOperationsTest#shouldLeftShiftOneNumber" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldLeftShiftOneNumber))
 (export "BasicOperationsTest#shouldRightShiftOneNumber" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldRightShiftOneNumber))
 (export "BasicOperationsTest#shouldMultiplyTwoNumbers" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldMultiplyTwoNumbers))
 (export "BasicOperationsTest#shouldDivideTwoNumbers" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldDivideTwoNumbers))
 (export "BasicOperationsTest#shouldIncrementNumber" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldIncrementNumber))
 (export "BasicOperationsTest#shouldDecrementNumber" (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldDecrementNumber))
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
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldAddTwoNumbers (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ tests/assembly/u128.spec.as.ts:8:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:8:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:8:21
    (i64.const 100)
    ;;@ tests/assembly/u128.spec.as.ts:8:26
    (i64.const 255)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:9:4
  (set_local $2
   ;;@ tests/assembly/u128.spec.as.ts:9:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:9:21
    (i64.const 255)
    ;;@ tests/assembly/u128.spec.as.ts:9:26
    (i64.const 100)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:10:4
  (set_local $6
   ;;@ tests/assembly/u128.spec.as.ts:10:19
   (block $assembly/integer/u128/u128.add|inlined.0 (result i32)
    ;;@ assembly/integer/u128.ts:409:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:409:11
      (get_local $1)
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
      (get_local $2)
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
    (set_local $3
     ;;@ assembly/integer/u128.ts:420:13
     (i64.load
      (get_local $2)
     )
    )
    ;;@ assembly/integer/u128.ts:421:4
    (set_local $4
     ;;@ assembly/integer/u128.ts:421:13
     (i64.add
      (i64.load
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:421:20
      (get_local $3)
     )
    )
    ;;@ assembly/integer/u128.ts:422:4
    (set_local $5
     ;;@ assembly/integer/u128.ts:422:13
     (i64.add
      (i64.add
       (i64.load offset=8
        (get_local $1)
       )
       ;;@ assembly/integer/u128.ts:422:20
       (i64.load offset=8
        (get_local $2)
       )
      )
      ;;@ assembly/integer/u128.ts:422:27
      (i64.extend_u/i32
       ;;@ assembly/integer/u128.ts:422:34
       (i64.lt_u
        (get_local $4)
        ;;@ assembly/integer/u128.ts:422:39
        (get_local $3)
       )
      )
     )
    )
    ;;@ assembly/integer/u128.ts:424:26
    (call $assembly/integer/u128/u128#constructor
     (i32.const 0)
     ;;@ assembly/integer/u128.ts:424:20
     (get_local $4)
     ;;@ assembly/integer/u128.ts:424:24
     (get_local $5)
    )
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:11:33
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.0 (result i32)
    (set_local $7
     ;;@ tests/assembly/u128.spec.as.ts:11:16
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:11:25
      (i64.const 355)
      ;;@ tests/assembly/u128.spec.as.ts:11:30
      (i64.const 355)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $6)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $7)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $8
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $6)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $7)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $6)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $7)
      )
     )
     (get_local $8)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldSubtractTwoNumbers (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  ;;@ tests/assembly/u128.spec.as.ts:15:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:15:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:15:21
    (i64.const 355)
    ;;@ tests/assembly/u128.spec.as.ts:15:26
    (i64.const 355)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:16:4
  (set_local $2
   ;;@ tests/assembly/u128.spec.as.ts:16:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:16:21
    (i64.const 100)
    ;;@ tests/assembly/u128.spec.as.ts:16:26
    (i64.const 255)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:17:37
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.1 (result i32)
    (set_local $6
     ;;@ tests/assembly/u128.spec.as.ts:17:11
     (block $assembly/integer/u128/u128.sub|inlined.1 (result i32)
      ;;@ assembly/integer/u128.ts:429:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:429:11
        (get_local $1)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:429:14
         (i32.const 44)
         (i32.const 96)
         (i32.const 429)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:430:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:430:11
        (get_local $2)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:430:14
         (i32.const 44)
         (i32.const 96)
         (i32.const 430)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:440:4
      (set_local $5
       ;;@ assembly/integer/u128.ts:440:13
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:441:4
      (set_local $4
       ;;@ assembly/integer/u128.ts:441:13
       (i64.sub
        (get_local $5)
        ;;@ assembly/integer/u128.ts:441:20
        (i64.load
         (get_local $2)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:442:4
      (set_local $3
       ;;@ assembly/integer/u128.ts:442:13
       (i64.sub
        (i64.sub
         (i64.load offset=8
          (get_local $1)
         )
         ;;@ assembly/integer/u128.ts:442:20
         (i64.load offset=8
          (get_local $2)
         )
        )
        ;;@ assembly/integer/u128.ts:442:27
        (i64.extend_u/i32
         ;;@ assembly/integer/u128.ts:442:34
         (i64.gt_u
          (get_local $4)
          ;;@ assembly/integer/u128.ts:442:39
          (get_local $5)
         )
        )
       )
      )
      ;;@ assembly/integer/u128.ts:444:26
      (call $assembly/integer/u128/u128#constructor
       (i32.const 0)
       ;;@ assembly/integer/u128.ts:444:20
       (get_local $4)
       ;;@ assembly/integer/u128.ts:444:24
       (get_local $3)
      )
     )
    )
    (set_local $7
     ;;@ tests/assembly/u128.spec.as.ts:17:20
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:17:29
      (i64.const 255)
      ;;@ tests/assembly/u128.spec.as.ts:17:34
      (i64.const 100)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $6)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $7)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $8
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $6)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $7)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $6)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $7)
      )
     )
     (get_local $8)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldLeftShiftOneNumber (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  ;;@ tests/assembly/u128.spec.as.ts:21:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:21:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:21:21
    (i64.const 1)
    ;;@ tests/assembly/u128.spec.as.ts:21:24
    (i64.const 0)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:22:35
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.2 (result i32)
    (set_local $2
     ;;@ tests/assembly/u128.spec.as.ts:22:11
     (block $assembly/integer/u128/u128.shl|inlined.1 (result i32)
      (set_local $2
       ;;@ tests/assembly/u128.spec.as.ts:22:16
       (i32.const 65)
      )
      ;;@ assembly/integer/u128.ts:278:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:278:11
        (get_local $1)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:278:18
         (i32.const 44)
         (i32.const 96)
         (i32.const 278)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:280:4
      (set_local $2
       (i32.and
        (get_local $2)
        ;;@ assembly/integer/u128.ts:280:13
        (i32.const 127)
       )
      )
      ;;@ assembly/integer/u128.ts:283:4
      (set_local $8
       ;;@ assembly/integer/u128.ts:283:23
       (i64.extend_u/i32
        (get_local $2)
       )
      )
      ;;@ assembly/integer/u128.ts:285:4
      (set_local $7
       ;;@ assembly/integer/u128.ts:285:20
       (i64.sub
        (i64.shr_u
         ;;@ assembly/integer/u128.ts:285:21
         (i64.and
          ;;@ assembly/integer/u128.ts:285:22
          (i64.or
           ;;@ assembly/integer/u128.ts:285:23
           (i64.add
            ;;@ assembly/integer/u128.ts:285:24
            (get_local $8)
            ;;@ assembly/integer/u128.ts:285:34
            (i64.const 127)
           )
           ;;@ assembly/integer/u128.ts:285:41
           (get_local $8)
          )
          ;;@ assembly/integer/u128.ts:285:52
          (i64.const 64)
         )
         ;;@ assembly/integer/u128.ts:285:59
         (i64.const 6)
        )
        ;;@ assembly/integer/u128.ts:285:64
        (i64.const 1)
       )
      )
      ;;@ assembly/integer/u128.ts:286:4
      (set_local $6
       ;;@ assembly/integer/u128.ts:286:20
       (i64.sub
        (i64.shr_u
         ;;@ assembly/integer/u128.ts:286:21
         (get_local $8)
         ;;@ assembly/integer/u128.ts:286:32
         (i64.const 6)
        )
        ;;@ assembly/integer/u128.ts:286:37
        (i64.const 1)
       )
      )
      ;;@ assembly/integer/u128.ts:288:4
      (set_local $8
       (i64.and
        (get_local $8)
        ;;@ assembly/integer/u128.ts:288:15
        (i64.const 63)
       )
      )
      ;;@ assembly/integer/u128.ts:290:4
      (set_local $5
       ;;@ assembly/integer/u128.ts:290:13
       (i64.load
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:291:4
      (set_local $4
       ;;@ assembly/integer/u128.ts:291:13
       (i64.shl
        (get_local $5)
        ;;@ assembly/integer/u128.ts:291:19
        (get_local $8)
       )
      )
      ;;@ assembly/integer/u128.ts:292:4
      (set_local $3
       ;;@ assembly/integer/u128.ts:292:13
       (i64.and
        (get_local $4)
        ;;@ assembly/integer/u128.ts:292:18
        (i64.xor
         ;;@ assembly/integer/u128.ts:292:19
         (get_local $6)
         (i64.const -1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:294:4
      (set_local $3
       (i64.or
        (get_local $3)
        ;;@ assembly/integer/u128.ts:294:10
        (i64.and
         (i64.or
          ;;@ assembly/integer/u128.ts:294:11
          (i64.shl
           ;;@ assembly/integer/u128.ts:294:12
           (i64.load offset=8
            (get_local $1)
           )
           ;;@ assembly/integer/u128.ts:294:24
           (get_local $8)
          )
          ;;@ assembly/integer/u128.ts:294:35
          (i64.and
           ;;@ assembly/integer/u128.ts:294:36
           (i64.shr_u
            ;;@ assembly/integer/u128.ts:294:37
            (get_local $5)
            ;;@ assembly/integer/u128.ts:294:43
            (i64.sub
             ;;@ assembly/integer/u128.ts:294:44
             (i64.const 64)
             ;;@ assembly/integer/u128.ts:294:49
             (get_local $8)
            )
           )
           ;;@ assembly/integer/u128.ts:294:61
           (get_local $7)
          )
         )
         ;;@ assembly/integer/u128.ts:294:70
         (get_local $6)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:296:33
      (call $assembly/integer/u128/u128#constructor
       (i32.const 0)
       ;;@ assembly/integer/u128.ts:296:20
       (i64.and
        (get_local $4)
        ;;@ assembly/integer/u128.ts:296:25
        (get_local $6)
       )
       ;;@ assembly/integer/u128.ts:296:31
       (get_local $3)
      )
     )
    )
    (set_local $9
     ;;@ tests/assembly/u128.spec.as.ts:22:22
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:22:31
      (i64.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:22:34
      (i64.const 2)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $2)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $9)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $10
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $2)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $9)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $9)
      )
     )
     (get_local $10)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldRightShiftOneNumber (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  ;;@ tests/assembly/u128.spec.as.ts:26:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:26:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:26:21
    (i64.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:26:24
    (i64.const 100)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:27:36
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.3 (result i32)
    (set_local $2
     ;;@ tests/assembly/u128.spec.as.ts:27:11
     (block $assembly/integer/u128/u128.shr|inlined.1 (result i32)
      (set_local $2
       ;;@ tests/assembly/u128.spec.as.ts:27:16
       (i32.const 65)
      )
      ;;@ assembly/integer/u128.ts:301:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:301:11
        (get_local $1)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:301:18
         (i32.const 44)
         (i32.const 96)
         (i32.const 301)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:303:4
      (set_local $2
       (i32.and
        (get_local $2)
        ;;@ assembly/integer/u128.ts:303:13
        (i32.const 127)
       )
      )
      ;;@ assembly/integer/u128.ts:306:4
      (set_local $8
       ;;@ assembly/integer/u128.ts:306:23
       (i64.extend_u/i32
        (get_local $2)
       )
      )
      ;;@ assembly/integer/u128.ts:308:4
      (set_local $7
       ;;@ assembly/integer/u128.ts:308:20
       (i64.sub
        (i64.shr_u
         ;;@ assembly/integer/u128.ts:308:21
         (i64.and
          ;;@ assembly/integer/u128.ts:308:22
          (i64.or
           ;;@ assembly/integer/u128.ts:308:23
           (i64.add
            ;;@ assembly/integer/u128.ts:308:24
            (get_local $8)
            ;;@ assembly/integer/u128.ts:308:34
            (i64.const 127)
           )
           ;;@ assembly/integer/u128.ts:308:41
           (get_local $8)
          )
          ;;@ assembly/integer/u128.ts:308:52
          (i64.const 64)
         )
         ;;@ assembly/integer/u128.ts:308:59
         (i64.const 6)
        )
        ;;@ assembly/integer/u128.ts:308:64
        (i64.const 1)
       )
      )
      ;;@ assembly/integer/u128.ts:309:4
      (set_local $6
       ;;@ assembly/integer/u128.ts:309:20
       (i64.sub
        (i64.shr_u
         ;;@ assembly/integer/u128.ts:309:21
         (get_local $8)
         ;;@ assembly/integer/u128.ts:309:32
         (i64.const 6)
        )
        ;;@ assembly/integer/u128.ts:309:37
        (i64.const 1)
       )
      )
      ;;@ assembly/integer/u128.ts:311:4
      (set_local $8
       (i64.and
        (get_local $8)
        ;;@ assembly/integer/u128.ts:311:15
        (i64.const 63)
       )
      )
      ;;@ assembly/integer/u128.ts:313:4
      (set_local $5
       ;;@ assembly/integer/u128.ts:313:13
       (i64.load offset=8
        (get_local $1)
       )
      )
      ;;@ assembly/integer/u128.ts:314:4
      (set_local $4
       ;;@ assembly/integer/u128.ts:314:13
       (i64.shr_u
        (get_local $5)
        ;;@ assembly/integer/u128.ts:314:19
        (get_local $8)
       )
      )
      ;;@ assembly/integer/u128.ts:315:4
      (set_local $3
       ;;@ assembly/integer/u128.ts:315:13
       (i64.and
        (get_local $4)
        ;;@ assembly/integer/u128.ts:315:18
        (i64.xor
         ;;@ assembly/integer/u128.ts:315:19
         (get_local $6)
         (i64.const -1)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:317:4
      (set_local $3
       (i64.or
        (get_local $3)
        ;;@ assembly/integer/u128.ts:317:10
        (i64.and
         (i64.or
          ;;@ assembly/integer/u128.ts:317:11
          (i64.shr_u
           ;;@ assembly/integer/u128.ts:317:12
           (i64.load
            (get_local $1)
           )
           ;;@ assembly/integer/u128.ts:317:24
           (get_local $8)
          )
          ;;@ assembly/integer/u128.ts:317:35
          (i64.and
           ;;@ assembly/integer/u128.ts:317:36
           (i64.shl
            ;;@ assembly/integer/u128.ts:317:37
            (get_local $5)
            ;;@ assembly/integer/u128.ts:317:43
            (i64.sub
             ;;@ assembly/integer/u128.ts:317:44
             (i64.const 64)
             ;;@ assembly/integer/u128.ts:317:49
             (get_local $8)
            )
           )
           ;;@ assembly/integer/u128.ts:317:61
           (get_local $7)
          )
         )
         ;;@ assembly/integer/u128.ts:317:70
         (get_local $6)
        )
       )
      )
      ;;@ assembly/integer/u128.ts:319:33
      (call $assembly/integer/u128/u128#constructor
       (i32.const 0)
       ;;@ assembly/integer/u128.ts:319:20
       (get_local $3)
       ;;@ assembly/integer/u128.ts:319:24
       (i64.and
        (get_local $4)
        ;;@ assembly/integer/u128.ts:319:29
        (get_local $6)
       )
      )
     )
    )
    (set_local $9
     ;;@ tests/assembly/u128.spec.as.ts:27:22
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:27:31
      (i64.const 50)
      ;;@ tests/assembly/u128.spec.as.ts:27:35
      (i64.const 0)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $2)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $9)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $10
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $2)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $9)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $2)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $9)
      )
     )
     (get_local $10)
    )
   )
   (i32.const 1)
  )
 )
 (func $assembly/integer/u128/u128.from<i64> (; 7 ;) (type $Ii) (param $0 i64) (result i32)
  ;;@ assembly/integer/u128.ts:141:9
  (return
   ;;@ assembly/integer/u128.ts:148:48
   (block $assembly/integer/u128/u128.fromI64|inlined.0 (result i32)
    ;;@ assembly/integer/u128.ts:59:51
    (call $assembly/integer/u128/u128#constructor
     (i32.const 0)
     ;;@ assembly/integer/u128.ts:59:20
     (get_local $0)
     ;;@ assembly/integer/u128.ts:59:32
     (i64.sub
      (i64.const 0)
      ;;@ assembly/integer/u128.ts:59:33
      (i64.extend_u/i32
       ;;@ assembly/integer/u128.ts:59:40
       (i64.lt_s
        (get_local $0)
        ;;@ assembly/integer/u128.ts:59:48
        (i64.const 0)
       )
      )
     )
    )
   )
  )
 )
 (func $assembly/integer/u128/u128.from<u32> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i64)
  ;;@ assembly/integer/u128.ts:141:9
  (return
   ;;@ assembly/integer/u128.ts:147:48
   (block $assembly/integer/u128/u128.fromU64|inlined.0 (result i32)
    (set_local $1
     ;;@ assembly/integer/u128.ts:147:56
     (i64.extend_u/i32
      (get_local $0)
     )
    )
    ;;@ assembly/integer/u128.ts:64:25
    (call $assembly/integer/u128/u128#constructor
     (i32.const 0)
     ;;@ assembly/integer/u128.ts:64:20
     (get_local $1)
     ;;@ assembly/integer/u128.ts:170:21
     (i64.const 0)
    )
   )
  )
 )
 (func $assembly/globals/__multi3 (; 9 ;) (type $iIIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (set_local $5
   ;;@ assembly/globals.ts:106:10
   (get_local $1)
  )
  (set_local $6
   ;;@ assembly/globals.ts:106:18
   (get_local $3)
  )
  ;;@ assembly/globals.ts:109:2
  (set_local $9
   ;;@ assembly/globals.ts:109:11
   (i64.and
    (get_local $5)
    ;;@ assembly/globals.ts:109:15
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/globals.ts:110:2
  (set_local $10
   ;;@ assembly/globals.ts:110:11
   (i64.and
    (get_local $6)
    ;;@ assembly/globals.ts:110:15
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/globals.ts:111:2
  (set_local $11
   ;;@ assembly/globals.ts:111:11
   (i64.mul
    (get_local $9)
    ;;@ assembly/globals.ts:111:16
    (get_local $10)
   )
  )
  ;;@ assembly/globals.ts:112:2
  (set_local $12
   ;;@ assembly/globals.ts:112:11
   (i64.and
    (get_local $11)
    ;;@ assembly/globals.ts:112:15
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/globals.ts:114:2
  (set_local $5
   ;;@ assembly/globals.ts:114:6
   (i64.shr_u
    (get_local $5)
    ;;@ assembly/globals.ts:114:11
    (i64.const 32)
   )
  )
  ;;@ assembly/globals.ts:115:2
  (set_local $11
   ;;@ assembly/globals.ts:115:6
   (i64.add
    (i64.mul
     (get_local $5)
     ;;@ assembly/globals.ts:115:10
     (get_local $10)
    )
    ;;@ assembly/globals.ts:115:15
    (i64.shr_u
     ;;@ assembly/globals.ts:115:16
     (get_local $11)
     ;;@ assembly/globals.ts:115:21
     (i64.const 32)
    )
   )
  )
  ;;@ assembly/globals.ts:116:2
  (set_local $8
   ;;@ assembly/globals.ts:116:6
   (i64.and
    (get_local $11)
    ;;@ assembly/globals.ts:116:10
    (i64.const 4294967295)
   )
  )
  ;;@ assembly/globals.ts:117:2
  (set_local $7
   ;;@ assembly/globals.ts:117:6
   (i64.shr_u
    (get_local $11)
    ;;@ assembly/globals.ts:117:11
    (i64.const 32)
   )
  )
  ;;@ assembly/globals.ts:118:2
  (set_local $6
   ;;@ assembly/globals.ts:118:6
   (i64.shr_u
    (get_local $6)
    ;;@ assembly/globals.ts:118:11
    (i64.const 32)
   )
  )
  ;;@ assembly/globals.ts:119:2
  (set_local $11
   ;;@ assembly/globals.ts:119:6
   (i64.add
    (i64.mul
     (get_local $9)
     ;;@ assembly/globals.ts:119:11
     (get_local $6)
    )
    ;;@ assembly/globals.ts:119:15
    (get_local $8)
   )
  )
  ;;@ assembly/globals.ts:121:2
  (set_local $13
   ;;@ assembly/globals.ts:121:12
   (i64.add
    (get_local $12)
    ;;@ assembly/globals.ts:121:17
    (i64.shl
     ;;@ assembly/globals.ts:121:18
     (get_local $11)
     ;;@ assembly/globals.ts:121:23
     (i64.const 32)
    )
   )
  )
  ;;@ assembly/globals.ts:122:2
  (set_local $14
   ;;@ assembly/globals.ts:122:12
   (i64.add
    (i64.mul
     (get_local $5)
     ;;@ assembly/globals.ts:122:17
     (get_local $6)
    )
    ;;@ assembly/globals.ts:122:21
    (get_local $7)
   )
  )
  ;;@ assembly/globals.ts:123:6
  (set_local $14
   (i64.add
    (get_local $14)
    ;;@ assembly/globals.ts:123:12
    (i64.mul
     (get_local $2)
     ;;@ assembly/globals.ts:123:17
     (get_local $3)
    )
   )
  )
  ;;@ assembly/globals.ts:124:6
  (set_local $14
   (i64.add
    (get_local $14)
    ;;@ assembly/globals.ts:124:12
    (i64.mul
     (get_local $1)
     ;;@ assembly/globals.ts:124:17
     (get_local $4)
    )
   )
  )
  ;;@ assembly/globals.ts:125:6
  (set_local $14
   (i64.add
    (get_local $14)
    ;;@ assembly/globals.ts:125:12
    (i64.shr_u
     (get_local $11)
     ;;@ assembly/globals.ts:125:17
     (i64.const 32)
    )
   )
  )
  ;;@ assembly/globals.ts:127:2
  (set_global $assembly/globals/__res128_lo
   ;;@ assembly/globals.ts:127:16
   (get_local $13)
  )
  ;;@ assembly/globals.ts:128:2
  (set_global $assembly/globals/__res128_hi
   ;;@ assembly/globals.ts:128:16
   (get_local $14)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldMultiplyTwoNumbers (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ tests/assembly/u128.spec.as.ts:31:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:31:17
   (call $assembly/integer/u128/u128.from<i64>
    ;;@ tests/assembly/u128.spec.as.ts:31:22
    (i64.const 43545453452)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:32:4
  (set_local $2
   ;;@ tests/assembly/u128.spec.as.ts:32:17
   (call $assembly/integer/u128/u128.from<u32>
    ;;@ tests/assembly/u128.spec.as.ts:32:22
    (i32.const -1941512942)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:33:4
  (set_local $3
   ;;@ tests/assembly/u128.spec.as.ts:33:12
   (block $assembly/integer/u128/u128.mul|inlined.0 (result i32)
    ;;@ assembly/integer/u128.ts:450:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:450:11
      (get_local $1)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:450:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 450)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:451:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:451:11
      (get_local $2)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:451:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 451)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:452:4
    (call $assembly/globals/__multi3
     ;;@ assembly/integer/u128.ts:452:13
     (i32.const 0)
     ;;@ assembly/integer/u128.ts:452:19
     (i64.load
      (get_local $1)
     )
     ;;@ assembly/integer/u128.ts:452:25
     (i64.load offset=8
      (get_local $1)
     )
     ;;@ assembly/integer/u128.ts:452:31
     (i64.load
      (get_local $2)
     )
     ;;@ assembly/integer/u128.ts:452:37
     (i64.load offset=8
      (get_local $2)
     )
    )
    ;;@ assembly/integer/u128.ts:453:44
    (call $assembly/integer/u128/u128#constructor
     (i32.const 0)
     ;;@ assembly/integer/u128.ts:453:20
     (get_global $assembly/globals/__res128_lo)
     ;;@ assembly/integer/u128.ts:453:33
     (get_global $assembly/globals/__res128_hi)
    )
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:34:47
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.4 (result i32)
    (set_local $4
     ;;@ tests/assembly/u128.spec.as.ts:34:16
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:34:25
      (i64.const -8198227418743579688)
      ;;@ tests/assembly/u128.spec.as.ts:34:46
      (i64.const 5)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $3)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $4)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $5
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $3)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $4)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $3)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $4)
      )
     )
     (get_local $5)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldDivideTwoNumbers (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ tests/assembly/u128.spec.as.ts:38:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:38:17
   (call $assembly/integer/u128/u128.from<i64>
    ;;@ tests/assembly/u128.spec.as.ts:38:22
    (i64.const 43545453452)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:39:4
  (set_local $2
   ;;@ tests/assembly/u128.spec.as.ts:39:17
   (call $assembly/integer/u128/u128.from<u32>
    ;;@ tests/assembly/u128.spec.as.ts:39:22
    (i32.const -1941512942)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:40:4
  (set_local $3
   ;;@ tests/assembly/u128.spec.as.ts:40:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:40:21
    (i64.const -8198227418743579688)
    ;;@ tests/assembly/u128.spec.as.ts:40:42
    (i64.const 5)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:41:20
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.5 (result i32)
    (set_local $4
     ;;@ tests/assembly/u128.spec.as.ts:41:11
     (block $assembly/integer/u128/u128.div|inlined.1 (result i32)
      ;;@ assembly/integer/u128.ts:458:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:458:11
        (get_local $3)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:458:14
         (i32.const 44)
         (i32.const 96)
         (i32.const 458)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:459:4
      (if
       (i32.eqz
        ;;@ assembly/integer/u128.ts:459:11
        (get_local $1)
       )
       (block
        (call $~lib/env/abort
         ;;@ assembly/integer/u128.ts:459:14
         (i32.const 44)
         (i32.const 96)
         (i32.const 459)
         (i32.const 4)
        )
        (unreachable)
       )
      )
      ;;@ assembly/integer/u128.ts:462:16
      (get_global $assembly/integer/u128/u128.Zero)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $4)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $2)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $5
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $4)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $2)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $4)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $2)
      )
     )
     (get_local $5)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldIncrementNumber (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  ;;@ tests/assembly/u128.spec.as.ts:45:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:45:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:45:21
    (i64.const -8198227418743579688)
    ;;@ tests/assembly/u128.spec.as.ts:45:42
    (i64.const 5)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:46:4
  (set_local $1
   (block $assembly/integer/u128/u128#preInc|inlined.0 (result i32)
    ;;@ assembly/integer/u128.ts:233:4
    (set_local $2
     ;;@ assembly/integer/u128.ts:233:15
     (i64.add
      (i64.load
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:233:25
      (i64.const 1)
     )
    )
    ;;@ assembly/integer/u128.ts:234:4
    (i64.store offset=8
     (get_local $1)
     (i64.add
      (i64.load offset=8
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:234:15
      (i64.shr_u
       (i64.and
        ;;@ assembly/integer/u128.ts:234:16
        (i64.xor
         ;;@ assembly/integer/u128.ts:234:17
         (i64.load
          (get_local $1)
         )
         ;;@ assembly/integer/u128.ts:234:27
         (get_local $2)
        )
        ;;@ assembly/integer/u128.ts:234:34
        (i64.load
         (get_local $1)
        )
       )
       ;;@ assembly/integer/u128.ts:234:46
       (i64.const 63)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:235:4
    (i64.store
     (get_local $1)
     ;;@ assembly/integer/u128.ts:235:15
     (get_local $2)
    )
    ;;@ assembly/integer/u128.ts:236:11
    (get_local $1)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:47:47
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.6 (result i32)
    (set_local $3
     ;;@ tests/assembly/u128.spec.as.ts:47:16
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:47:25
      (i64.const -8198227418743579687)
      ;;@ tests/assembly/u128.spec.as.ts:47:46
      (i64.const 5)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $1)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $3)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $4
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $1)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $3)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $3)
      )
     )
     (get_local $4)
    )
   )
   (i32.const 1)
  )
 )
 (func $tests/assembly/u128.spec.as/BasicOperationsTest#shouldDecrementNumber (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  ;;@ tests/assembly/u128.spec.as.ts:51:4
  (set_local $1
   ;;@ tests/assembly/u128.spec.as.ts:51:12
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    ;;@ tests/assembly/u128.spec.as.ts:51:21
    (i64.const -8198227418743579688)
    ;;@ tests/assembly/u128.spec.as.ts:51:42
    (i64.const 5)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:52:4
  (set_local $1
   (block $assembly/integer/u128/u128#preDec|inlined.0 (result i32)
    ;;@ assembly/integer/u128.ts:241:4
    (set_local $2
     ;;@ assembly/integer/u128.ts:241:15
     (i64.sub
      (i64.load
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:241:25
      (i64.const 1)
     )
    )
    ;;@ assembly/integer/u128.ts:242:4
    (i64.store offset=8
     (get_local $1)
     (i64.sub
      (i64.load offset=8
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:242:15
      (i64.shr_u
       (i64.and
        ;;@ assembly/integer/u128.ts:242:16
        (i64.xor
         ;;@ assembly/integer/u128.ts:242:17
         (i64.load
          (get_local $1)
         )
         ;;@ assembly/integer/u128.ts:242:27
         (get_local $2)
        )
        ;;@ assembly/integer/u128.ts:242:34
        (get_local $2)
       )
       ;;@ assembly/integer/u128.ts:242:42
       (i64.const 63)
      )
     )
    )
    ;;@ assembly/integer/u128.ts:243:4
    (i64.store
     (get_local $1)
     ;;@ assembly/integer/u128.ts:243:15
     (get_local $2)
    )
    ;;@ assembly/integer/u128.ts:244:11
    (get_local $1)
   )
  )
  ;;@ tests/assembly/u128.spec.as.ts:53:47
  (i32.and
   (block $assembly/integer/u128/u128.eq|inlined.7 (result i32)
    (set_local $3
     ;;@ tests/assembly/u128.spec.as.ts:53:16
     (call $assembly/integer/u128/u128#constructor
      (i32.const 0)
      ;;@ tests/assembly/u128.spec.as.ts:53:25
      (i64.const -8198227418743579689)
      ;;@ tests/assembly/u128.spec.as.ts:53:46
      (i64.const 5)
     )
    )
    ;;@ assembly/integer/u128.ts:585:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:585:11
      (get_local $1)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:585:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 585)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:586:4
    (if
     (i32.eqz
      ;;@ assembly/integer/u128.ts:586:11
      (get_local $3)
     )
     (block
      (call $~lib/env/abort
       ;;@ assembly/integer/u128.ts:586:14
       (i32.const 44)
       (i32.const 96)
       (i32.const 586)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ assembly/integer/u128.ts:587:37
    (if (result i32)
     (tee_local $4
      ;;@ assembly/integer/u128.ts:587:11
      (i64.eq
       (i64.load offset=8
        (get_local $1)
       )
       ;;@ assembly/integer/u128.ts:587:19
       (i64.load offset=8
        (get_local $3)
       )
      )
     )
     ;;@ assembly/integer/u128.ts:587:27
     (i64.eq
      (i64.load
       (get_local $1)
      )
      ;;@ assembly/integer/u128.ts:587:35
      (i64.load
       (get_local $3)
      )
     )
     (get_local $4)
    )
   )
   (i32.const 1)
  )
 )
 (func $start (; 14 ;) (type $v)
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
  (set_global $assembly/integer/u128/u128.Zero
   (call $assembly/integer/u128/u128#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
 )
)
