module attributes {dlti.dl_spec = #dlti.dl_spec<"dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64, !bmodelica.int = ["size", 64], !bmodelica.real = ["size", 64], !llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  memref.global "private" constant @__constant_100xf64 : memref<100xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  runtime.function private @_Massert_void_i1_pvoid_i64(i1, !runtime.string, i64)
  memref.global "private" @time : memref<f64> = uninitialized
  memref.global "private" @var : memref<f64> = uninitialized
  memref.global "private" @var_0 : memref<f64> = uninitialized
  memref.global "private" @var_1 : memref<f64> = uninitialized
  memref.global "private" @var_2 : memref<100xf64> = uninitialized
  memref.global "private" @var_3 : memref<100xf64> = uninitialized
  memref.global "private" @timeStep : memref<f64> = uninitialized
  func.func @euler_state_update_u() {
    %true = arith.constant true
    %0 = memref.get_global @timeStep : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = memref.get_global @var_2 : memref<100xf64>
    %3 = memref.get_global @var_3 : memref<100xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<100xf64>
    // Store the current timestep in a
    affine.for %arg0 = 0 to 100 {
      affine.store %1, %alloc[%arg0] : memref<100xf64>
    }
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<100xf64>
    affine.for %arg0 = 0 to 100 {
      %5 = affine.load %3[%arg0] : memref<100xf64>
      %6 = affine.load %alloc[%arg0] : memref<100xf64>
      %7 = arith.mulf %5, %6 : f64
      affine.store %7, %alloc_0[%arg0] : memref<100xf64>
    }
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<100xf64>
    affine.for %arg0 = 0 to 100 {
      %5 = affine.load %2[%arg0] : memref<100xf64>
      %6 = affine.load %alloc_0[%arg0] : memref<100xf64>
      %7 = arith.addf %5, %6 : f64
      affine.store %7, %alloc_1[%arg0] : memref<100xf64>
    }
    %4 = memref.get_global @var_2 : memref<100xf64>
    memref.copy %alloc_1, %4 : memref<100xf64> to memref<100xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<100xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<100xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<100xf64>
    }
    return
  }
  func.func @equation() {
    %cst = arith.constant 0.000000e+00 : f64
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_3 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [99], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: 99>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: 99>>
    return
  }
  func.func @equation_0() {
    %cst = arith.constant 0.000000e+00 : f64
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_3 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[]>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[]>>
    return
  }
  func.func @equation_1(%arg0: index, %arg1: index) {
    %c-2_i64 = arith.constant -2 : i64
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c100 = arith.constant 100 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.cmpi sge, %0, %c0 : index
      %2 = arith.cmpi slt, %0, %c100 : index
      %3 = arith.andi %1, %2 : i1
      %4 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%3, %4, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %5 = memref.get_global @var_1 : memref<f64>
      %6 = memref.load %5[] : memref<f64>
      %7 = memref.get_global @var : memref<f64>
      %8 = memref.load %7[] : memref<f64>
      %9 = arith.cmpf one, %8, %cst_0 : f64
      %10 = runtime.string "division by zero"
      runtime.call @_Massert_void_i1_pvoid_i64(%9, %10, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %11 = arith.divf %6, %8 : f64
      %12 = memref.get_global @var_0 : memref<f64>
      %13 = memref.load %12[] : memref<f64>
      %14 = arith.mulf %11, %13 : f64
      %15 = memref.get_global @var_2 : memref<100xf64>
      %16 = arith.cmpi sge, %arg2, %c0 : index
      %17 = arith.cmpi slt, %arg2, %c100 : index
      %18 = arith.andi %16, %17 : i1
      %19 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%18, %19, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %20 = memref.load %15[%arg2] : memref<100xf64>
      %21 = arith.index_cast %arg2 : index to i64
      %22 = arith.addi %21, %c-2_i64 : i64
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.get_global @var_2 : memref<100xf64>
      %25 = arith.cmpi sge, %23, %c0 : index
      %26 = arith.cmpi slt, %23, %c100 : index
      %27 = arith.andi %25, %26 : i1
      %28 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%27, %28, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %29 = memref.load %24[%23] : memref<100xf64>
      %30 = arith.addf %20, %29 : f64
      %31 = arith.addi %arg2, %c-1 : index
      %32 = memref.get_global @var_2 : memref<100xf64>
      %33 = arith.cmpi sge, %31, %c0 : index
      %34 = arith.cmpi slt, %31, %c100 : index
      %35 = arith.andi %33, %34 : i1
      %36 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%35, %36, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %37 = memref.load %32[%31] : memref<100xf64>
      %38 = arith.mulf %37, %cst : f64
      %39 = arith.subf %30, %38 : f64
      %40 = arith.mulf %14, %39 : f64
      %41 = memref.get_global @var_3 : memref<100xf64>
      %42 = arith.cmpi sge, %0, %c0 : index
      %43 = arith.cmpi slt, %0, %c100 : index
      %44 = arith.andi %42, %43 : i1
      %45 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%44, %45, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %reinterpret_cast = memref.reinterpret_cast %41 to offset: [%0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %40, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_2() {
    %cst = arith.constant 4.300000e+01 : f64
    %0 = memref.get_global @var_1 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_3() {
    %cst = arith.constant 0.000000e+00 : f64
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_3 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[]>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[]>>
    return
  }
  func.func @equation_4(%arg0: index, %arg1: index) {
    %cst = arith.constant 9.900000e+01 : f64
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %c100 = arith.constant 100 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %cst_0 = arith.constant 5.000000e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.cmpi sge, %0, %c0 : index
      %2 = arith.cmpi slt, %0, %c100 : index
      %3 = arith.andi %1, %2 : i1
      %4 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%3, %4, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %5 = runtime.string "division by zero"
      runtime.call @_Massert_void_i1_pvoid_i64(%true, %5, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %6 = arith.index_cast %arg2 : index to i64
      %7 = arith.sitofp %6 : i64 to f64
      %8 = arith.divf %7, %cst : f64
      %9 = arith.mulf %8, %cst_0 : f64
      %10 = memref.get_global @var_2 : memref<100xf64>
      %11 = arith.cmpi sge, %0, %c0 : index
      %12 = arith.cmpi slt, %0, %c100 : index
      %13 = arith.andi %11, %12 : i1
      %14 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%13, %14, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %reinterpret_cast = memref.reinterpret_cast %10 to offset: [%0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %9, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_5() {
    %cst = arith.constant 4.500000e+01 : f64
    %0 = memref.get_global @var : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_6() {
    %cst = arith.constant 0.000000e+00 : f64
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_3 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [99], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: 99>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: 99>>
    return
  }
  func.func @equation_7() {
    %cst = arith.constant 1.200000e-01 : f64
    %0 = memref.get_global @var_0 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_8() {
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %cst = arith.constant 5.000000e+02 : f64
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_2 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [99], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: 99>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: 99>>
    return
  }
  func.func @equation_9() {
    %c1_i64 = arith.constant 1 : i64
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
    %0 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %0, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %1 = memref.get_global @var_2 : memref<100xf64>
    %2 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%true, %2, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %reinterpret_cast = memref.reinterpret_cast %1 to offset: [0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[]>>
    memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[]>>
    return
  }
  func.func @equation_10(%arg0: index, %arg1: index) {
    %c-2_i64 = arith.constant -2 : i64
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c100 = arith.constant 100 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.cmpi sge, %0, %c0 : index
      %2 = arith.cmpi slt, %0, %c100 : index
      %3 = arith.andi %1, %2 : i1
      %4 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%3, %4, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %5 = memref.get_global @var_1 : memref<f64>
      %6 = memref.load %5[] : memref<f64>
      %7 = memref.get_global @var : memref<f64>
      %8 = memref.load %7[] : memref<f64>
      %9 = arith.cmpf one, %8, %cst_0 : f64
      %10 = runtime.string "division by zero"
      runtime.call @_Massert_void_i1_pvoid_i64(%9, %10, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %11 = arith.divf %6, %8 : f64
      %12 = memref.get_global @var_0 : memref<f64>
      %13 = memref.load %12[] : memref<f64>
      %14 = arith.mulf %11, %13 : f64
      %15 = memref.get_global @var_2 : memref<100xf64>
      %16 = arith.cmpi sge, %arg2, %c0 : index
      %17 = arith.cmpi slt, %arg2, %c100 : index
      %18 = arith.andi %16, %17 : i1
      %19 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%18, %19, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %20 = memref.load %15[%arg2] : memref<100xf64>
      %21 = arith.index_cast %arg2 : index to i64
      %22 = arith.addi %21, %c-2_i64 : i64
      %23 = arith.index_cast %22 : i64 to index
      %24 = memref.get_global @var_2 : memref<100xf64>
      %25 = arith.cmpi sge, %23, %c0 : index
      %26 = arith.cmpi slt, %23, %c100 : index
      %27 = arith.andi %25, %26 : i1
      %28 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%27, %28, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %29 = memref.load %24[%23] : memref<100xf64>
      %30 = arith.addf %20, %29 : f64
      %31 = arith.addi %arg2, %c-1 : index
      %32 = memref.get_global @var_2 : memref<100xf64>
      %33 = arith.cmpi sge, %31, %c0 : index
      %34 = arith.cmpi slt, %31, %c100 : index
      %35 = arith.andi %33, %34 : i1
      %36 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%35, %36, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %37 = memref.load %32[%31] : memref<100xf64>
      %38 = arith.mulf %37, %cst : f64
      %39 = arith.subf %30, %38 : f64
      %40 = arith.mulf %14, %39 : f64
      %41 = memref.get_global @var_3 : memref<100xf64>
      %42 = arith.cmpi sge, %0, %c0 : index
      %43 = arith.cmpi slt, %0, %c100 : index
      %44 = arith.andi %42, %43 : i1
      %45 = runtime.string "index out of bounds"
      runtime.call @_Massert_void_i1_pvoid_i64(%44, %45, %c1_i64) : (i1, !runtime.string, i64) -> ()
      %reinterpret_cast = memref.reinterpret_cast %41 to offset: [%0], sizes: [], strides: [] : memref<100xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %40, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @HeatString_dynamic() {
    %c100 = arith.constant 100 : index
    %c2 = arith.constant 2 : index
    call @equation() : () -> ()
    call @equation_0() : () -> ()
    call @equation_1(%c2, %c100) : (index, index) -> ()
    return
  }
  func.func @HeatString_schedule_state_variables() {
    call @euler_state_update_u() : () -> ()
    return
  }
  func.func @HeatString_ic() {
    %c100 = arith.constant 100 : index
    %c2 = arith.constant 2 : index
    call @equation_2() : () -> ()
    call @equation_3() : () -> ()
    call @equation_4(%c2, %c100) : (index, index) -> ()
    call @equation_5() : () -> ()
    call @equation_6() : () -> ()
    call @equation_7() : () -> ()
    call @equation_8() : () -> ()
    call @equation_9() : () -> ()
    call @equation_10(%c2, %c100) : (index, index) -> ()
    return
  }
  runtime.model_name "HeatString"
  runtime.number_of_variables 5
  runtime.variable_names ["C", "rho", "K", "u", "der_u"]
  runtime.variable_ranks [0, 0, 0, 1, 1]
  runtime.printable_indices [true, true, true, {[0,99]}, {}]
  runtime.derivatives_map [-1, -1, -1, 4, -1]
  func.func @var_getter_0(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_1(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_0 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_2(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_1 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_3(%arg0: !llvm.ptr) -> f64 {
    %c1_i64 = arith.constant 1 : i64
    %c100 = arith.constant 100 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_2 : memref<100xf64>
    %3 = arith.cmpi sge, %1, %c0 : index
    %4 = arith.cmpi slt, %1, %c100 : index
    %5 = arith.andi %3, %4 : i1
    %6 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%5, %6, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %7 = memref.load %2[%1] : memref<100xf64>
    return %7 : f64
  }
  func.func @var_getter_4(%arg0: !llvm.ptr) -> f64 {
    %c1_i64 = arith.constant 1 : i64
    %c100 = arith.constant 100 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_3 : memref<100xf64>
    %3 = arith.cmpi sge, %1, %c0 : index
    %4 = arith.cmpi slt, %1, %c100 : index
    %5 = arith.andi %3, %4 : i1
    %6 = runtime.string "index out of bounds"
    runtime.call @_Massert_void_i1_pvoid_i64(%5, %6, %c1_i64) : (i1, !runtime.string, i64) -> ()
    %7 = memref.load %2[%1] : memref<100xf64>
    return %7 : f64
  }
  runtime.variable_getters [@var_getter_0, @var_getter_1, @var_getter_2, @var_getter_3, @var_getter_4]
  func.func @updateNonStateVariables() {
    call @HeatString_dynamic() : () -> ()
    return
  }
  func.func @updateStateVariables(%arg0: f64) {
    %0 = memref.get_global @timeStep : memref<f64>
    memref.store %arg0, %0[] : memref<f64>
    call @HeatString_schedule_state_variables() : () -> ()
    return
  }
  func.func @solveICModel() {
    call @HeatString_ic() : () -> ()
    return
  }
  func.func @icModelBegin() {
    return
  }
  func.func @icModelEnd() {
    return
  }
  func.func @dynamicModelBegin() {
    return
  }
  func.func @dynamicModelEnd() {
    return
  }
  func.func @init() {
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
    %0 = memref.get_global @__constant_100xf64 : memref<100xf64>
    %1 = memref.get_global @var : memref<f64>
    memref.store %cst, %1[] : memref<f64>
    %2 = memref.get_global @var_0 : memref<f64>
    memref.store %cst, %2[] : memref<f64>
    %3 = memref.get_global @var_1 : memref<f64>
    memref.store %cst, %3[] : memref<f64>
    %4 = memref.get_global @var_2 : memref<100xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<100xf64>
    memref.copy %0, %alloc : memref<100xf64> to memref<100xf64>
    memref.copy %alloc, %4 : memref<100xf64> to memref<100xf64>
    %5 = memref.get_global @var_3 : memref<100xf64>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<100xf64>
    memref.copy %0, %alloc_0 : memref<100xf64> to memref<100xf64>
    memref.copy %alloc_0, %5 : memref<100xf64> to memref<100xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<100xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<100xf64>
    }
    return
  }
  func.func @deinit() {
    return
  }
  func.func @getTime() -> f64 {
    %0 = memref.get_global @time : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @setTime(%arg0: f64) {
    %0 = memref.get_global @time : memref<f64>
    memref.store %arg0, %0[] : memref<f64>
    return
  }
}
