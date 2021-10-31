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
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
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
 (data (i32.const 1488) "n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 1692) "\\")
 (data (i32.const 1708) "H")
 (data (i32.const 1718) "\f0?")
 (data (i32.const 1750) "\f0?")
 (data (i32.const 1782) "\f0?")
 (data (i32.const 1788) "\9c")
 (data (i32.const 1804) "\80")
 (data (i32.const 1814) "\f0?")
 (data (i32.const 1854) "\f0?")
 (data (i32.const 1894) "\f0?")
 (data (i32.const 1934) "\f0?")
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
  local.get $1
  local.get $0
  i32.load offset=4
  i32.mul
  local.get $2
  i32.add
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
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
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 3
  i32.shr_u
  i32.gt_u
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
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
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
       local.get $3
       local.get $0
       i32.load offset=4
       i32.lt_s
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
      local.get $4
      local.get $5
      i32.mul
      local.get $2
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
   local.get $2
   local.get $0
   i32.load offset=4
   i32.lt_s
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
       local.get $1
       local.get $0
       i32.load offset=4
       i32.lt_s
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
   local.get $0
   i32.load
   i32.load offset=12
   local.get $1
   i32.gt_s
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
   local.get $0
   i32.load
   i32.load offset=12
   local.get $2
   i32.gt_s
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
 (func $~lib/math/pio2_large_quot (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 f64)
  local.get $0
  i64.const 9223372036854775807
  i64.and
  i64.const 52
  i64.shr_u
  i64.const 1045
  i64.sub
  local.tee $2
  i64.const 63
  i64.and
  local.set $3
  local.get $2
  i64.const 6
  i64.shr_s
  i32.wrap_i64
  i32.const 3
  i32.shl
  i32.const 1488
  i32.add
  local.tee $9
  i64.load
  local.set $6
  local.get $9
  i64.load offset=8
  local.set $2
  local.get $9
  i64.load offset=16
  local.set $1
  local.get $3
  i64.const 0
  i64.ne
  if
   local.get $6
   local.get $3
   i64.shl
   local.get $2
   i64.const 64
   local.get $3
   i64.sub
   local.tee $7
   i64.shr_u
   i64.or
   local.set $6
   local.get $2
   local.get $3
   i64.shl
   local.get $1
   local.get $7
   i64.shr_u
   i64.or
   local.set $2
   local.get $1
   local.get $3
   i64.shl
   local.get $9
   i64.load offset=24
   local.get $7
   i64.shr_u
   i64.or
   local.set $1
  end
  local.get $0
  i64.const 4503599627370495
  i64.and
  i64.const 4503599627370496
  i64.or
  local.tee $3
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $5
  i64.mul
  local.set $8
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $7
  local.get $5
  i64.mul
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 4294967295
  i64.and
  i64.add
  local.set $5
  local.get $2
  local.get $7
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  local.get $5
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  local.get $7
  local.get $1
  i64.const 32
  i64.shr_u
  i64.mul
  local.tee $1
  local.get $8
  i64.const 4294967295
  i64.and
  local.get $5
  i64.const 32
  i64.shl
  i64.add
  i64.add
  local.tee $2
  local.get $1
  i64.lt_u
  i64.extend_i32_u
  global.get $~lib/math/res128_hi
  local.get $3
  local.get $6
  i64.mul
  i64.add
  i64.add
  local.tee $7
  i64.const 2
  i64.shl
  local.get $2
  i64.const 62
  i64.shr_u
  i64.or
  local.tee $1
  i64.const 63
  i64.shr_s
  local.tee $6
  i64.const 1
  i64.shr_s
  local.get $1
  i64.xor
  local.tee $4
  i64.clz
  local.set $3
  local.get $4
  local.get $3
  i64.shl
  local.get $2
  i64.const 2
  i64.shl
  local.get $6
  i64.xor
  local.tee $5
  i64.const 64
  local.get $3
  i64.sub
  i64.shr_u
  i64.or
  local.tee $2
  i64.const 4294967295
  i64.and
  local.set $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $8
  i64.const 560513588
  i64.mul
  local.get $4
  i64.const 3373259426
  i64.mul
  local.get $4
  i64.const 560513588
  i64.mul
  local.tee $11
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 4294967295
  i64.and
  i64.add
  local.set $10
  local.get $8
  i64.const 3373259426
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  local.get $10
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  local.get $11
  i64.const 4294967295
  i64.and
  local.get $10
  i64.const 32
  i64.shl
  i64.add
  local.tee $4
  local.get $2
  f64.convert_i64_u
  f64.const 3.753184150245214e-04
  f64.mul
  local.get $5
  local.get $3
  i64.shl
  f64.convert_i64_u
  f64.const 3.834951969714103e-04
  f64.mul
  f64.add
  i64.trunc_f64_u
  local.tee $2
  i64.lt_u
  i64.extend_i32_u
  global.get $~lib/math/res128_hi
  local.tee $5
  i64.const 11
  i64.shr_u
  i64.add
  f64.convert_i64_u
  global.set $~lib/math/rempio2_y0
  local.get $5
  i64.const 53
  i64.shl
  local.get $4
  i64.const 11
  i64.shr_u
  i64.or
  local.get $2
  i64.add
  f64.convert_i64_u
  f64.const 5.421010862427522e-20
  f64.mul
  global.set $~lib/math/rempio2_y1
  global.get $~lib/math/rempio2_y0
  i64.const 4372995238176751616
  local.get $3
  i64.const 52
  i64.shl
  i64.sub
  local.get $0
  local.get $1
  i64.xor
  i64.const -9223372036854775808
  i64.and
  i64.or
  f64.reinterpret_i64
  local.tee $12
  f64.mul
  global.set $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  local.get $12
  f64.mul
  global.set $~lib/math/rempio2_y1
  local.get $7
  i64.const 62
  i64.shr_s
  local.get $6
  i64.sub
  i32.wrap_i64
 )
 (func $~lib/math/NativeMath.sin (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $5
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  i32.const 31
  i32.shr_u
  local.set $6
  local.get $3
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.const 1072243195
  i32.le_u
  if
   local.get $3
   i32.const 1045430272
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   local.tee $1
   local.get $0
   f64.mul
   local.get $1
   local.get $1
   local.get $1
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.const -1.984126982985795e-04
   f64.add
   f64.mul
   f64.const 0.00833333333332249
   f64.add
   local.get $1
   local.get $1
   local.get $1
   f64.mul
   f64.mul
   local.get $1
   f64.const 1.58969099521155e-10
   f64.mul
   f64.const -2.5050760253406863e-08
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.const -0.16666666666666632
   f64.add
   f64.mul
   f64.add
   return
  end
  local.get $3
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.0 (result i32)
   local.get $5
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.tee $3
   i32.const 1094263291
   i32.lt_u
   if
    local.get $3
    i32.const 20
    i32.shr_u
    local.tee $3
    local.get $0
    local.get $0
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.tee $4
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.tee $0
    local.get $4
    f64.const 6.077100506506192e-11
    f64.mul
    local.tee $2
    f64.sub
    local.tee $1
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    i32.const 16
    i32.gt_u
    if
     local.get $4
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $0
     local.get $0
     local.get $4
     f64.const 6.077100506303966e-11
     f64.mul
     local.tee $2
     f64.sub
     local.tee $0
     f64.sub
     local.get $2
     f64.sub
     f64.sub
     local.set $2
     local.get $3
     local.get $0
     local.get $2
     f64.sub
     local.tee $1
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     i32.const 49
     i32.gt_u
     if (result f64)
      local.get $4
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $0
      local.get $0
      local.get $4
      f64.const 2.0222662487111665e-21
      f64.mul
      local.tee $2
      f64.sub
      local.tee $0
      f64.sub
      local.get $2
      f64.sub
      f64.sub
      local.set $2
      local.get $0
      local.get $2
      f64.sub
     else
      local.get $1
     end
     local.set $1
    end
    local.get $1
    global.set $~lib/math/rempio2_y0
    local.get $0
    local.get $1
    f64.sub
    local.get $2
    f64.sub
    global.set $~lib/math/rempio2_y1
    local.get $4
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.0
   end
   i32.const 0
   local.get $5
   call $~lib/math/pio2_large_quot
   local.tee $3
   i32.sub
   local.get $3
   local.get $6
   select
  end
  local.set $3
  global.get $~lib/math/rempio2_y0
  local.set $1
  global.get $~lib/math/rempio2_y1
  local.set $4
  local.get $3
  i32.const 1
  i32.and
  if (result f64)
   local.get $1
   local.get $1
   f64.mul
   local.tee $0
   local.get $0
   f64.mul
   local.set $2
   f64.const 1
   local.get $0
   f64.const 0.5
   f64.mul
   local.tee $7
   f64.sub
   local.tee $8
   f64.const 1
   local.get $8
   f64.sub
   local.get $7
   f64.sub
   local.get $0
   local.get $0
   local.get $0
   local.get $0
   f64.const 2.480158728947673e-05
   f64.mul
   f64.const -0.001388888888887411
   f64.add
   f64.mul
   f64.const 0.0416666666666666
   f64.add
   f64.mul
   local.get $2
   local.get $2
   f64.mul
   local.get $0
   local.get $0
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.const 2.087572321298175e-09
   f64.add
   f64.mul
   f64.const -2.7557314351390663e-07
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $1
   local.get $4
   f64.mul
   f64.sub
   f64.add
   f64.add
  else
   local.get $1
   local.get $1
   f64.mul
   local.tee $0
   local.get $1
   f64.mul
   local.set $2
   local.get $1
   local.get $0
   local.get $4
   f64.const 0.5
   f64.mul
   local.get $2
   local.get $0
   local.get $0
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.const -1.984126982985795e-04
   f64.add
   f64.mul
   f64.const 0.00833333333332249
   f64.add
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   f64.mul
   local.get $0
   f64.const 1.58969099521155e-10
   f64.mul
   f64.const -2.5050760253406863e-08
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.sub
   f64.mul
   local.get $4
   f64.sub
   local.get $2
   f64.const -0.16666666666666632
   f64.mul
   f64.sub
   f64.sub
  end
  local.tee $0
  f64.neg
  local.get $0
  local.get $3
  i32.const 2
  i32.and
  select
 )
 (func $~lib/math/NativeMath.cos (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i64)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $6
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  i32.const 31
  i32.shr_u
  local.set $7
  local.get $3
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.const 1072243195
  i32.le_u
  if
   local.get $3
   i32.const 1044816030
   i32.lt_u
   if
    f64.const 1
    return
   end
   local.get $0
   local.get $0
   f64.mul
   local.tee $1
   local.get $1
   f64.mul
   local.set $4
   f64.const 1
   local.get $1
   f64.const 0.5
   f64.mul
   local.tee $2
   f64.sub
   local.tee $5
   f64.const 1
   local.get $5
   f64.sub
   local.get $2
   f64.sub
   local.get $1
   local.get $1
   local.get $1
   local.get $1
   f64.const 2.480158728947673e-05
   f64.mul
   f64.const -0.001388888888887411
   f64.add
   f64.mul
   f64.const 0.0416666666666666
   f64.add
   f64.mul
   local.get $4
   local.get $4
   f64.mul
   local.get $1
   local.get $1
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.const 2.087572321298175e-09
   f64.add
   f64.mul
   f64.const -2.7557314351390663e-07
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   f64.const 0
   f64.mul
   f64.sub
   f64.add
   f64.add
   return
  end
  local.get $3
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.1 (result i32)
   local.get $6
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.tee $3
   i32.const 1094263291
   i32.lt_u
   if
    local.get $3
    i32.const 20
    i32.shr_u
    local.tee $3
    local.get $0
    local.get $0
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.tee $4
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.tee $0
    local.get $4
    f64.const 6.077100506506192e-11
    f64.mul
    local.tee $2
    f64.sub
    local.tee $1
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    i32.const 16
    i32.gt_u
    if
     local.get $4
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $0
     local.get $0
     local.get $4
     f64.const 6.077100506303966e-11
     f64.mul
     local.tee $2
     f64.sub
     local.tee $0
     f64.sub
     local.get $2
     f64.sub
     f64.sub
     local.set $2
     local.get $3
     local.get $0
     local.get $2
     f64.sub
     local.tee $1
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     i32.const 49
     i32.gt_u
     if (result f64)
      local.get $4
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $0
      local.get $0
      local.get $4
      f64.const 2.0222662487111665e-21
      f64.mul
      local.tee $2
      f64.sub
      local.tee $0
      f64.sub
      local.get $2
      f64.sub
      f64.sub
      local.set $2
      local.get $0
      local.get $2
      f64.sub
     else
      local.get $1
     end
     local.set $1
    end
    local.get $1
    global.set $~lib/math/rempio2_y0
    local.get $0
    local.get $1
    f64.sub
    local.get $2
    f64.sub
    global.set $~lib/math/rempio2_y1
    local.get $4
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.1
   end
   i32.const 0
   local.get $6
   call $~lib/math/pio2_large_quot
   local.tee $3
   i32.sub
   local.get $3
   local.get $7
   select
  end
  local.set $3
  global.get $~lib/math/rempio2_y0
  local.set $1
  global.get $~lib/math/rempio2_y1
  local.set $4
  local.get $3
  i32.const 1
  i32.and
  if (result f64)
   local.get $1
   local.get $1
   f64.mul
   local.tee $0
   local.get $1
   f64.mul
   local.set $2
   local.get $1
   local.get $0
   local.get $4
   f64.const 0.5
   f64.mul
   local.get $2
   local.get $0
   local.get $0
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.const -1.984126982985795e-04
   f64.add
   f64.mul
   f64.const 0.00833333333332249
   f64.add
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   f64.mul
   local.get $0
   f64.const 1.58969099521155e-10
   f64.mul
   f64.const -2.5050760253406863e-08
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.sub
   f64.mul
   local.get $4
   f64.sub
   local.get $2
   f64.const -0.16666666666666632
   f64.mul
   f64.sub
   f64.sub
  else
   local.get $1
   local.get $1
   f64.mul
   local.tee $0
   local.get $0
   f64.mul
   local.set $2
   f64.const 1
   local.get $0
   f64.const 0.5
   f64.mul
   local.tee $5
   f64.sub
   local.tee $8
   f64.const 1
   local.get $8
   f64.sub
   local.get $5
   f64.sub
   local.get $0
   local.get $0
   local.get $0
   local.get $0
   f64.const 2.480158728947673e-05
   f64.mul
   f64.const -0.001388888888887411
   f64.add
   f64.mul
   f64.const 0.0416666666666666
   f64.add
   f64.mul
   local.get $2
   local.get $2
   f64.mul
   local.get $0
   local.get $0
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.const 2.087572321298175e-09
   f64.add
   f64.mul
   f64.const -2.7557314351390663e-07
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $1
   local.get $4
   f64.mul
   f64.sub
   f64.add
   f64.add
  end
  local.tee $0
  f64.neg
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  select
 )
 (func $assembly/index/Punkt.rotateXY (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  i32.const 1712
  call $~lib/rt/__newArray
  i32.const 3
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor3.rotateYZ (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  f64.neg
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  i32.const 1808
  call $~lib/rt/__newArray
  i32.const 4
  call $assembly/index/Matrise#constructor
 )
 (func $assembly/index/Vektor4.rotateXY (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 f64)
  local.get $0
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
  call $~lib/math/NativeMath.sin
  local.set $2
  local.get $0
  call $~lib/math/NativeMath.cos
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
 (func $~lib/math/NativeMath.atan (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  local.get $0
  local.set $1
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.const 1141899264
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.ne
   if
    local.get $0
    return
   end
   f64.const 1.5707963267948966
   local.get $1
   f64.copysign
   return
  end
  local.get $3
  i32.const 1071382528
  i32.lt_u
  if
   local.get $3
   i32.const 1044381696
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $4
  else
   local.get $0
   f64.abs
   local.set $0
   local.get $3
   i32.const 1072889856
   i32.lt_u
   if (result f64)
    local.get $3
    i32.const 1072037888
    i32.lt_u
    if (result f64)
     local.get $0
     local.get $0
     f64.add
     f64.const 1
     f64.sub
     local.get $0
     f64.const 2
     f64.add
     f64.div
    else
     i32.const 1
     local.set $4
     local.get $0
     f64.const 1
     f64.sub
     local.get $0
     f64.const 1
     f64.add
     f64.div
    end
   else
    local.get $3
    i32.const 1073971200
    i32.lt_u
    if (result f64)
     i32.const 2
     local.set $4
     local.get $0
     f64.const 1.5
     f64.sub
     local.get $0
     f64.const 1.5
     f64.mul
     f64.const 1
     f64.add
     f64.div
    else
     i32.const 3
     local.set $4
     f64.const -1
     local.get $0
     f64.div
    end
   end
   local.set $0
  end
  local.get $0
  local.get $0
  f64.mul
  local.tee $5
  local.get $5
  f64.mul
  local.set $2
  local.get $0
  local.get $5
  local.get $2
  local.get $2
  local.get $2
  local.get $2
  local.get $2
  f64.const 0.016285820115365782
  f64.mul
  f64.const 0.049768779946159324
  f64.add
  f64.mul
  f64.const 0.06661073137387531
  f64.add
  f64.mul
  f64.const 0.09090887133436507
  f64.add
  f64.mul
  f64.const 0.14285714272503466
  f64.add
  f64.mul
  f64.const 0.3333333333333293
  f64.add
  f64.mul
  local.get $2
  local.get $2
  local.get $2
  local.get $2
  local.get $2
  f64.const -0.036531572744216916
  f64.mul
  f64.const -0.058335701337905735
  f64.add
  f64.mul
  f64.const -0.0769187620504483
  f64.add
  f64.mul
  f64.const -0.11111110405462356
  f64.add
  f64.mul
  f64.const -0.19999999999876483
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $2
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $2
   f64.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0
       end
       f64.const 0.4636476090008061
       local.get $2
       f64.const 2.2698777452961687e-17
       f64.sub
       local.get $0
       f64.sub
       f64.sub
       local.set $0
       br $break|0
      end
      f64.const 0.7853981633974483
      local.get $2
      f64.const 3.061616997868383e-17
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.set $0
      br $break|0
     end
     f64.const 0.982793723247329
     local.get $2
     f64.const 1.3903311031230998e-17
     f64.sub
     local.get $0
     f64.sub
     f64.sub
     local.set $0
     br $break|0
    end
    f64.const 1.5707963267948966
    local.get $2
    f64.const 6.123233995736766e-17
    f64.sub
    local.get $0
    f64.sub
    f64.sub
    local.set $0
    br $break|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  f64.copysign
 )
 (func $assembly/index/Proj.isometrisk3D (result i32)
  (local $0 f64)
  (local $1 f64)
  (local $2 i32)
  f64.const 0.7071067811865475
  call $~lib/math/NativeMath.atan
  f64.const 1
  call $~lib/math/NativeMath.atan
  local.set $1
  call $assembly/index/Vektor3.rotateYZ
  local.get $1
  call $assembly/index/Vektor3.rotateXZ
  drop
 )
 (func $assembly/index/Proj.isometrisk4D (result i32)
  (local $0 f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  f64.const 1
  call $~lib/math/NativeMath.atan
  f64.const 0.7071067811865475
  call $~lib/math/NativeMath.atan
  local.set $0
  f64.const 0.5773502691896258
  call $~lib/math/NativeMath.atan
  local.set $2
  call $assembly/index/Vektor4.rotateXW
  local.get $0
  call $assembly/index/Vektor4.rotateYW
  local.get $2
  call $assembly/index/Vektor4.rotateZW
  local.set $5
  local.get $0
  call $assembly/index/Vektor4.rotateYZ
  local.set $6
  call $assembly/index/Matrise#dotProduktMat
  local.get $5
  call $assembly/index/Matrise#dotProduktMat
  local.get $6
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
  i32.const 1948
  global.set $~lib/rt/stub/offset
 )
)
