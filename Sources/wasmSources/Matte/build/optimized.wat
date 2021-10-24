(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_=>_f64 (func (param i32 i32 i32) (result f64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_f64_i32_i32_=>_none (func (param i32 f64 i32 i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Math" "sin" (func $~lib/bindings/Math/sin (param f64) (result f64)))
 (import "Math" "cos" (func $~lib/bindings/Math/cos (param f64) (result f64)))
 (import "Math" "atan" (func $~lib/bindings/Math/atan (param f64) (result f64)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/Matrise i32 (i32.const 3))
 (global $assembly/index/Punkt i32 (i32.const 6))
 (global $assembly/index/Vektor3 i32 (i32.const 7))
 (global $assembly/index/Vektor4 i32 (i32.const 8))
 (global $assembly/index/Proj i32 (i32.const 9))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) ",")
 (data (i32.const 1096) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1356) "\1c")
 (data (i32.const 1388) "\1c")
 (data (i32.const 1420) "<")
 (data (i32.const 1436) " ")
 (data (i32.const 1446) "\f0?")
 (data (i32.const 1470) "\f0?")
 (data (i32.const 1484) "\\")
 (data (i32.const 1500) "H")
 (data (i32.const 1510) "\f0?")
 (data (i32.const 1542) "\f0?")
 (data (i32.const 1574) "\f0?")
 (data (i32.const 1580) "\9c")
 (data (i32.const 1596) "\80")
 (data (i32.const 1606) "\f0?")
 (data (i32.const 1646) "\f0?")
 (data (i32.const 1686) "\f0?")
 (data (i32.const 1726) "\f0?")
 (export "Matrise" (global $assembly/index/Matrise))
 (export "Matrise#get:array" (func $assembly/index/Matrise#get:array))
 (export "Matrise#set:array" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "Matrise#get:kolonnar" (func $assembly/index/Matrise#get:kolonnar))
 (export "Matrise#set:kolonnar" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "Matrise#constructor" (func $assembly/index/Matrise#constructor))
 (export "Matrise#radar" (func $assembly/index/Matrise#radar))
 (export "Matrise#getEl" (func $assembly/index/Matrise#getEl))
 (export "Matrise#setEl" (func $assembly/index/Matrise#setEl))
 (export "Matrise#determinant" (func $assembly/index/Matrise#determinant))
 (export "Matrise#transpose" (func $assembly/index/Matrise#transpose))
 (export "Matrise#skaler" (func $assembly/index/Matrise#skaler))
 (export "Matrise#dotProduktMat" (func $assembly/index/Matrise#dotProduktMat))
 (export "Matrise#dotProduktVec" (func $assembly/index/Matrise#dotProduktVec))
 (export "Matrise.dotProduktMat" (func $assembly/index/Matrise.dotProduktMat))
 (export "Punkt" (global $assembly/index/Punkt))
 (export "Punkt#get:x" (func $assembly/index/Punkt#get:x))
 (export "Punkt#set:x" (func $assembly/index/Punkt#set:x))
 (export "Punkt#get:y" (func $assembly/index/Punkt#get:y))
 (export "Punkt#set:y" (func $assembly/index/Punkt#set:y))
 (export "Punkt#constructor" (func $assembly/index/Punkt#constructor))
 (export "Punkt#add" (func $assembly/index/Punkt#add))
 (export "Punkt#sub" (func $assembly/index/Punkt#sub))
 (export "Punkt#mul" (func $assembly/index/Punkt#mul))
 (export "Punkt#skal" (func $assembly/index/Punkt#skal))
 (export "Punkt#applyTransformation" (func $assembly/index/Punkt#applyTransformation))
 (export "Punkt.identity" (func $assembly/index/Punkt.identity))
 (export "Punkt.rotateXY" (func $assembly/index/Punkt.rotateXY))
 (export "Vektor3" (global $assembly/index/Vektor3))
 (export "Vektor3#get:x" (func $assembly/index/Punkt#get:x))
 (export "Vektor3#set:x" (func $assembly/index/Punkt#set:x))
 (export "Vektor3#get:y" (func $assembly/index/Punkt#get:y))
 (export "Vektor3#set:y" (func $assembly/index/Punkt#set:y))
 (export "Vektor3#get:z" (func $assembly/index/Vektor3#get:z))
 (export "Vektor3#set:z" (func $assembly/index/Vektor3#set:z))
 (export "Vektor3#constructor" (func $assembly/index/Vektor3#constructor))
 (export "Vektor3#add" (func $assembly/index/Vektor3#add))
 (export "Vektor3#sub" (func $assembly/index/Vektor3#sub))
 (export "Vektor3#mul" (func $assembly/index/Vektor3#mul))
 (export "Vektor3#skal" (func $assembly/index/Vektor3#skal))
 (export "Vektor3#applyTransformation" (func $assembly/index/Vektor3#applyTransformation))
 (export "Vektor3.identity" (func $assembly/index/Vektor3.identity))
 (export "Vektor3.rotateYZ" (func $assembly/index/Vektor3.rotateYZ))
 (export "Vektor3.rotateXZ" (func $assembly/index/Vektor3.rotateXZ))
 (export "Vektor3.rotateXY" (func $assembly/index/Vektor3.rotateXY))
 (export "Vektor4" (global $assembly/index/Vektor4))
 (export "Vektor4#get:x" (func $assembly/index/Punkt#get:x))
 (export "Vektor4#set:x" (func $assembly/index/Punkt#set:x))
 (export "Vektor4#get:y" (func $assembly/index/Punkt#get:y))
 (export "Vektor4#set:y" (func $assembly/index/Punkt#set:y))
 (export "Vektor4#get:z" (func $assembly/index/Vektor3#get:z))
 (export "Vektor4#set:z" (func $assembly/index/Vektor3#set:z))
 (export "Vektor4#get:w" (func $assembly/index/Vektor4#get:w))
 (export "Vektor4#set:w" (func $assembly/index/Vektor4#set:w))
 (export "Vektor4#constructor" (func $assembly/index/Vektor4#constructor))
 (export "Vektor4#add" (func $assembly/index/Vektor4#add))
 (export "Vektor4#sub" (func $assembly/index/Vektor4#sub))
 (export "Vektor4#mul" (func $assembly/index/Vektor4#mul))
 (export "Vektor4#skal" (func $assembly/index/Vektor4#skal))
 (export "Vektor4#applyTransformation" (func $assembly/index/Vektor4#applyTransformation))
 (export "Vektor4.identity" (func $assembly/index/Vektor4.identity))
 (export "Vektor4.rotateXY" (func $assembly/index/Vektor4.rotateXY))
 (export "Vektor4.rotateXZ" (func $assembly/index/Vektor4.rotateXZ))
 (export "Vektor4.rotateYZ" (func $assembly/index/Vektor4.rotateYZ))
 (export "Vektor4.rotateXW" (func $assembly/index/Vektor4.rotateXW))
 (export "Vektor4.rotateYW" (func $assembly/index/Vektor4.rotateYW))
 (export "Vektor4.rotateZW" (func $assembly/index/Vektor4.rotateZW))
 (export "Proj" (global $assembly/index/Proj))
 (export "Proj#constructor" (func $assembly/index/Proj#constructor))
 (export "Proj.isometrisk3D" (func $assembly/index/Proj.isometrisk3D))
 (export "Proj.isometrisk4D" (func $assembly/index/Proj.isometrisk4D))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/index/Matrise#radar (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.load offset=12
  local.get $0
  i32.load offset=4
  i32.div_s
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.set $2
  loop $while-continue|0
   local.get $2
   if
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 0
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/array/Array<f64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $3
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $1
 )
 (func $assembly/index/Matrise#idx (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.mul
  i32.add
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1104
   i32.const 107
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $assembly/index/Matrise#getEl (param $0 i32) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  i32.load
  local.get $0
  local.get $2
  local.get $1
  call $assembly/index/Matrise#idx
  call $~lib/array/Array<f64>#__get
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
   local.get $0
   local.get $1
   i32.lt_u
   if
    loop $while-continue|0
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
      br $while-continue|0
     end
    end
   else
    loop $while-continue|1
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|1
     end
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1216
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1152
     i32.const 1216
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   end
  end
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 3
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 18
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $3
   i32.const 1
   i32.shl
   local.tee $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 3
   i32.shl
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_u
   select
   local.tee $1
   i32.const 1073741804
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 99
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.const 16
   i32.sub
   local.get $1
   i32.const 16
   i32.add
   call $~lib/rt/stub/__realloc
   local.tee $2
   i32.const 4
   i32.sub
   local.get $1
   call $~lib/rt/common/OBJECT#set:rtSize
   local.get $3
   local.get $2
   i32.const 16
   i32.add
   local.tee $2
   i32.add
   local.get $1
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<f64>#__uset (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1104
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   call $~lib/rt/common/OBJECT#set:rtId
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__uset
 )
 (func $assembly/index/Matrise#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
 )
 (func $assembly/index/Matrise#dotProduktMat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $assembly/index/Matrise#radar
  local.tee $7
  local.get $1
  i32.load offset=4
  local.tee $5
  i32.mul
  call $~lib/array/Array<f64>#constructor
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $7
   i32.lt_s
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $5
     i32.lt_s
     if
      f64.const 0
      local.set $6
      i32.const 0
      local.set $3
      loop $for-loop|2
       local.get $0
       i32.load offset=4
       local.get $3
       i32.gt_s
       if
        local.get $6
        local.get $0
        local.get $3
        local.get $4
        call $assembly/index/Matrise#getEl
        local.get $1
        local.get $2
        local.get $3
        call $assembly/index/Matrise#getEl
        f64.mul
        f64.add
        local.set $6
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|2
       end
      end
      local.get $8
      local.get $2
      local.get $4
      local.get $5
      i32.mul
      i32.add
      local.get $6
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $8
  local.get $5
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Matrise.dotProduktMat (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  local.get $1
  call $assembly/index/Matrise#dotProduktMat
  local.tee $1
  i32.load
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  i32.load offset=4
  call $~lib/rt/common/OBJECT#set:gcInfo
 )
 (func $assembly/index/Matrise#get:array (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $assembly/index/Matrise#get:kolonnar (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $assembly/index/Matrise#kol (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=4
  i32.rem_s
 )
 (func $assembly/index/Matrise#setEl (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32)
  local.get $0
  i32.load
  local.get $0
  local.get $3
  local.get $2
  call $assembly/index/Matrise#idx
  local.get $1
  call $~lib/array/Array<f64>#__set
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 3
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   local.get $3
   call $~lib/memory/memory.copy
  end
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/array/Array<f64>#push (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  local.get $1
  f64.store
  local.get $0
  local.get $3
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $assembly/index/Matrise#determinant (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.load
   local.tee $0
   i32.const 0
   call $~lib/array/Array<f64>#__get
   local.get $0
   i32.const 3
   call $~lib/array/Array<f64>#__get
   f64.mul
   local.get $0
   i32.const 1
   call $~lib/array/Array<f64>#__get
   local.get $0
   i32.const 2
   call $~lib/array/Array<f64>#__get
   f64.mul
   f64.sub
   return
  end
  loop $for-loop|0
   local.get $0
   i32.load offset=4
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $3
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.sub
    local.set $7
    i32.const 0
    i32.const 1344
    call $~lib/rt/__newArray
    local.set $5
    loop $for-loop|00
     local.get $3
     local.get $7
     i32.lt_s
     if
      local.get $2
      local.get $3
      i32.const 1
      i32.add
      local.tee $1
      i32.div_s
      local.set $4
      local.get $1
      i32.const 1
      local.get $4
      local.get $4
      i32.const 1
      i32.gt_s
      select
      i32.sub
      local.set $4
      i32.const 0
      local.set $1
      loop $for-loop|1
       local.get $0
       i32.load offset=4
       local.get $1
       i32.gt_s
       if
        local.get $0
        local.get $1
        call $assembly/index/Matrise#kol
        if
         local.get $5
         local.get $0
         i32.load
         local.get $0
         local.get $1
         local.get $4
         call $assembly/index/Matrise#idx
         call $~lib/array/Array<f64>#__get
         call $~lib/array/Array<f64>#push
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|1
       end
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|00
     end
    end
    i32.const 0
    local.get $5
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.sub
    call $assembly/index/Matrise#constructor
    local.set $1
    local.get $6
    f64.const -1
    f64.const 1
    local.get $2
    i32.const 1
    i32.and
    select
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.mul
    local.get $1
    call $assembly/index/Matrise#determinant
    f64.mul
    f64.add
    local.set $6
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $6
 )
 (func $assembly/index/Matrise#transpose (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  local.get $0
  i32.load
  i32.load offset=12
  call $~lib/array/Array<f64>#constructor
  local.set $2
  local.get $0
  call $assembly/index/Matrise#radar
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<f64>#__get
    local.set $4
    local.get $2
    local.get $0
    local.get $0
    local.get $1
    call $assembly/index/Matrise#kol
    local.get $1
    local.get $0
    i32.load offset=4
    i32.div_s
    call $assembly/index/Matrise#idx
    local.get $4
    call $~lib/array/Array<f64>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $2
  local.get $3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Matrise#skaler (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 1376
  call $~lib/rt/__newArray
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<f64>#__get
    f64.mul
    call $~lib/array/Array<f64>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.get $3
  local.get $0
  i32.load offset=4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Matrise#dotProduktVec (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $assembly/index/Matrise#radar
  local.set $5
  i32.const 0
  i32.const 1408
  call $~lib/rt/__newArray
  local.set $6
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    f64.const 0
    local.set $4
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $5
     i32.lt_s
     if
      local.get $4
      local.get $0
      local.get $2
      local.get $3
      call $assembly/index/Matrise#getEl
      local.get $1
      local.get $2
      call $~lib/array/Array<f64>#__get
      f64.mul
      f64.add
      local.set $4
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $6
    local.get $4
    call $~lib/array/Array<f64>#push
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $6
 )
 (func $assembly/index/Punkt.identity (result i32)
  i32.const 0
  i32.const 4
  i32.const 1440
  call $~lib/rt/__newArray
  i32.const 2
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Punkt.rotateXY (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 2
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Punkt#set:x (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store
 )
 (func $assembly/index/Punkt#set:y (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store offset=8
 )
 (func $assembly/index/Punkt#constructor (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 6
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:x
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $1
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $2
  call $assembly/index/Punkt#set:y
  local.get $0
 )
 (func $assembly/index/Punkt#get:x (param $0 i32) (result f64)
  local.get $0
  f64.load
 )
 (func $assembly/index/Punkt#get:y (param $0 i32) (result f64)
  local.get $0
  f64.load offset=8
 )
 (func $assembly/index/Punkt#add (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.add
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.add
  call $assembly/index/Punkt#constructor
 )
 (func $assembly/index/Punkt#sub (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.sub
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.sub
  call $assembly/index/Punkt#constructor
 )
 (func $assembly/index/Punkt#mul (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.mul
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.mul
  call $assembly/index/Punkt#constructor
 )
 (func $assembly/index/Punkt#skal (param $0 i32) (param $1 f64)
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:y
 )
 (func $assembly/index/Punkt#applyTransformation (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 2
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  local.get $0
  f64.load
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 1
  local.get $0
  f64.load offset=8
  call $~lib/array/Array<f64>#__uset
  local.get $0
  local.get $1
  local.get $2
  call $assembly/index/Matrise#dotProduktVec
  local.tee $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:y
 )
 (func $assembly/index/Vektor3.identity (result i32)
  i32.const 0
  i32.const 9
  i32.const 1504
  call $~lib/rt/__newArray
  i32.const 3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor3.rotateYZ (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor3.rotateXZ (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor3.rotateXY (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor3#set:z (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store offset=16
 )
 (func $assembly/index/Vektor3#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:x
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:y
  local.get $0
  f64.const 0
  call $assembly/index/Vektor3#set:z
  local.get $0
  local.get $1
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $2
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $3
  call $assembly/index/Vektor3#set:z
  local.get $0
 )
 (func $assembly/index/Vektor3#get:z (param $0 i32) (result f64)
  local.get $0
  f64.load offset=16
 )
 (func $assembly/index/Vektor3#add (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.add
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.add
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.add
  call $assembly/index/Vektor3#constructor
 )
 (func $assembly/index/Vektor3#sub (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.sub
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.sub
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.sub
  call $assembly/index/Vektor3#constructor
 )
 (func $assembly/index/Vektor3#mul (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.mul
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.mul
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.mul
  call $assembly/index/Vektor3#constructor
 )
 (func $assembly/index/Vektor3#skal (param $0 i32) (param $1 f64)
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $0
  f64.load offset=16
  local.get $1
  f64.mul
  call $assembly/index/Vektor3#set:z
 )
 (func $assembly/index/Vektor3#applyTransformation (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  local.get $0
  f64.load
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 1
  local.get $0
  f64.load offset=8
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 2
  local.get $0
  f64.load offset=16
  call $~lib/array/Array<f64>#__uset
  local.get $0
  local.get $1
  local.get $2
  call $assembly/index/Matrise#dotProduktVec
  local.tee $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Vektor3#set:z
 )
 (func $assembly/index/Vektor4.identity (result i32)
  i32.const 0
  i32.const 16
  i32.const 1600
  call $~lib/rt/__newArray
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateXY (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateXZ (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateYZ (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateXW (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateYW (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateZW (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/bindings/Math/sin
  local.set $2
  local.get $0
  call $~lib/bindings/Math/cos
  local.set $0
  i32.const 16
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 5
  f64.const 1
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 8
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 9
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 10
  local.get $0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 11
  local.get $2
  f64.neg
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 14
  local.get $2
  call $~lib/array/Array<f64>#__uset
  local.get $1
  i32.const 15
  local.get $0
  call $~lib/array/Array<f64>#__uset
  i32.const 0
  local.get $1
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4#set:w (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store offset=24
 )
 (func $assembly/index/Vektor4#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   i32.const 8
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:x
  local.get $0
  f64.const 0
  call $assembly/index/Punkt#set:y
  local.get $0
  f64.const 0
  call $assembly/index/Vektor3#set:z
  local.get $0
  f64.const 0
  call $assembly/index/Vektor4#set:w
  local.get $0
  local.get $1
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $2
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $3
  call $assembly/index/Vektor3#set:z
  local.get $0
  local.get $4
  call $assembly/index/Vektor4#set:w
  local.get $0
 )
 (func $assembly/index/Vektor4#get:w (param $0 i32) (result f64)
  local.get $0
  f64.load offset=24
 )
 (func $assembly/index/Vektor4#add (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.add
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.add
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.add
  local.get $0
  f64.load offset=24
  local.get $1
  f64.load offset=24
  f64.add
  call $assembly/index/Vektor4#constructor
 )
 (func $assembly/index/Vektor4#sub (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.sub
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.sub
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.sub
  local.get $0
  f64.load offset=24
  local.get $1
  f64.load offset=24
  f64.sub
  call $assembly/index/Vektor4#constructor
 )
 (func $assembly/index/Vektor4#mul (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.mul
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.mul
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.mul
  local.get $0
  f64.load offset=24
  local.get $1
  f64.load offset=24
  f64.mul
  call $assembly/index/Vektor4#constructor
 )
 (func $assembly/index/Vektor4#skal (param $0 i32) (param $1 f64)
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.mul
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $0
  f64.load offset=16
  local.get $1
  f64.mul
  call $assembly/index/Vektor3#set:z
  local.get $0
  local.get $0
  f64.load offset=24
  local.get $1
  f64.mul
  call $assembly/index/Vektor4#set:w
 )
 (func $assembly/index/Vektor4#applyTransformation (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  local.get $0
  f64.load
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 1
  local.get $0
  f64.load offset=8
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 2
  local.get $0
  f64.load offset=16
  call $~lib/array/Array<f64>#__uset
  local.get $2
  i32.const 3
  local.get $0
  f64.load offset=24
  call $~lib/array/Array<f64>#__uset
  local.get $0
  local.get $1
  local.get $2
  call $assembly/index/Matrise#dotProduktVec
  local.tee $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:x
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Punkt#set:y
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Vektor3#set:z
  local.get $0
  local.get $1
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $assembly/index/Vektor4#set:w
 )
 (func $assembly/index/Proj.isometrisk3D (result i32)
  (local $0 f64)
  (local $1 f64)
  f64.const 0.7071067811865475
  call $~lib/bindings/Math/atan
  f64.const 1
  call $~lib/bindings/Math/atan
  local.set $1
  call $assembly/index/Vektor3.rotateYZ
  local.get $1
  call $assembly/index/Vektor3.rotateXZ
  call $assembly/index/Matrise#dotProduktMat
 )
 (func $assembly/index/Proj.isometrisk4D (result i32)
  (local $0 f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  f64.const 1
  call $~lib/bindings/Math/atan
  f64.const 0.7071067811865475
  call $~lib/bindings/Math/atan
  local.set $0
  f64.const 0.5773502691896258
  call $~lib/bindings/Math/atan
  drop
  call $assembly/index/Vektor4.rotateXW
  local.set $2
  local.get $0
  call $assembly/index/Vektor4.rotateYW
  local.set $3
  local.get $0
  call $assembly/index/Vektor4.rotateZW
  local.get $3
  call $assembly/index/Matrise#dotProduktMat
  local.get $2
  call $assembly/index/Matrise#dotProduktMat
 )
 (func $assembly/index/Proj#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 9
   call $~lib/rt/stub/__new
  end
 )
 (func $~start
  i32.const 1740
  global.set $~lib/rt/stub/offset
 )
)
