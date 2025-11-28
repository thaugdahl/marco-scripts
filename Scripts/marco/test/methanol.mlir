module attributes {dlti.dl_spec = #dlti.dl_spec<"dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64, !bmodelica.int = ["size", 64], !bmodelica.real = ["size", 64], !llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  memref.global "private" constant @__constant_4xf64 : memref<4xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_3x4x6xf64 : memref<3x4x6xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_3x4x7xf64 : memref<3x4x7xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_3xf64 : memref<3xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_8xf64_0 : memref<8xf64> = dense<[3.9008599999999998, 1.099290e+01, 1.833710e+01, -1.636630e+01, -6.223340e+00, 2.803580e+00, 1.077830e+00, 9.696700e-01]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_8xf64 : memref<8xf64> = dense<[0.000000e+00, 4.125750e+00, 3.269730e+00, 3.774920e+00, 2.935740e+00, 8.237470e+00, 1.033120e+01, 5.332600e-01]> {alignment = 64 : i64}
  runtime.function private @_Msin_f64_f64(f64) -> f64
  runtime.function private @_Mexp_f64_f64(f64) -> f64
  runtime.function private @_Mpow_f64_f64_f64(f64, f64) -> f64
  memref.global "private" @time : memref<f64> = uninitialized
  memref.global "private" @var : memref<i64> = uninitialized
  memref.global "private" @var_0 : memref<i64> = uninitialized
  memref.global "private" @var_1 : memref<i64> = uninitialized
  memref.global "private" @var_2 : memref<f64> = uninitialized
  memref.global "private" @var_3 : memref<f64> = uninitialized
  memref.global "private" @var_4 : memref<f64> = uninitialized
  memref.global "private" @var_5 : memref<f64> = uninitialized
  memref.global "private" @var_6 : memref<f64> = uninitialized
  memref.global "private" @var_7 : memref<f64> = uninitialized
  memref.global "private" @var_8 : memref<f64> = uninitialized
  memref.global "private" @var_9 : memref<f64> = uninitialized
  memref.global "private" @var_10 : memref<f64> = uninitialized
  memref.global "private" @var_11 : memref<f64> = uninitialized
  memref.global "private" @var_12 : memref<f64> = uninitialized
  memref.global "private" @var_13 : memref<f64> = uninitialized
  memref.global "private" @var_14 : memref<f64> = uninitialized
  memref.global "private" @var_15 : memref<f64> = uninitialized
  memref.global "private" @var_16 : memref<f64> = uninitialized
  memref.global "private" @var_17 : memref<f64> = uninitialized
  memref.global "private" @var_18 : memref<f64> = uninitialized
  memref.global "private" @var_19 : memref<4xf64> = uninitialized
  memref.global "private" @var_20 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_21 : memref<3x4x7xf64> = uninitialized
  memref.global "private" @var_22 : memref<3x4x7xf64> = uninitialized
  memref.global "private" @var_23 : memref<3xf64> = uninitialized
  memref.global "private" @var_24 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_25 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_26 : memref<3xf64> = uninitialized
  memref.global "private" @var_27 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_28 : memref<3xf64> = uninitialized
  memref.global "private" @var_29 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_30 : memref<3xf64> = uninitialized
  memref.global "private" @var_31 : memref<3xf64> = uninitialized
  memref.global "private" @var_32 : memref<3x4x6xf64> = uninitialized
  memref.global "private" @var_33 : memref<3x4x6xf64> = uninitialized
  func.func @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(%arg0: f64) -> f64 {
    %true = arith.constant true
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 5.126400e+02 : f64
    %cst_0 = arith.constant 3.9008599999999998 : f64
    %c-1 = arith.constant -1 : index
    %cst_1 = arith.constant 2.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_3 = arith.constant 259.50255930087394 : f64
    %0 = memref.get_global @__constant_8xf64 : memref<8xf64>
    %1 = memref.get_global @__constant_8xf64_0 : memref<8xf64>
    %alloc = memref.alloc() : memref<8xf64>
    %alloc_4 = memref.alloc() : memref<f64>
    %alloc_5 = memref.alloc() : memref<f64>
    %alloc_6 = memref.alloc() : memref<f64>
    %2 = arith.divf %cst, %arg0 : f64
    memref.store %2, %alloc_5[] : memref<f64>
    %3 = memref.load %alloc_5[] : memref<f64>
    %alloc_7 = memref.alloc() {alignment = 64 : i64} : memref<8xf64>
    affine.for %arg1 = 0 to 8 {
      affine.store %3, %alloc_7[%arg1] : memref<8xf64>
    }
    %alloc_8 = memref.alloc() {alignment = 64 : i64} : memref<8xf64>
    affine.for %arg1 = 0 to 8 {
      %7 = affine.load %0[%arg1] : memref<8xf64>
      %8 = affine.load %alloc_7[%arg1] : memref<8xf64>
      %9 = arith.mulf %7, %8 : f64
      affine.store %9, %alloc_8[%arg1] : memref<8xf64>
    }
    memref.copy %alloc_8, %alloc : memref<8xf64> to memref<8xf64>
    memref.store %cst_0, %alloc_6[] : memref<f64>
    %alloca = memref.alloca() : memref<index>
    memref.store %c2, %alloca[] : memref<index>
    scf.while : () -> () {
      %7 = memref.load %alloca[] : memref<index>
      %8 = arith.cmpi sle, %7, %c8 : index
      %9:2 = scf.if %8 -> (i32, i32) {
        %11 = memref.load %alloca[] : memref<index>
        %12 = memref.load %alloc_6[] : memref<f64>
        %13 = arith.addi %11, %c-1 : index
        %14 = memref.load %1[%13] : memref<8xf64>
        %15 = arith.addi %11, %c-1 : index
        %16 = memref.load %alloc[%15] : memref<8xf64>
        %17 = runtime.call @_Mpow_f64_f64_f64(%16, %cst_1) : (f64, f64) -> f64
        %18 = arith.mulf %14, %17 : f64
        %19 = arith.addi %11, %c-1 : index
        %20 = memref.load %alloc[%19] : memref<8xf64>
        %21 = runtime.call @_Mexp_f64_f64(%20) : (f64) -> f64
        %22 = arith.mulf %18, %21 : f64
        %23 = arith.addi %11, %c-1 : index
        %24 = memref.load %alloc[%23] : memref<8xf64>
        %25 = runtime.call @_Mexp_f64_f64(%24) : (f64) -> f64
        %26 = arith.subf %25, %cst_2 : f64
        %27 = runtime.call @_Mpow_f64_f64_f64(%26, %cst_1) : (f64, f64) -> f64
        %28 = arith.divf %22, %27 : f64
        %29 = arith.addf %12, %28 : f64
        memref.store %29, %alloc_6[] : memref<f64>
        %30 = memref.load %alloca[] : memref<index>
        %31 = arith.addi %30, %c1 : index
        memref.store %31, %alloca[] : memref<index>
        scf.yield %c0_i32, %c1_i32 : i32, i32
      } else {
        scf.yield %c1_i32, %c0_i32 : i32, i32
      }
      %10 = arith.trunci %9#1 : i32 to i1
      scf.condition(%10)
    } do {
      scf.yield
    }
    %4 = memref.load %alloc_6[] : memref<f64>
    %5 = arith.mulf %4, %cst_3 : f64
    memref.store %5, %alloc_4[] : memref<f64>
    %6 = memref.load %alloc_4[] : memref<f64>
    scf.if %true {
      memref.dealloc %alloc : memref<8xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_4 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_5 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_6 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_7 : memref<8xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_8 : memref<8xf64>
    }
    return %6 : f64
  }
  func.func @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(%arg0: f64) -> f64 {
    %true = arith.constant true
    %cst = arith.constant 259.50255930087394 : f64
    %alloc = memref.alloc() : memref<f64>
    %0 = call @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(%arg0) : (f64) -> f64
    %1 = arith.subf %0, %cst : f64
    memref.store %1, %alloc[] : memref<f64>
    %2 = memref.load %alloc[] : memref<f64>
    scf.if %true {
      memref.dealloc %alloc : memref<f64>
    }
    return %2 : f64
  }
  func.func @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(%arg0: f64) -> f64 {
    %true = arith.constant true
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 5.126400e+02 : f64
    %cst_0 = arith.constant 3.9008599999999998 : f64
    %c-1 = arith.constant -1 : index
    %cst_1 = arith.constant 1.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_2 = arith.constant 259.50255930087394 : f64
    %cst_3 = arith.constant 1.361810e+03 : f64
    %0 = memref.get_global @__constant_8xf64 : memref<8xf64>
    %1 = memref.get_global @__constant_8xf64_0 : memref<8xf64>
    %alloc = memref.alloc() : memref<8xf64>
    %alloc_4 = memref.alloc() : memref<f64>
    %alloc_5 = memref.alloc() : memref<f64>
    %alloc_6 = memref.alloc() : memref<f64>
    %2 = arith.divf %cst, %arg0 : f64
    memref.store %2, %alloc_5[] : memref<f64>
    %3 = memref.load %alloc_5[] : memref<f64>
    %alloc_7 = memref.alloc() {alignment = 64 : i64} : memref<8xf64>
    affine.for %arg1 = 0 to 8 {
      affine.store %3, %alloc_7[%arg1] : memref<8xf64>
    }
    %alloc_8 = memref.alloc() {alignment = 64 : i64} : memref<8xf64>
    affine.for %arg1 = 0 to 8 {
      %16 = affine.load %0[%arg1] : memref<8xf64>
      %17 = affine.load %alloc_7[%arg1] : memref<8xf64>
      %18 = arith.mulf %16, %17 : f64
      affine.store %18, %alloc_8[%arg1] : memref<8xf64>
    }
    memref.copy %alloc_8, %alloc : memref<8xf64> to memref<8xf64>
    %4 = memref.load %alloc_5[] : memref<f64>
    %5 = arith.divf %cst_0, %4 : f64
    memref.store %5, %alloc_4[] : memref<f64>
    %alloca = memref.alloca() : memref<index>
    memref.store %c2, %alloca[] : memref<index>
    scf.while : () -> () {
      %16 = memref.load %alloca[] : memref<index>
      %17 = arith.cmpi sle, %16, %c8 : index
      %18:2 = scf.if %17 -> (i32, i32) {
        %20 = memref.load %alloca[] : memref<index>
        %21 = memref.load %alloc_4[] : memref<f64>
        %22 = arith.addi %20, %c-1 : index
        %23 = memref.load %1[%22] : memref<8xf64>
        %24 = arith.addi %20, %c-1 : index
        %25 = memref.load %0[%24] : memref<8xf64>
        %26 = arith.mulf %23, %25 : f64
        %27 = arith.addi %20, %c-1 : index
        %28 = memref.load %alloc[%27] : memref<8xf64>
        %29 = runtime.call @_Mexp_f64_f64(%28) : (f64) -> f64
        %30 = arith.subf %29, %cst_1 : f64
        %31 = arith.divf %26, %30 : f64
        %32 = arith.addf %21, %31 : f64
        memref.store %32, %alloc_4[] : memref<f64>
        %33 = memref.load %alloca[] : memref<index>
        %34 = arith.addi %33, %c1 : index
        memref.store %34, %alloca[] : memref<index>
        scf.yield %c0_i32, %c1_i32 : i32, i32
      } else {
        scf.yield %c1_i32, %c0_i32 : i32, i32
      }
      %19 = arith.trunci %18#1 : i32 to i1
      scf.condition(%19)
    } do {
      scf.yield
    }
    %6 = arith.mulf %arg0, %cst_2 : f64
    %7 = memref.load %alloc_5[] : memref<f64>
    %8 = arith.mulf %6, %7 : f64
    %9 = memref.load %alloc_4[] : memref<f64>
    %10 = arith.mulf %8, %9 : f64
    %11 = memref.load %alloc_5[] : memref<f64>
    %12 = arith.mulf %11, %cst_3 : f64
    %13 = arith.divf %12, %cst : f64
    %14 = arith.subf %10, %13 : f64
    memref.store %14, %alloc_6[] : memref<f64>
    %15 = memref.load %alloc_6[] : memref<f64>
    scf.if %true {
      memref.dealloc %alloc : memref<8xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_4 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_5 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_6 : memref<f64>
    }
    scf.if %true {
      memref.dealloc %alloc_7 : memref<8xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_8 : memref<8xf64>
    }
    return %15 : f64
  }
  memref.global "private" @timeStep : memref<f64> = uninitialized
  func.func @euler_state_update_T_tilde() {
    %true = arith.constant true
    %0 = memref.get_global @timeStep : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = memref.get_global @var_24 : memref<3x4x6xf64>
    %3 = memref.get_global @var_32 : memref<3x4x6xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          affine.store %1, %alloc[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          %5 = affine.load %3[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %6 = affine.load %alloc[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %7 = arith.mulf %5, %6 : f64
          affine.store %7, %alloc_0[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          %5 = affine.load %2[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %6 = affine.load %alloc_0[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %alloc_1[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %4 = memref.get_global @var_24 : memref<3x4x6xf64>
    memref.copy %alloc_1, %4 : memref<3x4x6xf64> to memref<3x4x6xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<3x4x6xf64>
    }
    return
  }
  func.func @euler_state_update_T_w() {
    %true = arith.constant true
    %0 = memref.get_global @timeStep : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = memref.get_global @var_29 : memref<3x4x6xf64>
    %3 = memref.get_global @var_33 : memref<3x4x6xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          affine.store %1, %alloc[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          %5 = affine.load %3[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %6 = affine.load %alloc[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %7 = arith.mulf %5, %6 : f64
          affine.store %7, %alloc_0[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 4 {
        affine.for %arg2 = 0 to 6 {
          %5 = affine.load %2[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %6 = affine.load %alloc_0[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %alloc_1[%arg0, %arg1, %arg2] : memref<3x4x6xf64>
        }
      }
    }
    %4 = memref.get_global @var_29 : memref<3x4x6xf64>
    memref.copy %alloc_1, %4 : memref<3x4x6xf64> to memref<3x4x6xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<3x4x6xf64>
    }
    return
  }
  func.func @euler_state_update_T_m() {
    %true = arith.constant true
    %0 = memref.get_global @timeStep : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = memref.get_global @var_30 : memref<3xf64>
    %3 = memref.get_global @var_31 : memref<3xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    affine.for %arg0 = 0 to 3 {
      affine.store %1, %alloc[%arg0] : memref<3xf64>
    }
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    affine.for %arg0 = 0 to 3 {
      %5 = affine.load %3[%arg0] : memref<3xf64>
      %6 = affine.load %alloc[%arg0] : memref<3xf64>
      %7 = arith.mulf %5, %6 : f64
      affine.store %7, %alloc_0[%arg0] : memref<3xf64>
    }
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    affine.for %arg0 = 0 to 3 {
      %5 = affine.load %2[%arg0] : memref<3xf64>
      %6 = affine.load %alloc_0[%arg0] : memref<3xf64>
      %7 = arith.addf %5, %6 : f64
      affine.store %7, %alloc_1[%arg0] : memref<3xf64>
    }
    %4 = memref.get_global @var_30 : memref<3xf64>
    memref.copy %alloc_1, %4 : memref<3xf64> to memref<3xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<3xf64>
    }
    return
  }
  func.func @equation() {
    %cst = arith.constant 0.20943951023933333 : f64
    %cst_0 = arith.constant 2.000000e-01 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %0 = memref.get_global @time : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = arith.mulf %1, %cst : f64
    %3 = runtime.call @_Msin_f64_f64(%2) : (f64) -> f64
    %4 = arith.mulf %3, %cst_0 : f64
    %5 = arith.addf %4, %cst_1 : f64
    %6 = memref.get_global @var_17 : memref<f64>
    memref.store %5, %6[] : memref<f64>
    return
  }
  func.func @equation_0() {
    %cst = arith.constant 4.000000e+00 : f64
    %0 = memref.get_global @var_17 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = arith.divf %1, %cst : f64
    %3 = memref.get_global @var_18 : memref<f64>
    memref.store %2, %3[] : memref<f64>
    return
  }
  func.func @equation_1(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 2.000000e+06 : f64
    %cst_0 = arith.constant 259.50255930087394 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = arith.mulf %3, %cst_0 : f64
      %5 = arith.divf %cst, %4 : f64
      %6 = memref.get_global @var_26 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %6 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %5, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_2(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(%3) : (f64) -> f64
      %5 = memref.get_global @var_23 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %5 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %4, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_3(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(%3) : (f64) -> f64
      %5 = memref.get_global @var_28 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %5 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %4, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_4(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 2.000000e+06 : f64
    %cst_0 = arith.constant 259.50255930087394 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_24 : memref<3x4x6xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x6xf64>
          %8 = arith.mulf %7, %cst_0 : f64
          %9 = arith.divf %cst, %8 : f64
          %10 = memref.get_global @var_25 : memref<3x4x6xf64>
          %11 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %10 to offset: [%11], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %9, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_5(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_24 : memref<3x4x6xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x6xf64>
          %8 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(%7) : (f64) -> f64
          %9 = memref.get_global @var_27 : memref<3x4x6xf64>
          %10 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %9 to offset: [%10], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %8, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_6(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = memref.get_global @var_24 : memref<3x4x6xf64>
          %1 = memref.load %0[%arg6, %arg7, %arg8] : memref<3x4x6xf64>
          %2 = arith.addi %arg8, %c1 : index
          %3 = memref.get_global @var_21 : memref<3x4x7xf64>
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 28 + s1 * 7 + s2)>()[%arg6, %arg7, %2]
          %reinterpret_cast = memref.reinterpret_cast %3 to offset: [%4], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %1, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_7(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %0 = arith.addi %arg4, %c-1 : index
        %1 = arith.addi %arg5, %c-1 : index
        %2 = arith.index_cast %arg4 : index to i64
        %3 = arith.addi %2, %c-2_i64 : i64
        %4 = arith.index_cast %3 : i64 to index
        %5 = memref.get_global @var_30 : memref<3xf64>
        %6 = memref.load %5[%4] : memref<3xf64>
        %7 = memref.get_global @var_21 : memref<3x4x7xf64>
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 28 + s1 * 7)>()[%0, %1]
        %reinterpret_cast = memref.reinterpret_cast %7 to offset: [%8], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_8(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 4.931500e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = memref.get_global @var_21 : memref<3x4x7xf64>
      %2 = affine.apply affine_map<()[s0] -> (s0 * 7)>()[%0]
      %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%2], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_9(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_21 : memref<3x4x7xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x7xf64>
          %8 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(%7) : (f64) -> f64
          %9 = memref.get_global @var_22 : memref<3x4x7xf64>
          %10 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 28 + s1 * 7 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %9 to offset: [%10], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %8, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_10(%arg0: index, %arg1: index) {
    %c5 = arith.constant 5 : index
    %0 = bmodelica.constant 1 : index
    %c6 = arith.constant 6 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %cst_0 = arith.constant 0.0033333333333333335 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_26 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = arith.mulf %3, %cst_0 : f64
      %5 = arith.addi %arg2, %c-1 : index
      %6 = memref.get_global @var_28 : memref<3xf64>
      %7 = memref.load %6[%5] : memref<3xf64>
      %8 = arith.mulf %4, %7 : f64
      %9 = arith.addi %arg2, %c-1 : index
      %10 = memref.get_global @var_18 : memref<f64>
      %11 = memref.load %10[] : memref<f64>
      %12 = scf.parallel (%arg3) = (%0) to (%c5) step (%0) init (%cst) -> f64 {
        %23 = arith.addi %arg2, %c-1 : index
        %24 = arith.addi %arg3, %c-1 : index
        %25 = memref.get_global @var_22 : memref<3x4x7xf64>
        %26 = memref.load %25[%23, %24, %c6] : memref<3x4x7xf64>
        scf.reduce(%26 : f64) {
        ^bb0(%arg4: f64, %arg5: f64):
          %27 = arith.addf %arg4, %arg5 : f64
          scf.reduce.return %27 : f64
        }
      }
      %13 = arith.mulf %11, %12 : f64
      %14 = memref.get_global @var_17 : memref<f64>
      %15 = memref.load %14[] : memref<f64>
      %16 = arith.addi %arg2, %c-1 : index
      %17 = memref.get_global @var_23 : memref<3xf64>
      %18 = memref.load %17[%16] : memref<3xf64>
      %19 = arith.mulf %15, %18 : f64
      %20 = arith.subf %13, %19 : f64
      %21 = arith.divf %20, %8 : f64
      %22 = memref.get_global @var_31 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %22 to offset: [%9], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %21, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_11(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 138.88888888888889 : f64
    %cst_0 = arith.constant 8.000000e-01 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.get_global @var_17 : memref<f64>
          %4 = memref.load %3[] : memref<f64>
          %5 = runtime.call @_Mpow_f64_f64_f64(%4, %cst_0) : (f64, f64) -> f64
          %6 = arith.mulf %5, %cst : f64
          %7 = arith.addi %arg6, %c-1 : index
          %8 = arith.addi %arg7, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.get_global @var_29 : memref<3x4x6xf64>
          %11 = memref.load %10[%7, %8, %9] : memref<3x4x6xf64>
          %12 = arith.addi %arg6, %c-1 : index
          %13 = arith.addi %arg7, %c-1 : index
          %14 = arith.addi %arg8, %c-1 : index
          %15 = memref.get_global @var_24 : memref<3x4x6xf64>
          %16 = memref.load %15[%12, %13, %14] : memref<3x4x6xf64>
          %17 = arith.subf %11, %16 : f64
          %18 = arith.mulf %6, %17 : f64
          %19 = memref.get_global @var_20 : memref<3x4x6xf64>
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %19 to offset: [%20], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %18, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_12(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 1.375000e-02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.get_global @var_25 : memref<3x4x6xf64>
          %4 = memref.load %3[%0, %1, %2] : memref<3x4x6xf64>
          %5 = arith.mulf %4, %cst : f64
          %6 = arith.addi %arg6, %c-1 : index
          %7 = arith.addi %arg7, %c-1 : index
          %8 = arith.addi %arg8, %c-1 : index
          %9 = memref.get_global @var_27 : memref<3x4x6xf64>
          %10 = memref.load %9[%6, %7, %8] : memref<3x4x6xf64>
          %11 = arith.mulf %5, %10 : f64
          %12 = arith.addi %arg6, %c-1 : index
          %13 = arith.addi %arg7, %c-1 : index
          %14 = arith.addi %arg8, %c-1 : index
          %15 = memref.get_global @var_18 : memref<f64>
          %16 = memref.load %15[] : memref<f64>
          %17 = arith.addi %arg6, %c-1 : index
          %18 = arith.addi %arg7, %c-1 : index
          %19 = arith.addi %arg8, %c-1 : index
          %20 = memref.get_global @var_22 : memref<3x4x7xf64>
          %21 = memref.load %20[%17, %18, %19] : memref<3x4x7xf64>
          %22 = arith.addi %arg6, %c-1 : index
          %23 = arith.addi %arg7, %c-1 : index
          %24 = memref.get_global @var_22 : memref<3x4x7xf64>
          %25 = memref.load %24[%22, %23, %arg8] : memref<3x4x7xf64>
          %26 = arith.subf %21, %25 : f64
          %27 = arith.mulf %16, %26 : f64
          %28 = arith.addi %arg6, %c-1 : index
          %29 = arith.addi %arg7, %c-1 : index
          %30 = arith.addi %arg8, %c-1 : index
          %31 = memref.get_global @var_20 : memref<3x4x6xf64>
          %32 = memref.load %31[%28, %29, %30] : memref<3x4x6xf64>
          %33 = arith.addf %27, %32 : f64
          %34 = arith.divf %33, %11 : f64
          %35 = memref.get_global @var_32 : memref<3x4x6xf64>
          %36 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%12, %13, %14]
          %reinterpret_cast = memref.reinterpret_cast %35 to offset: [%36], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %34, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_13(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 41666.666666666664 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.062831853071800003 : f64
    %cst_2 = arith.constant 6.2831853071800001 : f64
    %cst_3 = arith.constant 4.000000e+00 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = memref.get_global @time : memref<f64>
      %2 = memref.load %1[] : memref<f64>
      %3 = arith.mulf %2, %cst_1 : f64
      %4 = arith.index_cast %arg2 : index to i64
      %5 = arith.sitofp %4 : i64 to f64
      %6 = arith.mulf %5, %cst_2 : f64
      %7 = arith.divf %6, %cst_3 : f64
      %8 = arith.addf %3, %7 : f64
      %9 = runtime.call @_Msin_f64_f64(%8) : (f64) -> f64
      %10 = arith.addf %9, %cst_0 : f64
      %11 = arith.mulf %10, %cst : f64
      %12 = memref.get_global @var_19 : memref<4xf64>
      %reinterpret_cast = memref.reinterpret_cast %12 to offset: [%0], sizes: [], strides: [] : memref<4xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_14(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 138.88888888888889 : f64
    %cst_0 = arith.constant 6.000000e+00 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg7, %c-1 : index
          %4 = memref.get_global @var_19 : memref<4xf64>
          %5 = memref.load %4[%3] : memref<4xf64>
          %6 = arith.divf %5, %cst_0 : f64
          %7 = arith.addi %arg6, %c-1 : index
          %8 = arith.addi %arg7, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.get_global @var_20 : memref<3x4x6xf64>
          %11 = memref.load %10[%7, %8, %9] : memref<3x4x6xf64>
          %12 = arith.subf %6, %11 : f64
          %13 = arith.divf %12, %cst : f64
          %14 = memref.get_global @var_33 : memref<3x4x6xf64>
          %15 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %14 to offset: [%15], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %13, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_15() {
    %c3_i64 = arith.constant 3 : i64
    %0 = memref.get_global @var : memref<i64>
    memref.store %c3_i64, %0[] : memref<i64>
    return
  }
  func.func @equation_16() {
    %c4_i64 = arith.constant 4 : i64
    %0 = memref.get_global @var_0 : memref<i64>
    memref.store %c4_i64, %0[] : memref<i64>
    return
  }
  func.func @equation_17() {
    %c6_i64 = arith.constant 6 : i64
    %0 = memref.get_global @var_1 : memref<i64>
    memref.store %c6_i64, %0[] : memref<i64>
    return
  }
  func.func @equation_18() {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = memref.get_global @var_2 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_19() {
    %cst = arith.constant 5.000000e+05 : f64
    %0 = memref.get_global @var_3 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_20() {
    %cst = arith.constant 0.033333333333333333 : f64
    %0 = memref.get_global @var_4 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_21() {
    %cst = arith.constant 1.000000e-02 : f64
    %0 = memref.get_global @var_5 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_22() {
    %cst = arith.constant 4.931500e+02 : f64
    %0 = memref.get_global @var_6 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_23() {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = memref.get_global @var_7 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_24() {
    %cst = arith.constant 1.000000e-02 : f64
    %0 = memref.get_global @var_8 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_25() {
    %cst = arith.constant 1.000000e+04 : f64
    %0 = memref.get_global @var_9 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_26() {
    %cst = arith.constant 8.000000e-01 : f64
    %0 = memref.get_global @var_10 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_27() {
    %cst = arith.constant 1.000000e+04 : f64
    %0 = memref.get_global @var_11 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_28() {
    %cst = arith.constant 2.000000e+06 : f64
    %0 = memref.get_global @var_12 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_29() {
    %cst = arith.constant 1.375000e-02 : f64
    %0 = memref.get_global @var_13 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_30() {
    %cst = arith.constant 0.0033333333333333335 : f64
    %0 = memref.get_global @var_14 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_31() {
    %cst = arith.constant 138.88888888888889 : f64
    %0 = memref.get_global @var_15 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_32() {
    %cst = arith.constant 3.1415926535900001 : f64
    %0 = memref.get_global @var_16 : memref<f64>
    memref.store %cst, %0[] : memref<f64>
    return
  }
  func.func @equation_33(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %cst = arith.constant 4.931500e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = memref.get_global @var_24 : memref<3x4x6xf64>
          %1 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%arg6, %arg7, %arg8]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_34(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %cst = arith.constant 4.931500e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = memref.get_global @var_29 : memref<3x4x6xf64>
          %1 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%arg6, %arg7, %arg8]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_35(%arg0: index, %arg1: index) {
    %cst = arith.constant 4.931500e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = memref.get_global @var_30 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%arg2], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_36() {
    %cst = arith.constant 0.20943951023933333 : f64
    %cst_0 = arith.constant 2.000000e-01 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %0 = memref.get_global @time : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = arith.mulf %1, %cst : f64
    %3 = runtime.call @_Msin_f64_f64(%2) : (f64) -> f64
    %4 = arith.mulf %3, %cst_0 : f64
    %5 = arith.addf %4, %cst_1 : f64
    %6 = memref.get_global @var_17 : memref<f64>
    memref.store %5, %6[] : memref<f64>
    return
  }
  func.func @equation_37() {
    %cst = arith.constant 4.000000e+00 : f64
    %0 = memref.get_global @var_17 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = arith.divf %1, %cst : f64
    %3 = memref.get_global @var_18 : memref<f64>
    memref.store %2, %3[] : memref<f64>
    return
  }
  func.func @equation_38(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 2.000000e+06 : f64
    %cst_0 = arith.constant 259.50255930087394 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = arith.mulf %3, %cst_0 : f64
      %5 = arith.divf %cst, %4 : f64
      %6 = memref.get_global @var_26 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %6 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %5, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_39(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(%3) : (f64) -> f64
      %5 = memref.get_global @var_23 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %5 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %4, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_40(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_30 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(%3) : (f64) -> f64
      %5 = memref.get_global @var_28 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %5 to offset: [%0], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %4, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_41(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 2.000000e+06 : f64
    %cst_0 = arith.constant 259.50255930087394 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_24 : memref<3x4x6xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x6xf64>
          %8 = arith.mulf %7, %cst_0 : f64
          %9 = arith.divf %cst, %8 : f64
          %10 = memref.get_global @var_25 : memref<3x4x6xf64>
          %11 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %10 to offset: [%11], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %9, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_42(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_24 : memref<3x4x6xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x6xf64>
          %8 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(%7) : (f64) -> f64
          %9 = memref.get_global @var_27 : memref<3x4x6xf64>
          %10 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %9 to offset: [%10], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %8, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_43(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = memref.get_global @var_24 : memref<3x4x6xf64>
          %1 = memref.load %0[%arg6, %arg7, %arg8] : memref<3x4x6xf64>
          %2 = arith.addi %arg8, %c1 : index
          %3 = memref.get_global @var_21 : memref<3x4x7xf64>
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 28 + s1 * 7 + s2)>()[%arg6, %arg7, %2]
          %reinterpret_cast = memref.reinterpret_cast %3 to offset: [%4], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %1, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_44(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %0 = arith.addi %arg4, %c-1 : index
        %1 = arith.addi %arg5, %c-1 : index
        %2 = arith.index_cast %arg4 : index to i64
        %3 = arith.addi %2, %c-2_i64 : i64
        %4 = arith.index_cast %3 : i64 to index
        %5 = memref.get_global @var_30 : memref<3xf64>
        %6 = memref.load %5[%4] : memref<3xf64>
        %7 = memref.get_global @var_21 : memref<3x4x7xf64>
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 28 + s1 * 7)>()[%0, %1]
        %reinterpret_cast = memref.reinterpret_cast %7 to offset: [%8], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_45(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 4.931500e+02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = memref.get_global @var_21 : memref<3x4x7xf64>
      %2 = affine.apply affine_map<()[s0] -> (s0 * 7)>()[%0]
      %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%2], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_46(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg6, %c-1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.get_global @var_21 : memref<3x4x7xf64>
          %7 = memref.load %6[%3, %4, %5] : memref<3x4x7xf64>
          %8 = func.call @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(%7) : (f64) -> f64
          %9 = memref.get_global @var_22 : memref<3x4x7xf64>
          %10 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 28 + s1 * 7 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %9 to offset: [%10], sizes: [], strides: [] : memref<3x4x7xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %8, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_47(%arg0: index, %arg1: index) {
    %c5 = arith.constant 5 : index
    %0 = bmodelica.constant 1 : index
    %c6 = arith.constant 6 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %cst_0 = arith.constant 0.0033333333333333335 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg2, %c-1 : index
      %2 = memref.get_global @var_26 : memref<3xf64>
      %3 = memref.load %2[%1] : memref<3xf64>
      %4 = arith.mulf %3, %cst_0 : f64
      %5 = arith.addi %arg2, %c-1 : index
      %6 = memref.get_global @var_28 : memref<3xf64>
      %7 = memref.load %6[%5] : memref<3xf64>
      %8 = arith.mulf %4, %7 : f64
      %9 = arith.addi %arg2, %c-1 : index
      %10 = memref.get_global @var_18 : memref<f64>
      %11 = memref.load %10[] : memref<f64>
      %12 = scf.parallel (%arg3) = (%0) to (%c5) step (%0) init (%cst) -> f64 {
        %23 = arith.addi %arg2, %c-1 : index
        %24 = arith.addi %arg3, %c-1 : index
        %25 = memref.get_global @var_22 : memref<3x4x7xf64>
        %26 = memref.load %25[%23, %24, %c6] : memref<3x4x7xf64>
        scf.reduce(%26 : f64) {
        ^bb0(%arg4: f64, %arg5: f64):
          %27 = arith.addf %arg4, %arg5 : f64
          scf.reduce.return %27 : f64
        }
      }
      %13 = arith.mulf %11, %12 : f64
      %14 = memref.get_global @var_17 : memref<f64>
      %15 = memref.load %14[] : memref<f64>
      %16 = arith.addi %arg2, %c-1 : index
      %17 = memref.get_global @var_23 : memref<3xf64>
      %18 = memref.load %17[%16] : memref<3xf64>
      %19 = arith.mulf %15, %18 : f64
      %20 = arith.subf %13, %19 : f64
      %21 = arith.divf %20, %8 : f64
      %22 = memref.get_global @var_31 : memref<3xf64>
      %reinterpret_cast = memref.reinterpret_cast %22 to offset: [%9], sizes: [], strides: [] : memref<3xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %21, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_48(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 138.88888888888889 : f64
    %cst_0 = arith.constant 8.000000e-01 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.get_global @var_17 : memref<f64>
          %4 = memref.load %3[] : memref<f64>
          %5 = runtime.call @_Mpow_f64_f64_f64(%4, %cst_0) : (f64, f64) -> f64
          %6 = arith.mulf %5, %cst : f64
          %7 = arith.addi %arg6, %c-1 : index
          %8 = arith.addi %arg7, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.get_global @var_29 : memref<3x4x6xf64>
          %11 = memref.load %10[%7, %8, %9] : memref<3x4x6xf64>
          %12 = arith.addi %arg6, %c-1 : index
          %13 = arith.addi %arg7, %c-1 : index
          %14 = arith.addi %arg8, %c-1 : index
          %15 = memref.get_global @var_24 : memref<3x4x6xf64>
          %16 = memref.load %15[%12, %13, %14] : memref<3x4x6xf64>
          %17 = arith.subf %11, %16 : f64
          %18 = arith.mulf %6, %17 : f64
          %19 = memref.get_global @var_20 : memref<3x4x6xf64>
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %19 to offset: [%20], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %18, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_49(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 1.375000e-02 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.get_global @var_25 : memref<3x4x6xf64>
          %4 = memref.load %3[%0, %1, %2] : memref<3x4x6xf64>
          %5 = arith.mulf %4, %cst : f64
          %6 = arith.addi %arg6, %c-1 : index
          %7 = arith.addi %arg7, %c-1 : index
          %8 = arith.addi %arg8, %c-1 : index
          %9 = memref.get_global @var_27 : memref<3x4x6xf64>
          %10 = memref.load %9[%6, %7, %8] : memref<3x4x6xf64>
          %11 = arith.mulf %5, %10 : f64
          %12 = arith.addi %arg6, %c-1 : index
          %13 = arith.addi %arg7, %c-1 : index
          %14 = arith.addi %arg8, %c-1 : index
          %15 = memref.get_global @var_18 : memref<f64>
          %16 = memref.load %15[] : memref<f64>
          %17 = arith.addi %arg6, %c-1 : index
          %18 = arith.addi %arg7, %c-1 : index
          %19 = arith.addi %arg8, %c-1 : index
          %20 = memref.get_global @var_22 : memref<3x4x7xf64>
          %21 = memref.load %20[%17, %18, %19] : memref<3x4x7xf64>
          %22 = arith.addi %arg6, %c-1 : index
          %23 = arith.addi %arg7, %c-1 : index
          %24 = memref.get_global @var_22 : memref<3x4x7xf64>
          %25 = memref.load %24[%22, %23, %arg8] : memref<3x4x7xf64>
          %26 = arith.subf %21, %25 : f64
          %27 = arith.mulf %16, %26 : f64
          %28 = arith.addi %arg6, %c-1 : index
          %29 = arith.addi %arg7, %c-1 : index
          %30 = arith.addi %arg8, %c-1 : index
          %31 = memref.get_global @var_20 : memref<3x4x6xf64>
          %32 = memref.load %31[%28, %29, %30] : memref<3x4x6xf64>
          %33 = arith.addf %27, %32 : f64
          %34 = arith.divf %33, %11 : f64
          %35 = memref.get_global @var_32 : memref<3x4x6xf64>
          %36 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%12, %13, %14]
          %reinterpret_cast = memref.reinterpret_cast %35 to offset: [%36], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %34, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_50(%arg0: index, %arg1: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 41666.666666666664 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.062831853071800003 : f64
    %cst_2 = arith.constant 6.2831853071800001 : f64
    %cst_3 = arith.constant 4.000000e+00 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      %0 = arith.addi %arg2, %c-1 : index
      %1 = memref.get_global @time : memref<f64>
      %2 = memref.load %1[] : memref<f64>
      %3 = arith.mulf %2, %cst_1 : f64
      %4 = arith.index_cast %arg2 : index to i64
      %5 = arith.sitofp %4 : i64 to f64
      %6 = arith.mulf %5, %cst_2 : f64
      %7 = arith.divf %6, %cst_3 : f64
      %8 = arith.addf %3, %7 : f64
      %9 = runtime.call @_Msin_f64_f64(%8) : (f64) -> f64
      %10 = arith.addf %9, %cst_0 : f64
      %11 = arith.mulf %10, %cst : f64
      %12 = memref.get_global @var_19 : memref<4xf64>
      %reinterpret_cast = memref.reinterpret_cast %12 to offset: [%0], sizes: [], strides: [] : memref<4xf64> to memref<f64, strided<[], offset: ?>>
      memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
    }
    return
  }
  func.func @equation_51(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant 138.88888888888889 : f64
    %cst_0 = arith.constant 6.000000e+00 : f64
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %0 = arith.addi %arg6, %c-1 : index
          %1 = arith.addi %arg7, %c-1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = arith.addi %arg7, %c-1 : index
          %4 = memref.get_global @var_19 : memref<4xf64>
          %5 = memref.load %4[%3] : memref<4xf64>
          %6 = arith.divf %5, %cst_0 : f64
          %7 = arith.addi %arg6, %c-1 : index
          %8 = arith.addi %arg7, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.get_global @var_20 : memref<3x4x6xf64>
          %11 = memref.load %10[%7, %8, %9] : memref<3x4x6xf64>
          %12 = arith.subf %6, %11 : f64
          %13 = arith.divf %12, %cst : f64
          %14 = memref.get_global @var_33 : memref<3x4x6xf64>
          %15 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 24 + s1 * 6 + s2)>()[%0, %1, %2]
          %reinterpret_cast = memref.reinterpret_cast %14 to offset: [%15], sizes: [], strides: [] : memref<3x4x6xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %13, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @MethanolHeatExchangers_dynamic() {
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c6 = arith.constant 6 : index
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    call @equation() : () -> ()
    call @equation_1(%c1, %c4) : (index, index) -> ()
    call @equation_2(%c1, %c4) : (index, index) -> ()
    call @equation_3(%c1, %c4) : (index, index) -> ()
    call @equation_4(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_5(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_6(%c0, %c3, %c0, %c4, %c0, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_7(%c2, %c4, %c1, %c5) : (index, index, index, index) -> ()
    call @equation_8(%c1, %c5) : (index, index) -> ()
    call @equation_13(%c1, %c5) : (index, index) -> ()
    call @equation_0() : () -> ()
    call @equation_11(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_9(%c1, %c4, %c1, %c5, %c1, %c8) : (index, index, index, index, index, index) -> ()
    call @equation_14(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_10(%c1, %c4) : (index, index) -> ()
    call @equation_12(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    return
  }
  func.func @MethanolHeatExchangers_schedule_state_variables() {
    call @euler_state_update_T_tilde() : () -> ()
    call @euler_state_update_T_w() : () -> ()
    call @euler_state_update_T_m() : () -> ()
    return
  }
  func.func @MethanolHeatExchangers_ic() {
    %c8 = arith.constant 8 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c5 = arith.constant 5 : index
    %c1 = arith.constant 1 : index
    %c6 = arith.constant 6 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    call @equation_15() : () -> ()
    call @equation_16() : () -> ()
    call @equation_17() : () -> ()
    call @equation_18() : () -> ()
    call @equation_19() : () -> ()
    call @equation_20() : () -> ()
    call @equation_21() : () -> ()
    call @equation_22() : () -> ()
    call @equation_23() : () -> ()
    call @equation_24() : () -> ()
    call @equation_25() : () -> ()
    call @equation_26() : () -> ()
    call @equation_27() : () -> ()
    call @equation_28() : () -> ()
    call @equation_29() : () -> ()
    call @equation_30() : () -> ()
    call @equation_31() : () -> ()
    call @equation_32() : () -> ()
    call @equation_33(%c0, %c3, %c0, %c4, %c0, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_34(%c0, %c3, %c0, %c4, %c0, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_35(%c0, %c3) : (index, index) -> ()
    call @equation_36() : () -> ()
    call @equation_45(%c1, %c5) : (index, index) -> ()
    call @equation_50(%c1, %c5) : (index, index) -> ()
    call @equation_41(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_42(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_43(%c0, %c3, %c0, %c4, %c0, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_38(%c1, %c4) : (index, index) -> ()
    call @equation_39(%c1, %c4) : (index, index) -> ()
    call @equation_40(%c1, %c4) : (index, index) -> ()
    call @equation_44(%c2, %c4, %c1, %c5) : (index, index, index, index) -> ()
    call @equation_37() : () -> ()
    call @equation_48(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_46(%c1, %c4, %c1, %c5, %c1, %c8) : (index, index, index, index, index, index) -> ()
    call @equation_51(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    call @equation_47(%c1, %c4) : (index, index) -> ()
    call @equation_49(%c1, %c4, %c1, %c5, %c1, %c7) : (index, index, index, index, index, index) -> ()
    return
  }
  runtime.model_name "MethanolHeatExchangers"
  runtime.number_of_variables 35
  runtime.variable_names ["Nu", "Nh", "Nv", "w_nom", "Q_nom", "f_w", "f_Q", "T0", "V", "beta", "UA_nom", "alpha", "Cw", "p_nom", "V_v", "V_m", "C_wv", "pi", "w", "w_h", "Q", "Q_c", "T", "h", "h_m", "T_tilde", "rho", "rho_m", "cv", "cv_m", "T_w", "T_m", "der_T_m", "der_T_tilde", "der_T_w"]
  runtime.variable_ranks [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3, 3, 1, 3, 3, 1, 3, 1, 3, 1, 1, 3, 3]
  runtime.printable_indices [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, {[0,3]}, {[0,2][0,3][0,5]}, {[0,2][0,3][0,6]}, {[0,2][0,3][0,6]}, {[0,2]}, {[0,2][0,3][0,5]}, {[0,2][0,3][0,5]}, {[0,2]}, {[0,2][0,3][0,5]}, {[0,2]}, {[0,2][0,3][0,5]}, {[0,2]}, {}, {}, {}]
  runtime.derivatives_map [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 33, -1, -1, -1, -1, 34, 32, -1, -1, -1]
  func.func @var_getter_0(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var : memref<i64>
    %1 = memref.load %0[] : memref<i64>
    %2 = arith.sitofp %1 : i64 to f64
    return %2 : f64
  }
  func.func @var_getter_1(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_0 : memref<i64>
    %1 = memref.load %0[] : memref<i64>
    %2 = arith.sitofp %1 : i64 to f64
    return %2 : f64
  }
  func.func @var_getter_2(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_1 : memref<i64>
    %1 = memref.load %0[] : memref<i64>
    %2 = arith.sitofp %1 : i64 to f64
    return %2 : f64
  }
  func.func @var_getter_3(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_2 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_4(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_3 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_5(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_4 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_6(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_5 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_7(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_6 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_8(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_7 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_9(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_8 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_10(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_9 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_11(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_10 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_12(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_11 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_13(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_12 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_14(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_13 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_15(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_14 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_16(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_15 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_17(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_16 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_18(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_17 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_19(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_18 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_20(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_19 : memref<4xf64>
    %3 = memref.load %2[%1] : memref<4xf64>
    return %3 : f64
  }
  func.func @var_getter_21(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_20 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_22(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_21 : memref<3x4x7xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x7xf64>
    return %9 : f64
  }
  func.func @var_getter_23(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_22 : memref<3x4x7xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x7xf64>
    return %9 : f64
  }
  func.func @var_getter_24(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_23 : memref<3xf64>
    %3 = memref.load %2[%1] : memref<3xf64>
    return %3 : f64
  }
  func.func @var_getter_25(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_24 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_26(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_25 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_27(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_26 : memref<3xf64>
    %3 = memref.load %2[%1] : memref<3xf64>
    return %3 : f64
  }
  func.func @var_getter_28(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_27 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_29(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_28 : memref<3xf64>
    %3 = memref.load %2[%1] : memref<3xf64>
    return %3 : f64
  }
  func.func @var_getter_30(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_29 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_31(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_30 : memref<3xf64>
    %3 = memref.load %2[%1] : memref<3xf64>
    return %3 : f64
  }
  func.func @var_getter_32(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = memref.get_global @var_31 : memref<3xf64>
    %3 = memref.load %2[%1] : memref<3xf64>
    return %3 : f64
  }
  func.func @var_getter_33(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_32 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  func.func @var_getter_34(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_33 : memref<3x4x6xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<3x4x6xf64>
    return %9 : f64
  }
  runtime.variable_getters [@var_getter_0, @var_getter_1, @var_getter_2, @var_getter_3, @var_getter_4, @var_getter_5, @var_getter_6, @var_getter_7, @var_getter_8, @var_getter_9, @var_getter_10, @var_getter_11, @var_getter_12, @var_getter_13, @var_getter_14, @var_getter_15, @var_getter_16, @var_getter_17, @var_getter_18, @var_getter_19, @var_getter_20, @var_getter_21, @var_getter_22, @var_getter_23, @var_getter_24, @var_getter_25, @var_getter_26, @var_getter_27, @var_getter_28, @var_getter_29, @var_getter_30, @var_getter_31, @var_getter_32, @var_getter_33, @var_getter_34]
  func.func @updateNonStateVariables() {
    call @MethanolHeatExchangers_dynamic() : () -> ()
    return
  }
  func.func @updateStateVariables(%arg0: f64) {
    %0 = memref.get_global @timeStep : memref<f64>
    memref.store %arg0, %0[] : memref<f64>
    call @MethanolHeatExchangers_schedule_state_variables() : () -> ()
    return
  }
  func.func @solveICModel() {
    call @MethanolHeatExchangers_ic() : () -> ()
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

    func.func @main() {
        // call @init() : () -> ()
        // call @MethanolHeatExchangers_ic() : () -> ()
        call @MethanolHeatExchangers_dynamic() : () -> ()
        return
    }

  func.func @init() {
    %true = arith.constant true
    %c0_i64 = arith.constant 0 : i64
    %cst = arith.constant 0.000000e+00 : f64
    %0 = memref.get_global @__constant_3xf64 : memref<3xf64>
    %1 = memref.get_global @__constant_3x4x7xf64 : memref<3x4x7xf64>
    %2 = memref.get_global @__constant_3x4x6xf64 : memref<3x4x6xf64>
    %3 = memref.get_global @__constant_4xf64 : memref<4xf64>
    %4 = memref.get_global @var : memref<i64>
    memref.store %c0_i64, %4[] : memref<i64>
    %5 = memref.get_global @var_0 : memref<i64>
    memref.store %c0_i64, %5[] : memref<i64>
    %6 = memref.get_global @var_1 : memref<i64>
    memref.store %c0_i64, %6[] : memref<i64>
    %7 = memref.get_global @var_2 : memref<f64>
    memref.store %cst, %7[] : memref<f64>
    %8 = memref.get_global @var_3 : memref<f64>
    memref.store %cst, %8[] : memref<f64>
    %9 = memref.get_global @var_4 : memref<f64>
    memref.store %cst, %9[] : memref<f64>
    %10 = memref.get_global @var_5 : memref<f64>
    memref.store %cst, %10[] : memref<f64>
    %11 = memref.get_global @var_6 : memref<f64>
    memref.store %cst, %11[] : memref<f64>
    %12 = memref.get_global @var_7 : memref<f64>
    memref.store %cst, %12[] : memref<f64>
    %13 = memref.get_global @var_8 : memref<f64>
    memref.store %cst, %13[] : memref<f64>
    %14 = memref.get_global @var_9 : memref<f64>
    memref.store %cst, %14[] : memref<f64>
    %15 = memref.get_global @var_10 : memref<f64>
    memref.store %cst, %15[] : memref<f64>
    %16 = memref.get_global @var_11 : memref<f64>
    memref.store %cst, %16[] : memref<f64>
    %17 = memref.get_global @var_12 : memref<f64>
    memref.store %cst, %17[] : memref<f64>
    %18 = memref.get_global @var_13 : memref<f64>
    memref.store %cst, %18[] : memref<f64>
    %19 = memref.get_global @var_14 : memref<f64>
    memref.store %cst, %19[] : memref<f64>
    %20 = memref.get_global @var_15 : memref<f64>
    memref.store %cst, %20[] : memref<f64>
    %21 = memref.get_global @var_16 : memref<f64>
    memref.store %cst, %21[] : memref<f64>
    %22 = memref.get_global @var_17 : memref<f64>
    memref.store %cst, %22[] : memref<f64>
    %23 = memref.get_global @var_18 : memref<f64>
    memref.store %cst, %23[] : memref<f64>
    %24 = memref.get_global @var_19 : memref<4xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<4xf64>
    memref.copy %3, %alloc : memref<4xf64> to memref<4xf64>
    memref.copy %alloc, %24 : memref<4xf64> to memref<4xf64>
    %25 = memref.get_global @var_20 : memref<3x4x6xf64>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_0 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_0, %25 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %26 = memref.get_global @var_21 : memref<3x4x7xf64>
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<3x4x7xf64>
    memref.copy %1, %alloc_1 : memref<3x4x7xf64> to memref<3x4x7xf64>
    memref.copy %alloc_1, %26 : memref<3x4x7xf64> to memref<3x4x7xf64>
    %27 = memref.get_global @var_22 : memref<3x4x7xf64>
    %alloc_2 = memref.alloc() {alignment = 64 : i64} : memref<3x4x7xf64>
    memref.copy %1, %alloc_2 : memref<3x4x7xf64> to memref<3x4x7xf64>
    memref.copy %alloc_2, %27 : memref<3x4x7xf64> to memref<3x4x7xf64>
    %28 = memref.get_global @var_23 : memref<3xf64>
    %alloc_3 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    memref.copy %0, %alloc_3 : memref<3xf64> to memref<3xf64>
    memref.copy %alloc_3, %28 : memref<3xf64> to memref<3xf64>
    %29 = memref.get_global @var_24 : memref<3x4x6xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_4 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_4, %29 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %30 = memref.get_global @var_25 : memref<3x4x6xf64>
    %alloc_5 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_5 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_5, %30 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %31 = memref.get_global @var_26 : memref<3xf64>
    %alloc_6 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    memref.copy %0, %alloc_6 : memref<3xf64> to memref<3xf64>
    memref.copy %alloc_6, %31 : memref<3xf64> to memref<3xf64>
    %32 = memref.get_global @var_27 : memref<3x4x6xf64>
    %alloc_7 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_7 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_7, %32 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %33 = memref.get_global @var_28 : memref<3xf64>
    %alloc_8 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    memref.copy %0, %alloc_8 : memref<3xf64> to memref<3xf64>
    memref.copy %alloc_8, %33 : memref<3xf64> to memref<3xf64>
    %34 = memref.get_global @var_29 : memref<3x4x6xf64>
    %alloc_9 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_9 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_9, %34 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %35 = memref.get_global @var_30 : memref<3xf64>
    %alloc_10 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    memref.copy %0, %alloc_10 : memref<3xf64> to memref<3xf64>
    memref.copy %alloc_10, %35 : memref<3xf64> to memref<3xf64>
    %36 = memref.get_global @var_31 : memref<3xf64>
    %alloc_11 = memref.alloc() {alignment = 64 : i64} : memref<3xf64>
    memref.copy %0, %alloc_11 : memref<3xf64> to memref<3xf64>
    memref.copy %alloc_11, %36 : memref<3xf64> to memref<3xf64>
    %37 = memref.get_global @var_32 : memref<3x4x6xf64>
    %alloc_12 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_12 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_12, %37 : memref<3x4x6xf64> to memref<3x4x6xf64>
    %38 = memref.get_global @var_33 : memref<3x4x6xf64>
    %alloc_13 = memref.alloc() {alignment = 64 : i64} : memref<3x4x6xf64>
    memref.copy %2, %alloc_13 : memref<3x4x6xf64> to memref<3x4x6xf64>
    memref.copy %alloc_13, %38 : memref<3x4x6xf64> to memref<3x4x6xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<4xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<3x4x7xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_2 : memref<3x4x7xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_3 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_4 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_5 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_6 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_7 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_8 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_9 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_10 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_11 : memref<3xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_12 : memref<3x4x6xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_13 : memref<3x4x6xf64>
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
