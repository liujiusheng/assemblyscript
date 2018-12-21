(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 40) "\08\00\00\00\04")
 (export "memory" (memory $0))
 (export "add" (func $assembly/module/add))
 (export "fib" (func $assembly/module/fib))
 (func $~lib/array/Array<i32>#__get (; 0 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:73:23
  (if (result i32)
   ;;@ ~lib/array.ts:71:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:71:24
    (i32.shr_u
     ;;@ ~lib/array.ts:71:30
     (i32.load
      ;;@ ~lib/array.ts:70:4
      (tee_local $2
       ;;@ ~lib/array.ts:70:17
       (i32.load
        (get_local $0)
       )
      )
     )
     ;;@ ~lib/array.ts:71:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:68:91
   (i32.load offset=8
    ;;@ ~lib/internal/arraybuffer.ts:68:20
    (i32.add
     (get_local $2)
     ;;@ ~lib/internal/arraybuffer.ts:68:48
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:68:49
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:68:65
      (i32.const 2)
     )
    )
   )
   ;;@ ~lib/array.ts:73:8
   (unreachable)
  )
 )
 (func $assembly/module/add (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ assembly/module.ts:3:4
  (set_local $2
   ;;@ assembly/module.ts:3:27
   (i32.const 40)
  )
  ;;@ assembly/module.ts:4:4
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     ;;@ assembly/module.ts:4:16
     (i32.ge_s
      (get_local $0)
      ;;@ assembly/module.ts:4:18
      (i32.const 4)
     )
    )
    ;;@ assembly/module.ts:5:8
    (set_local $1
     (i32.add
      (get_local $1)
      ;;@ assembly/module.ts:5:16
      (call $~lib/array/Array<i32>#__get
       (get_local $2)
       ;;@ assembly/module.ts:5:22
       (get_local $0)
      )
     )
    )
    ;;@ assembly/module.ts:4:20
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/module.ts:7:11
  (get_local $1)
 )
 (func $assembly/module/fib (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  ;;@ assembly/module.ts:11:4
  (if
   ;;@ assembly/module.ts:11:8
   (i32.lt_s
    (get_local $0)
    ;;@ assembly/module.ts:11:12
    (i32.const 2)
   )
   ;;@ assembly/module.ts:11:15
   (return
    ;;@ assembly/module.ts:12:13
    (i32.const 1)
   )
  )
  ;;@ assembly/module.ts:14:33
  (i32.add
   ;;@ assembly/module.ts:14:11
   (call $assembly/module/fib
    ;;@ assembly/module.ts:14:15
    (i32.sub
     (get_local $0)
     ;;@ assembly/module.ts:14:19
     (i32.const 2)
    )
   )
   ;;@ assembly/module.ts:14:24
   (call $assembly/module/fib
    ;;@ assembly/module.ts:14:28
    (i32.sub
     (get_local $0)
     ;;@ assembly/module.ts:14:32
     (i32.const 1)
    )
   )
  )
 )
)
