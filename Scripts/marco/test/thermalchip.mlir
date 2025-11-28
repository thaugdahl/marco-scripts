module attributes {dlti.dl_spec = #dlti.dl_spec<"dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64, !bmodelica.int = ["size", 64], !bmodelica.real = ["size", 64], !llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  memref.global "private" constant @__constant_15x15x5xf64 : memref<15x15x5xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_15x15xf64 : memref<15x15xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" constant @__constant_15x7xf64 : memref<15x7xf64> = dense<0.000000e+00> {alignment = 64 : i64}
  memref.global "private" @time : memref<f64> = uninitialized
  memref.global "private" @var : memref<15x15x5xf64> = uninitialized memref.global "private" @var_0 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_1 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_2 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_3 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_4 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_5 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_6 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_7 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_8 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_9 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_10 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_11 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_12 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @var_13 : memref<15x15xf64> = uninitialized
  memref.global "private" @var_14 : memref<15x15xf64> = uninitialized
  memref.global "private" @var_15 : memref<f64> = uninitialized
  memref.global "private" @var_16 : memref<f64> = uninitialized
  memref.global "private" @var_17 : memref<f64> = uninitialized
  memref.global "private" @var_18 : memref<f64> = uninitialized
  memref.global "private" @var_19 : memref<f64> = uninitialized
  memref.global "private" @var_20 : memref<f64> = uninitialized
  memref.global "private" @var_21 : memref<f64> = uninitialized
  memref.global "private" @var_22 : memref<f64> = uninitialized
  memref.global "private" @var_23 : memref<15x7xf64> = uninitialized
  memref.global "private" @var_24 : memref<15x7xf64> = uninitialized
  memref.global "private" @var_25 : memref<15x15x5xf64> = uninitialized
  memref.global "private" @timeStep : memref<f64> = uninitialized
  func.func @euler_state_update_vol.T(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %0 = memref.get_global @timeStep : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    %2 = memref.get_global @var_12 : memref<15x15x5xf64>
    %3 = memref.get_global @var_25 : memref<15x15x5xf64>
    affine.for %arg6 = %arg0 to %arg1 {
      affine.for %arg7 = %arg2 to %arg3 {
        affine.for %arg8 = %arg4 to %arg5 {
          %4 = memref.load %2[%arg6, %arg7, %arg8] : memref<15x15x5xf64>
          %5 = memref.load %3[%arg6, %arg7, %arg8] : memref<15x15x5xf64>
          %6 = arith.mulf %5, %1 : f64
          %7 = arith.addf %4, %6 : f64
          memref.store %7, %2[%arg6, %arg7, %arg8] : memref<15x15x5xf64>
        }
      }
    }
    return
  }
  func.func @equation(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %cst = arith.constant 3.131500e+02 : f64
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_14 : memref<15x15xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %1 = affine.apply affine_map<()[s0, s1] -> (s0 * 15 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<15x15xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_0() {
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c0, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_15 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_1() {
    %c14 = arith.constant 14 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c14, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_16 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_2() {
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c14, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_17 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_3() {
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c0, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_18 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_4() {
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c0, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_19 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_5() {
    %c4 = arith.constant 4 : index
    %c14 = arith.constant 14 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c14, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_20 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_6() {
    %c4 = arith.constant 4 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c14, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_21 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_7() {
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c0, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_22 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_8(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %cst = arith.constant 0.88888888888888883 : f64
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_24 : memref<15x7xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %1 = affine.apply affine_map<()[s0, s1] -> (s0 * 7 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<15x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_9(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %3 = arith.addi %arg8, %c-1 : index
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%1, %2, %3]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%4], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_10(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %3 = arith.addi %arg8, %c-1 : index
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%1, %2, %3]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%4], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_11(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5 + 4)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_12(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 + 70)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_13(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_14(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 5 + s1 + 1050)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_15(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 5 + s1)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_16(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_0 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-2 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_17(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_2 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.index_cast %arg6 : index to i64
      %3 = arith.addi %2, %c-2_i64 : i64
      %4 = arith.index_cast %3 : i64 to index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %8 = arith.addi %arg8, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%5, %7, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %6, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_18(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_1 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_19(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_1 : memref<15x15x5xf64>
    %1 = memref.get_global @var : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %3 = arith.addi %arg7, %c-1 : index
        %4 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.load %0[%2, %3, %5] : memref<15x15x5xf64>
          %7 = arith.addi %arg8, %c-1 : index
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%arg6, %4, %7]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_20(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_1 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_21(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_4 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-2 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_22(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    %1 = memref.get_global @var_6 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.index_cast %arg7 : index to i64
        %5 = arith.addi %4, %c-2_i64 : i64
        %6 = arith.index_cast %5 : i64 to index
        %7 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %8 = arith.addi %arg8, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %7, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%2, %6, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_23(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_5 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_24(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_5 : memref<15x15x5xf64>
    %1 = memref.get_global @var_3 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.load %0[%2, %4, %5] : memref<15x15x5xf64>
          %7 = arith.addi %arg8, %c-1 : index
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %arg7, %7]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_25(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_5 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_26(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_14 : memref<15x15xf64>
    %1 = memref.get_global @var_13 : memref<15x15xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = memref.load %0[%arg4, %arg5] : memref<15x15xf64>
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 15 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%3], sizes: [], strides: [] : memref<15x15xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %2, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_27(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_13 : memref<15x15xf64>
    %1 = memref.get_global @var_7 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = memref.load %0[%2, %4] : memref<15x15xf64>
        %6 = arith.addi %arg5, %c-1 : index
        %7 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5)>()[%3, %6]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%7], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %5, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_28(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_8 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-2 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_29(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_8 : memref<15x15x5xf64>
    %1 = memref.get_global @var_10 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        %5 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %6 = arith.index_cast %arg8 : index to i64
          %7 = arith.addi %6, %c-2_i64 : i64
          %8 = arith.index_cast %7 : i64 to index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %5, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%2, %4, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_30(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_9 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_31(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_9 : memref<15x15x5xf64>
    %1 = memref.get_global @var_7 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        %5 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %6 = arith.addi %arg8, %c-1 : index
          %7 = memref.load %0[%2, %4, %6] : memref<15x15x5xf64>
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %5, %arg8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_32(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_9 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_33(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_7 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_8 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.subf %11, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_34(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_24 : memref<15x7xf64>
    %1 = memref.get_global @var_23 : memref<15x7xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = arith.addi %arg5, %c-1 : index
        %6 = memref.load %0[%3, %5] : memref<15x7xf64>
        %7 = arith.negf %6 : f64
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 7 + s1)>()[%2, %4]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_35(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_23 : memref<15x7xf64>
    %1 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = memref.load %0[%2, %4] : memref<15x7xf64>
        %6 = arith.addi %arg5, %c-1 : index
        %7 = arith.subf %cst, %5 : f64
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5 + 4)>()[%3, %6]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_36(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_3 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_37(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_38(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 8.3471360000000026E-4 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_2 : memref<15x15x5xf64>
    %2 = memref.get_global @var_4 : memref<15x15x5xf64>
    %3 = memref.get_global @var_6 : memref<15x15x5xf64>
    %4 = memref.get_global @var_8 : memref<15x15x5xf64>
    %5 = memref.get_global @var_10 : memref<15x15x5xf64>
    %6 = memref.get_global @var_11 : memref<15x15x5xf64>
    %7 = memref.get_global @var_25 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %8 = arith.addi %arg6, %c-1 : index
      %9 = arith.addi %arg6, %c-1 : index
      %10 = arith.addi %arg6, %c-1 : index
      %11 = arith.addi %arg6, %c-1 : index
      %12 = arith.addi %arg6, %c-1 : index
      %13 = arith.addi %arg6, %c-1 : index
      %14 = arith.addi %arg6, %c-1 : index
      %15 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %16 = arith.addi %arg7, %c-1 : index
        %17 = arith.addi %arg7, %c-1 : index
        %18 = arith.addi %arg7, %c-1 : index
        %19 = arith.addi %arg7, %c-1 : index
        %20 = arith.addi %arg7, %c-1 : index
        %21 = arith.addi %arg7, %c-1 : index
        %22 = arith.addi %arg7, %c-1 : index
        %23 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %24 = arith.addi %arg8, %c-1 : index
          %25 = arith.addi %arg8, %c-1 : index
          %26 = memref.load %0[%9, %17, %25] : memref<15x15x5xf64>
          %27 = arith.addi %arg8, %c-1 : index
          %28 = memref.load %1[%10, %18, %27] : memref<15x15x5xf64>
          %29 = arith.addf %26, %28 : f64
          %30 = arith.addi %arg8, %c-1 : index
          %31 = memref.load %2[%11, %19, %30] : memref<15x15x5xf64>
          %32 = arith.addf %29, %31 : f64
          %33 = arith.addi %arg8, %c-1 : index
          %34 = memref.load %3[%12, %20, %33] : memref<15x15x5xf64>
          %35 = arith.addf %32, %34 : f64
          %36 = arith.addi %arg8, %c-1 : index
          %37 = memref.load %4[%13, %21, %36] : memref<15x15x5xf64>
          %38 = arith.addf %35, %37 : f64
          %39 = arith.addi %arg8, %c-1 : index
          %40 = memref.load %5[%14, %22, %39] : memref<15x15x5xf64>
          %41 = arith.addf %38, %40 : f64
          %42 = arith.addi %arg8, %c-1 : index
          %43 = memref.load %6[%15, %23, %42] : memref<15x15x5xf64>
          %44 = arith.addf %41, %43 : f64
          %45 = arith.divf %44, %cst : f64
          %46 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%8, %16, %24]
          %reinterpret_cast = memref.reinterpret_cast %7 to offset: [%46], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %45, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_39(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %cst = arith.constant 3.131500e+02 : f64
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_14 : memref<15x15xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %1 = affine.apply affine_map<()[s0, s1] -> (s0 * 15 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<15x15xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_40(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %cst = arith.constant 3.131500e+02 : f64
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %1 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%arg6, %arg7, %arg8]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_41() {
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c0, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_15 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_42() {
    %c14 = arith.constant 14 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c14, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_16 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_43() {
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c14, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_17 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_44() {
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c0, %c0] : memref<15x15x5xf64>
    %2 = memref.get_global @var_18 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_45() {
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c0, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_19 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_46() {
    %c4 = arith.constant 4 : index
    %c14 = arith.constant 14 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c0, %c14, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_20 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_47() {
    %c4 = arith.constant 4 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c14, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_21 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_48() {
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c14 = arith.constant 14 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.load %0[%c14, %c0, %c4] : memref<15x15x5xf64>
    %2 = memref.get_global @var_22 : memref<f64>
    memref.store %1, %2[] : memref<f64>
    return
  }
  func.func @equation_49(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %cst = arith.constant 0.88888888888888883 : f64
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_24 : memref<15x7xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %1 = affine.apply affine_map<()[s0, s1] -> (s0 * 7 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%1], sizes: [], strides: [] : memref<15x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_50(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %3 = arith.addi %arg8, %c-1 : index
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%1, %2, %3]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%4], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_51(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %3 = arith.addi %arg8, %c-1 : index
          %4 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%1, %2, %3]
          %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%4], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_52(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5 + 4)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_53(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 + 70)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_54(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_55(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 5 + s1 + 1050)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_56(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %1 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = arith.addi %arg5, %c-1 : index
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 5 + s1)>()[%1, %2]
        %reinterpret_cast = memref.reinterpret_cast %0 to offset: [%3], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %cst, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_57(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_0 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-2 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_58(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_2 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.index_cast %arg6 : index to i64
      %3 = arith.addi %2, %c-2_i64 : i64
      %4 = arith.index_cast %3 : i64 to index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %8 = arith.addi %arg8, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%5, %7, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %6, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_59(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_1 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_60(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_1 : memref<15x15x5xf64>
    %1 = memref.get_global @var : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %3 = arith.addi %arg7, %c-1 : index
        %4 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.load %0[%2, %3, %5] : memref<15x15x5xf64>
          %7 = arith.addi %arg8, %c-1 : index
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%arg6, %4, %7]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_61(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_2 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_1 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_62(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_4 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-2 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_63(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    %1 = memref.get_global @var_6 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.index_cast %arg7 : index to i64
        %5 = arith.addi %4, %c-2_i64 : i64
        %6 = arith.index_cast %5 : i64 to index
        %7 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %8 = arith.addi %arg8, %c-1 : index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %7, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%2, %6, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_64(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_5 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_65(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_5 : memref<15x15x5xf64>
    %1 = memref.get_global @var_3 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %5 = arith.addi %arg8, %c-1 : index
          %6 = memref.load %0[%2, %4, %5] : memref<15x15x5xf64>
          %7 = arith.addi %arg8, %c-1 : index
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %arg7, %7]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %6, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_66(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_6 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_5 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_67(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %0 = memref.get_global @var_14 : memref<15x15xf64>
    %1 = memref.get_global @var_13 : memref<15x15xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %2 = memref.load %0[%arg4, %arg5] : memref<15x15xf64>
        %3 = affine.apply affine_map<()[s0, s1] -> (s0 * 15 + s1)>()[%arg4, %arg5]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%3], sizes: [], strides: [] : memref<15x15xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %2, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_68(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_13 : memref<15x15xf64>
    %1 = memref.get_global @var_7 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = memref.load %0[%2, %4] : memref<15x15xf64>
        %6 = arith.addi %arg5, %c-1 : index
        %7 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5)>()[%3, %6]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%7], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %5, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_69(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2 = arith.constant -2 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_12 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_8 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-2 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.mulf %11, %cst_1 : f64
          %15 = arith.negf %13 : f64
          %16 = arith.mulf %15, %cst_1 : f64
          %17 = arith.addf %14, %cst : f64
          %18 = arith.addf %17, %16 : f64
          %19 = arith.divf %18, %cst_0 : f64
          %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%20], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %19, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_70(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c-2_i64 = arith.constant -2 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_8 : memref<15x15x5xf64>
    %1 = memref.get_global @var_10 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        %5 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %6 = arith.index_cast %arg8 : index to i64
          %7 = arith.addi %6, %c-2_i64 : i64
          %8 = arith.index_cast %7 : i64 to index
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %5, %9] : memref<15x15x5xf64>
          %11 = arith.subf %cst, %10 : f64
          %12 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%2, %4, %8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%12], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %11, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_71(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_9 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_72(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_9 : memref<15x15x5xf64>
    %1 = memref.get_global @var_7 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg6, %c-1 : index
      %3 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg7, %c-1 : index
        %5 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %6 = arith.addi %arg8, %c-1 : index
          %7 = memref.load %0[%2, %4, %6] : memref<15x15x5xf64>
          %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %5, %arg8]
          %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_73(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_10 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_9 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_74(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_7 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_8 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %0[%4, %7, %10] : memref<15x15x5xf64>
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.subf %11, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%3, %6, %9]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_75(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_24 : memref<15x7xf64>
    %1 = memref.get_global @var_23 : memref<15x7xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = arith.addi %arg5, %c-1 : index
        %6 = memref.load %0[%3, %5] : memref<15x7xf64>
        %7 = arith.negf %6 : f64
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 7 + s1)>()[%2, %4]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x7xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_76(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_23 : memref<15x7xf64>
    %1 = memref.get_global @var_11 : memref<15x15x5xf64>
    scf.for %arg4 = %arg0 to %arg1 step %c1 {
      %2 = arith.addi %arg4, %c-1 : index
      %3 = arith.addi %arg4, %c-1 : index
      scf.for %arg5 = %arg2 to %arg3 step %c1 {
        %4 = arith.addi %arg5, %c-1 : index
        %5 = memref.load %0[%2, %4] : memref<15x7xf64>
        %6 = arith.addi %arg5, %c-1 : index
        %7 = arith.subf %cst, %5 : f64
        %8 = affine.apply affine_map<()[s0, s1] -> (s0 * 75 + s1 * 5 + 4)>()[%3, %6]
        %reinterpret_cast = memref.reinterpret_cast %1 to offset: [%8], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
        memref.store %7, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
      }
    }
    return
  }
  func.func @equation_77(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_4 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var_3 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_78(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.23680000000000004 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_12 : memref<15x15x5xf64>
    %2 = memref.get_global @var : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %3 = arith.addi %arg6, %c-1 : index
      %4 = arith.addi %arg6, %c-1 : index
      %5 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %6 = arith.addi %arg7, %c-1 : index
        %7 = arith.addi %arg7, %c-1 : index
        %8 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %9 = arith.addi %arg8, %c-1 : index
          %10 = memref.load %0[%3, %6, %9] : memref<15x15x5xf64>
          %11 = arith.addi %arg8, %c-1 : index
          %12 = arith.addi %arg8, %c-1 : index
          %13 = memref.load %1[%5, %8, %12] : memref<15x15x5xf64>
          %14 = arith.divf %10, %cst : f64
          %15 = arith.addf %14, %13 : f64
          %16 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%4, %7, %11]
          %reinterpret_cast = memref.reinterpret_cast %2 to offset: [%16], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %15, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @equation_79(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 8.3471360000000026E-4 : f64
    %c-1 = arith.constant -1 : index
    %0 = memref.get_global @var_0 : memref<15x15x5xf64>
    %1 = memref.get_global @var_2 : memref<15x15x5xf64>
    %2 = memref.get_global @var_4 : memref<15x15x5xf64>
    %3 = memref.get_global @var_6 : memref<15x15x5xf64>
    %4 = memref.get_global @var_8 : memref<15x15x5xf64>
    %5 = memref.get_global @var_10 : memref<15x15x5xf64>
    %6 = memref.get_global @var_11 : memref<15x15x5xf64>
    %7 = memref.get_global @var_25 : memref<15x15x5xf64>
    scf.for %arg6 = %arg0 to %arg1 step %c1 {
      %8 = arith.addi %arg6, %c-1 : index
      %9 = arith.addi %arg6, %c-1 : index
      %10 = arith.addi %arg6, %c-1 : index
      %11 = arith.addi %arg6, %c-1 : index
      %12 = arith.addi %arg6, %c-1 : index
      %13 = arith.addi %arg6, %c-1 : index
      %14 = arith.addi %arg6, %c-1 : index
      %15 = arith.addi %arg6, %c-1 : index
      scf.for %arg7 = %arg2 to %arg3 step %c1 {
        %16 = arith.addi %arg7, %c-1 : index
        %17 = arith.addi %arg7, %c-1 : index
        %18 = arith.addi %arg7, %c-1 : index
        %19 = arith.addi %arg7, %c-1 : index
        %20 = arith.addi %arg7, %c-1 : index
        %21 = arith.addi %arg7, %c-1 : index
        %22 = arith.addi %arg7, %c-1 : index
        %23 = arith.addi %arg7, %c-1 : index
        scf.for %arg8 = %arg4 to %arg5 step %c1 {
          %24 = arith.addi %arg8, %c-1 : index
          %25 = arith.addi %arg8, %c-1 : index
          %26 = memref.load %0[%9, %17, %25] : memref<15x15x5xf64>
          %27 = arith.addi %arg8, %c-1 : index
          %28 = memref.load %1[%10, %18, %27] : memref<15x15x5xf64>
          %29 = arith.addf %26, %28 : f64
          %30 = arith.addi %arg8, %c-1 : index
          %31 = memref.load %2[%11, %19, %30] : memref<15x15x5xf64>
          %32 = arith.addf %29, %31 : f64
          %33 = arith.addi %arg8, %c-1 : index
          %34 = memref.load %3[%12, %20, %33] : memref<15x15x5xf64>
          %35 = arith.addf %32, %34 : f64
          %36 = arith.addi %arg8, %c-1 : index
          %37 = memref.load %4[%13, %21, %36] : memref<15x15x5xf64>
          %38 = arith.addf %35, %37 : f64
          %39 = arith.addi %arg8, %c-1 : index
          %40 = memref.load %5[%14, %22, %39] : memref<15x15x5xf64>
          %41 = arith.addf %38, %40 : f64
          %42 = arith.addi %arg8, %c-1 : index
          %43 = memref.load %6[%15, %23, %42] : memref<15x15x5xf64>
          %44 = arith.addf %41, %43 : f64
          %45 = arith.divf %44, %cst : f64
          %46 = affine.apply affine_map<()[s0, s1, s2] -> (s0 * 75 + s1 * 5 + s2)>()[%8, %16, %24]
          %reinterpret_cast = memref.reinterpret_cast %7 to offset: [%46], sizes: [], strides: [] : memref<15x15x5xf64> to memref<f64, strided<[], offset: ?>>
          memref.store %45, %reinterpret_cast[] : memref<f64, strided<[], offset: ?>>
        }
      }
    }
    return
  }
  func.func @ThermalChipSimpleBoundary_dynamic() {
    %c2 = arith.constant 2 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    call @equation(%c0, %c15, %c0, %c15) : (index, index, index, index) -> ()
    call @equation_0() : () -> ()
    call @equation_1() : () -> ()
    call @equation_2() : () -> ()
    call @equation_3() : () -> ()
    call @equation_4() : () -> ()
    call @equation_5() : () -> ()
    call @equation_6() : () -> ()
    call @equation_7() : () -> ()
    call @equation_8(%c0, %c15, %c0, %c7) : (index, index, index, index) -> ()
    call @equation_9(%c1, %c16, %c8, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_10(%c1, %c16, %c1, %c8, %c1, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_11(%c1, %c16, %c1, %c16) : (index, index, index, index) -> ()
    call @equation_12(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_13(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_14(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_15(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_16(%c2, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_21(%c1, %c16, %c2, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_28(%c1, %c16, %c1, %c16, %c2, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_26(%c0, %c15, %c0, %c15) : (index, index, index, index) -> ()
    call @equation_34(%c1, %c16, %c1, %c8) : (index, index, index, index) -> ()
    call @equation_32(%c1, %c16, %c1, %c16, %c5, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_25(%c1, %c16, %c15, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_36(%c1, %c16, %c1, %c2, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_20(%c15, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_37(%c1, %c2, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_17(%c2, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_22(%c1, %c16, %c2, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_29(%c1, %c16, %c1, %c16, %c2, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_27(%c1, %c16, %c1, %c16) : (index, index, index, index) -> ()
    call @equation_35(%c1, %c16, %c1, %c8) : (index, index, index, index) -> ()
    call @equation_18(%c1, %c15, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_23(%c1, %c16, %c1, %c15, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_30(%c1, %c16, %c1, %c16, %c1, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_33(%c1, %c16, %c1, %c16, %c1, %c2) : (index, index, index, index, index, index) -> ()
    call @equation_19(%c1, %c15, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_24(%c1, %c16, %c1, %c15, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_31(%c1, %c16, %c1, %c16, %c1, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_38(%c1, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    return
  }
  func.func @ThermalChipSimpleBoundary_schedule_state_variables() {
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    %c5 = arith.constant 5 : index
    call @euler_state_update_vol.T(%c0, %c15, %c0, %c15, %c0, %c5) : (index, index, index, index, index, index) -> ()
    return
  }
  func.func @ThermalChipSimpleBoundary_ic() {
    %c2 = arith.constant 2 : index
    %c6 = arith.constant 6 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c7 = arith.constant 7 : index
    %c5 = arith.constant 5 : index
    %c0 = arith.constant 0 : index
    %c15 = arith.constant 15 : index
    call @equation_39(%c0, %c15, %c0, %c15) : (index, index, index, index) -> ()
    call @equation_40(%c0, %c15, %c0, %c15, %c0, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_49(%c0, %c15, %c0, %c7) : (index, index, index, index) -> ()
    call @equation_50(%c1, %c16, %c8, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_51(%c1, %c16, %c1, %c8, %c1, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_52(%c1, %c16, %c1, %c16) : (index, index, index, index) -> ()
    call @equation_53(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_54(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_55(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_56(%c1, %c16, %c1, %c6) : (index, index, index, index) -> ()
    call @equation_67(%c0, %c15, %c0, %c15) : (index, index, index, index) -> ()
    call @equation_41() : () -> ()
    call @equation_42() : () -> ()
    call @equation_43() : () -> ()
    call @equation_44() : () -> ()
    call @equation_45() : () -> ()
    call @equation_46() : () -> ()
    call @equation_47() : () -> ()
    call @equation_48() : () -> ()
    call @equation_57(%c2, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_62(%c1, %c16, %c2, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_69(%c1, %c16, %c1, %c16, %c2, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_75(%c1, %c16, %c1, %c8) : (index, index, index, index) -> ()
    call @equation_73(%c1, %c16, %c1, %c16, %c5, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_66(%c1, %c16, %c15, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_77(%c1, %c16, %c1, %c2, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_61(%c15, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_78(%c1, %c2, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_68(%c1, %c16, %c1, %c16) : (index, index, index, index) -> ()
    call @equation_58(%c2, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_63(%c1, %c16, %c2, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_70(%c1, %c16, %c1, %c16, %c2, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_76(%c1, %c16, %c1, %c8) : (index, index, index, index) -> ()
    call @equation_74(%c1, %c16, %c1, %c16, %c1, %c2) : (index, index, index, index, index, index) -> ()
    call @equation_59(%c1, %c15, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_64(%c1, %c16, %c1, %c15, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_71(%c1, %c16, %c1, %c16, %c1, %c5) : (index, index, index, index, index, index) -> ()
    call @equation_79(%c1, %c16, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_60(%c1, %c15, %c1, %c16, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_65(%c1, %c16, %c1, %c15, %c1, %c6) : (index, index, index, index, index, index) -> ()
    call @equation_72(%c1, %c16, %c1, %c16, %c1, %c5) : (index, index, index, index, index, index) -> ()
    return
  }
  runtime.model_name "ThermalChipSimpleBoundary"
  runtime.number_of_variables 27
  runtime.variable_names ["vol.upper.T", "vol.upper.Q", "vol.lower.T", "vol.lower.Q", "vol.left.T", "vol.left.Q", "vol.right.T", "vol.right.Q", "vol.top.T", "vol.top.Q", "vol.bottom.T", "vol.bottom.Q", "vol.center.Q", "vol.T", "Tsource.port.T", "Tsource.T", "Tct1", "Tct2", "Tct3", "Tct4", "Tcb1", "Tcb2", "Tcb3", "Tcb4", "Qsource.port.Q", "Qsource.Q", "der_vol.T"]
  runtime.variable_ranks [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 3]
  runtime.printable_indices [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, true, true, true, true, true, true, true, true, {}, {}, {}]
  runtime.derivatives_map [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]
  func.func @var_getter_0(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_1(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_0 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_2(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_1 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_3(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_2 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_4(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_3 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_5(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_4 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_6(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_5 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_7(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_6 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_8(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_7 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_9(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_8 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_10(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_9 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_11(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_10 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_12(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_11 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_13(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = llvm.getelementptr %arg0[2] : (!llvm.ptr) -> !llvm.ptr, i64
    %6 = llvm.load %5 : !llvm.ptr -> i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = memref.get_global @var_12 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  func.func @var_getter_14(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = memref.get_global @var_13 : memref<15x15xf64>
    %6 = memref.load %5[%1, %4] : memref<15x15xf64>
    return %6 : f64
  }
  func.func @var_getter_15(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = memref.get_global @var_14 : memref<15x15xf64>
    %6 = memref.load %5[%1, %4] : memref<15x15xf64>
    return %6 : f64
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
    %0 = memref.get_global @var_19 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_21(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_20 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_22(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_21 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_23(%arg0: !llvm.ptr) -> f64 {
    %0 = memref.get_global @var_22 : memref<f64>
    %1 = memref.load %0[] : memref<f64>
    return %1 : f64
  }
  func.func @var_getter_24(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = memref.get_global @var_23 : memref<15x7xf64>
    %6 = memref.load %5[%1, %4] : memref<15x7xf64>
    return %6 : f64
  }
  func.func @var_getter_25(%arg0: !llvm.ptr) -> f64 {
    %0 = llvm.load %arg0 : !llvm.ptr -> i64
    %1 = arith.index_cast %0 : i64 to index
    %2 = llvm.getelementptr %arg0[1] : (!llvm.ptr) -> !llvm.ptr, i64
    %3 = llvm.load %2 : !llvm.ptr -> i64
    %4 = arith.index_cast %3 : i64 to index
    %5 = memref.get_global @var_24 : memref<15x7xf64>
    %6 = memref.load %5[%1, %4] : memref<15x7xf64>
    return %6 : f64
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
    %8 = memref.get_global @var_25 : memref<15x15x5xf64>
    %9 = memref.load %8[%1, %4, %7] : memref<15x15x5xf64>
    return %9 : f64
  }
  runtime.variable_getters [@var_getter_0, @var_getter_1, @var_getter_2, @var_getter_3, @var_getter_4, @var_getter_5, @var_getter_6, @var_getter_7, @var_getter_8, @var_getter_9, @var_getter_10, @var_getter_11, @var_getter_12, @var_getter_13, @var_getter_14, @var_getter_15, @var_getter_16, @var_getter_17, @var_getter_18, @var_getter_19, @var_getter_20, @var_getter_21, @var_getter_22, @var_getter_23, @var_getter_24, @var_getter_25, @var_getter_26]
  // func.func @updateNonStateVariables() {
  //   call @ThermalChipSimpleBoundary_dynamic() : () -> ()
  //   return
  // }
  func.func @updateStateVariables(%arg0: f64) {
    %0 = memref.get_global @timeStep : memref<f64>
    memref.store %arg0, %0[] : memref<f64>
    call @ThermalChipSimpleBoundary_schedule_state_variables() : () -> ()
    return
  }
  func.func @solveICModel() {
    call @ThermalChipSimpleBoundary_ic() : () -> ()
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
    %0 = memref.get_global @__constant_15x7xf64 : memref<15x7xf64>
    %1 = memref.get_global @__constant_15x15xf64 : memref<15x15xf64>
    %2 = memref.get_global @__constant_15x15x5xf64 : memref<15x15x5xf64>
    %3 = memref.get_global @var : memref<15x15x5xf64>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc, %3 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %4 = memref.get_global @var_0 : memref<15x15x5xf64>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_0 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_0, %4 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %5 = memref.get_global @var_1 : memref<15x15x5xf64>
    %alloc_1 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_1 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_1, %5 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %6 = memref.get_global @var_2 : memref<15x15x5xf64>
    %alloc_2 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_2 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_2, %6 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %7 = memref.get_global @var_3 : memref<15x15x5xf64>
    %alloc_3 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_3 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_3, %7 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %8 = memref.get_global @var_4 : memref<15x15x5xf64>
    %alloc_4 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_4 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_4, %8 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %9 = memref.get_global @var_5 : memref<15x15x5xf64>
    %alloc_5 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_5 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_5, %9 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %10 = memref.get_global @var_6 : memref<15x15x5xf64>
    %alloc_6 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_6 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_6, %10 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %11 = memref.get_global @var_7 : memref<15x15x5xf64>
    %alloc_7 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_7 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_7, %11 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %12 = memref.get_global @var_8 : memref<15x15x5xf64>
    %alloc_8 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_8 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_8, %12 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %13 = memref.get_global @var_9 : memref<15x15x5xf64>
    %alloc_9 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_9 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_9, %13 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %14 = memref.get_global @var_10 : memref<15x15x5xf64>
    %alloc_10 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_10 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_10, %14 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %15 = memref.get_global @var_11 : memref<15x15x5xf64>
    %alloc_11 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_11 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_11, %15 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %16 = memref.get_global @var_12 : memref<15x15x5xf64>
    %alloc_12 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_12 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_12, %16 : memref<15x15x5xf64> to memref<15x15x5xf64>
    %17 = memref.get_global @var_13 : memref<15x15xf64>
    %alloc_13 = memref.alloc() {alignment = 64 : i64} : memref<15x15xf64>
    memref.copy %1, %alloc_13 : memref<15x15xf64> to memref<15x15xf64>
    memref.copy %alloc_13, %17 : memref<15x15xf64> to memref<15x15xf64>
    %18 = memref.get_global @var_14 : memref<15x15xf64>
    %alloc_14 = memref.alloc() {alignment = 64 : i64} : memref<15x15xf64>
    memref.copy %1, %alloc_14 : memref<15x15xf64> to memref<15x15xf64>
    memref.copy %alloc_14, %18 : memref<15x15xf64> to memref<15x15xf64>
    %19 = memref.get_global @var_15 : memref<f64>
    memref.store %cst, %19[] : memref<f64>
    %20 = memref.get_global @var_16 : memref<f64>
    memref.store %cst, %20[] : memref<f64>
    %21 = memref.get_global @var_17 : memref<f64>
    memref.store %cst, %21[] : memref<f64>
    %22 = memref.get_global @var_18 : memref<f64>
    memref.store %cst, %22[] : memref<f64>
    %23 = memref.get_global @var_19 : memref<f64>
    memref.store %cst, %23[] : memref<f64>
    %24 = memref.get_global @var_20 : memref<f64>
    memref.store %cst, %24[] : memref<f64>
    %25 = memref.get_global @var_21 : memref<f64>
    memref.store %cst, %25[] : memref<f64>
    %26 = memref.get_global @var_22 : memref<f64>
    memref.store %cst, %26[] : memref<f64>
    %27 = memref.get_global @var_23 : memref<15x7xf64>
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<15x7xf64>
    memref.copy %0, %alloca : memref<15x7xf64> to memref<15x7xf64>
    memref.copy %alloca, %27 : memref<15x7xf64> to memref<15x7xf64>
    %28 = memref.get_global @var_24 : memref<15x7xf64>
    %alloca_15 = memref.alloca() {alignment = 64 : i64} : memref<15x7xf64>
    memref.copy %0, %alloca_15 : memref<15x7xf64> to memref<15x7xf64>
    memref.copy %alloca_15, %28 : memref<15x7xf64> to memref<15x7xf64>
    %29 = memref.get_global @var_25 : memref<15x15x5xf64>
    %alloc_16 = memref.alloc() {alignment = 64 : i64} : memref<15x15x5xf64>
    memref.copy %2, %alloc_16 : memref<15x15x5xf64> to memref<15x15x5xf64>
    memref.copy %alloc_16, %29 : memref<15x15x5xf64> to memref<15x15x5xf64>
    scf.if %true {
      memref.dealloc %alloc : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_0 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_1 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_2 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_3 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_4 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_5 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_6 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_7 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_8 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_9 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_10 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_11 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_12 : memref<15x15x5xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_13 : memref<15x15xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_14 : memref<15x15xf64>
    }
    scf.if %true {
      memref.dealloc %alloc_16 : memref<15x15x5xf64>
    }
    return
  }

  func.func @main() {
    call @init() : () -> ()
    call @ThermalChipSimpleBoundary_ic() : () -> ()
    call @ThermalChipSimpleBoundary_dynamic() : () -> ()
    call @ThermalChipSimpleBoundary_dynamic() : () -> ()
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
