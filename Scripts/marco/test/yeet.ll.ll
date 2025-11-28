; ModuleID = 'yeet.ll'
source_filename = "MethanolHeatExchangers"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var_name_34 = internal constant [8 x i8] c"der_T_w\00"
@var_name_33 = internal constant [12 x i8] c"der_T_tilde\00"
@var_name_32 = internal constant [8 x i8] c"der_T_m\00"
@var_name_31 = internal constant [4 x i8] c"T_m\00"
@var_name_30 = internal constant [4 x i8] c"T_w\00"
@var_name_29 = internal constant [5 x i8] c"cv_m\00"
@var_name_28 = internal constant [3 x i8] c"cv\00"
@var_name_27 = internal constant [6 x i8] c"rho_m\00"
@var_name_26 = internal constant [4 x i8] c"rho\00"
@var_name_25 = internal constant [8 x i8] c"T_tilde\00"
@var_name_24 = internal constant [4 x i8] c"h_m\00"
@var_name_23 = internal constant [2 x i8] c"h\00"
@var_name_22 = internal constant [2 x i8] c"T\00"
@var_name_21 = internal constant [4 x i8] c"Q_c\00"
@var_name_20 = internal constant [2 x i8] c"Q\00"
@var_name_19 = internal constant [4 x i8] c"w_h\00"
@var_name_18 = internal constant [2 x i8] c"w\00"
@var_name_17 = internal constant [3 x i8] c"pi\00"
@var_name_16 = internal constant [5 x i8] c"C_wv\00"
@var_name_15 = internal constant [4 x i8] c"V_m\00"
@var_name_14 = internal constant [4 x i8] c"V_v\00"
@var_name_13 = internal constant [6 x i8] c"p_nom\00"
@var_name_12 = internal constant [3 x i8] c"Cw\00"
@var_name_11 = internal constant [6 x i8] c"alpha\00"
@var_name_10 = internal constant [7 x i8] c"UA_nom\00"
@var_name_9 = internal constant [5 x i8] c"beta\00"
@var_name_8 = internal constant [2 x i8] c"V\00"
@var_name_7 = internal constant [3 x i8] c"T0\00"
@var_name_6 = internal constant [4 x i8] c"f_Q\00"
@var_name_5 = internal constant [4 x i8] c"f_w\00"
@var_name_4 = internal constant [6 x i8] c"Q_nom\00"
@var_name_3 = internal constant [6 x i8] c"w_nom\00"
@var_name_2 = internal constant [3 x i8] c"Nv\00"
@var_name_1 = internal constant [3 x i8] c"Nh\00"
@var_name_0 = internal constant [3 x i8] c"Nu\00"
@var_name_unknown = internal constant [1 x i8] zeroinitializer
@modelName = internal constant [23 x i8] c"MethanolHeatExchangers\00"
@__constant_8xf64_0 = private unnamed_addr constant [8 x double] [double 0x400F34F61672324C, double 1.099290e+01, double 1.833710e+01, double -1.636630e+01, double -6.223340e+00, double 2.803580e+00, double 1.077830e+00, double 9.696700e-01], align 64
@__constant_8xf64 = private unnamed_addr constant [8 x double] [double 0.000000e+00, double 4.125750e+00, double 3.269730e+00, double 3.774920e+00, double 2.935740e+00, double 8.237470e+00, double 1.033120e+01, double 5.332600e-01], align 64
@time = private unnamed_addr global double undef
@var = private unnamed_addr global i64 undef
@var_0 = private unnamed_addr global i64 undef
@var_1 = private unnamed_addr global i64 undef
@var_2 = private unnamed_addr global double undef
@var_3 = private unnamed_addr global double undef
@var_4 = private unnamed_addr global double undef
@var_5 = private unnamed_addr global double undef
@var_6 = private unnamed_addr global double undef
@var_7 = private unnamed_addr global double undef
@var_8 = private unnamed_addr global double undef
@var_9 = private unnamed_addr global double undef
@var_10 = private unnamed_addr global double undef
@var_11 = private unnamed_addr global double undef
@var_12 = private unnamed_addr global double undef
@var_13 = private unnamed_addr global double undef
@var_14 = private unnamed_addr global double undef
@var_15 = private unnamed_addr global double undef
@var_16 = private unnamed_addr global double undef
@var_17 = private unnamed_addr global double undef
@var_18 = private unnamed_addr global double undef
@var_19 = private unnamed_addr global [4 x double] undef
@var_20 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_21 = private unnamed_addr global [3 x [4 x [7 x double]]] undef
@var_22 = private unnamed_addr global [3 x [4 x [7 x double]]] undef
@var_23 = private unnamed_addr global [3 x double] undef
@var_24 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_25 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_26 = private unnamed_addr global [3 x double] undef
@var_27 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_28 = private unnamed_addr global [3 x double] undef
@var_29 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_30 = private unnamed_addr global [3 x double] undef
@var_31 = private unnamed_addr global [3 x double] undef
@var_32 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@var_33 = private unnamed_addr global [3 x [4 x [6 x double]]] undef
@timeStep = private unnamed_addr global double undef
@switch.table.getVariableName.rel = private unnamed_addr constant [35 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_0 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_1 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_2 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_3 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_4 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_5 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_6 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_7 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_8 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_9 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_10 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_11 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_12 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_13 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_14 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_15 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_16 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_17 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_18 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_19 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_20 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_21 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_22 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_23 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_24 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_25 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_26 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_27 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_28 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_29 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_30 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_31 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_32 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_33 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @var_name_34 to i64), i64 ptrtoint (ptr @switch.table.getVariableName.rel to i64)) to i32)], align 4
@switch.table.getVariableRank = private unnamed_addr constant [15 x i64] [i64 1, i64 3, i64 3, i64 3, i64 1, i64 3, i64 3, i64 1, i64 3, i64 1, i64 3, i64 1, i64 1, i64 3, i64 3], align 8
@switch.table.getVariablePrintableRangeEnd = private unnamed_addr constant [3 x i64] [i64 3, i64 4, i64 6], align 8
@switch.table.getVariablePrintableRangeEnd.1 = private unnamed_addr constant [3 x i64] [i64 3, i64 4, i64 7], align 8
@switch.table.getDerivative = private unnamed_addr constant [7 x i64] [i64 33, i64 -1, i64 -1, i64 -1, i64 -1, i64 34, i64 32], align 8

declare void @marco_free(ptr) local_unnamed_addr

declare ptr @marco_malloc(i64) local_unnamed_addr

declare double @_Msin_f64_f64(double) local_unnamed_addr

declare double @_Mexp_f64_f64(double) local_unnamed_addr

declare double @_Mpow_f64_f64_f64(double, double) local_unnamed_addr

define double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %0) local_unnamed_addr {
  %2 = tail call ptr @marco_malloc(i64 64)
  %3 = tail call ptr @marco_malloc(i64 8)
  %4 = tail call ptr @marco_malloc(i64 8)
  %5 = tail call ptr @marco_malloc(i64 8)
  %6 = fdiv double 5.126400e+02, %0
  store double %6, ptr %4, align 8
  %7 = tail call ptr @marco_malloc(i64 128)
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %8, 63
  %10 = and i64 %9, -64
  %11 = inttoptr i64 %10 to ptr
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %14 = getelementptr inbounds nuw double, ptr %11, i64 %13
  store double %6, ptr %14, align 8
  %15 = add nuw nsw i64 %13, 1
  %exitcond.not = icmp eq i64 %15, 8
  br i1 %exitcond.not, label %16, label %12

16:                                               ; preds = %12
  %17 = tail call ptr @marco_malloc(i64 128)
  %18 = ptrtoint ptr %17 to i64
  %19 = add i64 %18, 63
  %20 = and i64 %19, -64
  %21 = inttoptr i64 %20 to ptr
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi i64 [ 0, %16 ], [ %30, %22 ]
  %24 = getelementptr inbounds nuw double, ptr @__constant_8xf64, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds nuw double, ptr %11, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = fmul double %25, %27
  %29 = getelementptr inbounds nuw double, ptr %21, i64 %23
  store double %28, ptr %29, align 8
  %30 = add nuw nsw i64 %23, 1
  %exitcond4.not = icmp eq i64 %30, 8
  br i1 %exitcond4.not, label %31, label %22

31:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, ptr noundef nonnull align 64 dereferenceable(64) %21, i64 64, i1 false)
  store double 0x400F34F61672324C, ptr %5, align 8
  %32 = alloca i64, align 8
  store i64 2, ptr %32, align 8
  br label %33

33:                                               ; preds = %33, %31
  %storemerge3 = phi i64 [ 1, %31 ], [ %54, %33 ]
  %34 = load double, ptr %5, align 8
  %35 = getelementptr inbounds nuw double, ptr @__constant_8xf64_0, i64 %storemerge3
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw double, ptr %2, i64 %storemerge3
  %38 = load double, ptr %37, align 8
  %39 = tail call ptr @llvm.stacksave.p0()
  %40 = tail call double @_Mpow_f64_f64_f64(double %38, double 2.000000e+00)
  call void @llvm.stackrestore.p0(ptr %39)
  %41 = fmul double %36, %40
  %42 = load double, ptr %37, align 8
  %43 = tail call ptr @llvm.stacksave.p0()
  %44 = tail call double @_Mexp_f64_f64(double %42)
  call void @llvm.stackrestore.p0(ptr %43)
  %45 = fmul double %41, %44
  %46 = load double, ptr %37, align 8
  %47 = tail call ptr @llvm.stacksave.p0()
  %48 = tail call double @_Mexp_f64_f64(double %46)
  call void @llvm.stackrestore.p0(ptr %47)
  %49 = fadd double %48, -1.000000e+00
  %50 = tail call ptr @llvm.stacksave.p0()
  %51 = tail call double @_Mpow_f64_f64_f64(double %49, double 2.000000e+00)
  call void @llvm.stackrestore.p0(ptr %50)
  %52 = fdiv double %45, %51
  %53 = fadd double %34, %52
  store double %53, ptr %5, align 8
  %54 = load i64, ptr %32, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %32, align 8
  %56 = icmp slt i64 %55, 9
  br i1 %56, label %33, label %.critedge

.critedge:                                        ; preds = %33
  %57 = fmul double %53, 0x4070380A7B9F18DE
  store double %57, ptr %3, align 8
  tail call void @marco_free(ptr nonnull %2)
  tail call void @marco_free(ptr nonnull %3)
  tail call void @marco_free(ptr nonnull %4)
  tail call void @marco_free(ptr nonnull %5)
  tail call void @marco_free(ptr %7)
  tail call void @marco_free(ptr %17)
  ret double %57
}

define double @_MMethanolHeatExchangersDAE.Models.Methanol.cv_T(double %0) local_unnamed_addr {
  %2 = tail call ptr @marco_malloc(i64 8)
  %3 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %0)
  %4 = fadd double %3, 0xC070380A7B9F18DE
  store double %4, ptr %2, align 8
  tail call void @marco_free(ptr nonnull %2)
  ret double %4
}

define double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %0) local_unnamed_addr {
  %2 = tail call ptr @marco_malloc(i64 8)
  %3 = tail call ptr @marco_malloc(i64 8)
  %4 = tail call ptr @marco_malloc(i64 64)
  %5 = tail call ptr @marco_malloc(i64 8)
  %6 = fdiv double 5.126400e+02, %0
  store double %6, ptr %3, align 8
  %7 = tail call ptr @marco_malloc(i64 128)
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %8, 63
  %10 = and i64 %9, -64
  %11 = inttoptr i64 %10 to ptr
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %14 = getelementptr inbounds nuw double, ptr %11, i64 %13
  store double %6, ptr %14, align 8
  %15 = add nuw nsw i64 %13, 1
  %exitcond.not = icmp eq i64 %15, 8
  br i1 %exitcond.not, label %16, label %12

16:                                               ; preds = %12
  %17 = tail call ptr @marco_malloc(i64 128)
  %18 = ptrtoint ptr %17 to i64
  %19 = add i64 %18, 63
  %20 = and i64 %19, -64
  %21 = inttoptr i64 %20 to ptr
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi i64 [ 0, %16 ], [ %30, %22 ]
  %24 = getelementptr inbounds nuw double, ptr @__constant_8xf64, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds nuw double, ptr %11, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = fmul double %25, %27
  %29 = getelementptr inbounds nuw double, ptr %21, i64 %23
  store double %28, ptr %29, align 8
  %30 = add nuw nsw i64 %23, 1
  %exitcond4.not = icmp eq i64 %30, 8
  br i1 %exitcond4.not, label %31, label %22

31:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 64 dereferenceable(64) %21, i64 64, i1 false)
  %32 = load double, ptr %3, align 8
  %33 = fdiv double 0x400F34F61672324C, %32
  store double %33, ptr %2, align 8
  %34 = alloca i64, align 8
  store i64 2, ptr %34, align 8
  br label %35

35:                                               ; preds = %35, %31
  %storemerge3 = phi i64 [ 1, %31 ], [ %49, %35 ]
  %36 = load double, ptr %2, align 8
  %37 = getelementptr inbounds nuw double, ptr @__constant_8xf64_0, i64 %storemerge3
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds nuw double, ptr @__constant_8xf64, i64 %storemerge3
  %40 = load double, ptr %39, align 8
  %41 = fmul double %38, %40
  %42 = getelementptr inbounds nuw double, ptr %4, i64 %storemerge3
  %43 = load double, ptr %42, align 8
  %44 = tail call ptr @llvm.stacksave.p0()
  %45 = tail call double @_Mexp_f64_f64(double %43)
  call void @llvm.stackrestore.p0(ptr %44)
  %46 = fadd double %45, -1.000000e+00
  %47 = fdiv double %41, %46
  %48 = fadd double %36, %47
  store double %48, ptr %2, align 8
  %49 = load i64, ptr %34, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %34, align 8
  %51 = icmp slt i64 %50, 9
  br i1 %51, label %35, label %.critedge

.critedge:                                        ; preds = %35
  %52 = fmul double %0, 0x4070380A7B9F18DE
  %53 = load double, ptr %3, align 8
  %54 = fmul double %52, %53
  %55 = fmul double %48, %54
  %56 = fmul double %53, 1.361810e+03
  %57 = fdiv double %56, 5.126400e+02
  %58 = fsub double %55, %57
  store double %58, ptr %5, align 8
  tail call void @marco_free(ptr nonnull %2)
  tail call void @marco_free(ptr nonnull %3)
  tail call void @marco_free(ptr nonnull %4)
  tail call void @marco_free(ptr nonnull %5)
  tail call void @marco_free(ptr %7)
  tail call void @marco_free(ptr %17)
  ret double %58
}

define void @euler_state_update_T_tilde() local_unnamed_addr {
  %1 = load double, ptr @timeStep, align 8
  %2 = tail call ptr @marco_malloc(i64 640)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %3, 63
  %5 = and i64 %4, -64
  %6 = inttoptr i64 %5 to ptr
  br label %.preheader8

.preheader8:                                      ; preds = %17, %0
  %7 = phi i64 [ 0, %0 ], [ %18, %17 ]
  %.idx = mul nuw nsw i64 %7, 192
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  br label %.preheader7

.preheader7:                                      ; preds = %15, %.preheader8
  %9 = phi i64 [ 0, %.preheader8 ], [ %16, %15 ]
  %.idx3 = mul nuw nsw i64 %9, 48
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx3
  br label %11

11:                                               ; preds = %11, %.preheader7
  %12 = phi i64 [ 0, %.preheader7 ], [ %14, %11 ]
  %13 = getelementptr inbounds nuw double, ptr %10, i64 %12
  store double %1, ptr %13, align 8
  %14 = add nuw nsw i64 %12, 1
  %exitcond.not = icmp eq i64 %14, 6
  br i1 %exitcond.not, label %15, label %11

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, 1
  %exitcond9.not = icmp eq i64 %16, 4
  br i1 %exitcond9.not, label %17, label %.preheader7

17:                                               ; preds = %15
  %18 = add nuw nsw i64 %7, 1
  %exitcond10.not = icmp eq i64 %18, 3
  br i1 %exitcond10.not, label %19, label %.preheader8

19:                                               ; preds = %17
  %20 = tail call ptr @marco_malloc(i64 640)
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %21, 63
  %23 = and i64 %22, -64
  %24 = inttoptr i64 %23 to ptr
  br label %.preheader6

.preheader6:                                      ; preds = %42, %19
  %25 = phi i64 [ 0, %19 ], [ %43, %42 ]
  %26 = mul nuw nsw i64 %25, 24
  br label %.preheader5

.preheader5:                                      ; preds = %40, %.preheader6
  %27 = phi i64 [ 0, %.preheader6 ], [ %41, %40 ]
  %28 = mul nuw nsw i64 %27, 6
  %29 = add nuw nsw i64 %28, %26
  br label %30

30:                                               ; preds = %30, %.preheader5
  %31 = phi i64 [ 0, %.preheader5 ], [ %39, %30 ]
  %32 = add nuw nsw i64 %29, %31
  %33 = getelementptr inbounds nuw double, ptr @var_32, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds nuw double, ptr %6, i64 %32
  %36 = load double, ptr %35, align 8
  %37 = fmul double %34, %36
  %38 = getelementptr inbounds nuw double, ptr %24, i64 %32
  store double %37, ptr %38, align 8
  %39 = add nuw nsw i64 %31, 1
  %exitcond11.not = icmp eq i64 %39, 6
  br i1 %exitcond11.not, label %40, label %30

40:                                               ; preds = %30
  %41 = add nuw nsw i64 %27, 1
  %exitcond12.not = icmp eq i64 %41, 4
  br i1 %exitcond12.not, label %42, label %.preheader5

42:                                               ; preds = %40
  %43 = add nuw nsw i64 %25, 1
  %exitcond13.not = icmp eq i64 %43, 3
  br i1 %exitcond13.not, label %44, label %.preheader6

44:                                               ; preds = %42
  %45 = tail call ptr @marco_malloc(i64 640)
  %46 = ptrtoint ptr %45 to i64
  %47 = add i64 %46, 63
  %48 = and i64 %47, -64
  %49 = inttoptr i64 %48 to ptr
  br label %.preheader4

.preheader4:                                      ; preds = %67, %44
  %50 = phi i64 [ 0, %44 ], [ %68, %67 ]
  %51 = mul nuw nsw i64 %50, 24
  br label %.preheader

.preheader:                                       ; preds = %65, %.preheader4
  %52 = phi i64 [ 0, %.preheader4 ], [ %66, %65 ]
  %53 = mul nuw nsw i64 %52, 6
  %54 = add nuw nsw i64 %53, %51
  br label %55

55:                                               ; preds = %55, %.preheader
  %56 = phi i64 [ 0, %.preheader ], [ %64, %55 ]
  %57 = add nuw nsw i64 %54, %56
  %58 = getelementptr inbounds nuw double, ptr @var_24, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = getelementptr inbounds nuw double, ptr %24, i64 %57
  %61 = load double, ptr %60, align 8
  %62 = fadd double %59, %61
  %63 = getelementptr inbounds nuw double, ptr %49, i64 %57
  store double %62, ptr %63, align 8
  %64 = add nuw nsw i64 %56, 1
  %exitcond14.not = icmp eq i64 %64, 6
  br i1 %exitcond14.not, label %65, label %55

65:                                               ; preds = %55
  %66 = add nuw nsw i64 %52, 1
  %exitcond15.not = icmp eq i64 %66, 4
  br i1 %exitcond15.not, label %67, label %.preheader

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %50, 1
  %exitcond16.not = icmp eq i64 %68, 3
  br i1 %exitcond16.not, label %69, label %.preheader4

69:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_24, ptr noundef nonnull align 64 dereferenceable(576) %49, i64 576, i1 false)
  tail call void @marco_free(ptr %2)
  tail call void @marco_free(ptr %20)
  tail call void @marco_free(ptr %45)
  ret void
}

define void @euler_state_update_T_w() local_unnamed_addr {
  %1 = load double, ptr @timeStep, align 8
  %2 = tail call ptr @marco_malloc(i64 640)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %3, 63
  %5 = and i64 %4, -64
  %6 = inttoptr i64 %5 to ptr
  br label %.preheader8

.preheader8:                                      ; preds = %17, %0
  %7 = phi i64 [ 0, %0 ], [ %18, %17 ]
  %.idx = mul nuw nsw i64 %7, 192
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  br label %.preheader7

.preheader7:                                      ; preds = %15, %.preheader8
  %9 = phi i64 [ 0, %.preheader8 ], [ %16, %15 ]
  %.idx3 = mul nuw nsw i64 %9, 48
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx3
  br label %11

11:                                               ; preds = %11, %.preheader7
  %12 = phi i64 [ 0, %.preheader7 ], [ %14, %11 ]
  %13 = getelementptr inbounds nuw double, ptr %10, i64 %12
  store double %1, ptr %13, align 8
  %14 = add nuw nsw i64 %12, 1
  %exitcond.not = icmp eq i64 %14, 6
  br i1 %exitcond.not, label %15, label %11

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, 1
  %exitcond9.not = icmp eq i64 %16, 4
  br i1 %exitcond9.not, label %17, label %.preheader7

17:                                               ; preds = %15
  %18 = add nuw nsw i64 %7, 1
  %exitcond10.not = icmp eq i64 %18, 3
  br i1 %exitcond10.not, label %19, label %.preheader8

19:                                               ; preds = %17
  %20 = tail call ptr @marco_malloc(i64 640)
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %21, 63
  %23 = and i64 %22, -64
  %24 = inttoptr i64 %23 to ptr
  br label %.preheader6

.preheader6:                                      ; preds = %42, %19
  %25 = phi i64 [ 0, %19 ], [ %43, %42 ]
  %26 = mul nuw nsw i64 %25, 24
  br label %.preheader5

.preheader5:                                      ; preds = %40, %.preheader6
  %27 = phi i64 [ 0, %.preheader6 ], [ %41, %40 ]
  %28 = mul nuw nsw i64 %27, 6
  %29 = add nuw nsw i64 %28, %26
  br label %30

30:                                               ; preds = %30, %.preheader5
  %31 = phi i64 [ 0, %.preheader5 ], [ %39, %30 ]
  %32 = add nuw nsw i64 %29, %31
  %33 = getelementptr inbounds nuw double, ptr @var_33, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = getelementptr inbounds nuw double, ptr %6, i64 %32
  %36 = load double, ptr %35, align 8
  %37 = fmul double %34, %36
  %38 = getelementptr inbounds nuw double, ptr %24, i64 %32
  store double %37, ptr %38, align 8
  %39 = add nuw nsw i64 %31, 1
  %exitcond11.not = icmp eq i64 %39, 6
  br i1 %exitcond11.not, label %40, label %30

40:                                               ; preds = %30
  %41 = add nuw nsw i64 %27, 1
  %exitcond12.not = icmp eq i64 %41, 4
  br i1 %exitcond12.not, label %42, label %.preheader5

42:                                               ; preds = %40
  %43 = add nuw nsw i64 %25, 1
  %exitcond13.not = icmp eq i64 %43, 3
  br i1 %exitcond13.not, label %44, label %.preheader6

44:                                               ; preds = %42
  %45 = tail call ptr @marco_malloc(i64 640)
  %46 = ptrtoint ptr %45 to i64
  %47 = add i64 %46, 63
  %48 = and i64 %47, -64
  %49 = inttoptr i64 %48 to ptr
  br label %.preheader4

.preheader4:                                      ; preds = %67, %44
  %50 = phi i64 [ 0, %44 ], [ %68, %67 ]
  %51 = mul nuw nsw i64 %50, 24
  br label %.preheader

.preheader:                                       ; preds = %65, %.preheader4
  %52 = phi i64 [ 0, %.preheader4 ], [ %66, %65 ]
  %53 = mul nuw nsw i64 %52, 6
  %54 = add nuw nsw i64 %53, %51
  br label %55

55:                                               ; preds = %55, %.preheader
  %56 = phi i64 [ 0, %.preheader ], [ %64, %55 ]
  %57 = add nuw nsw i64 %54, %56
  %58 = getelementptr inbounds nuw double, ptr @var_29, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = getelementptr inbounds nuw double, ptr %24, i64 %57
  %61 = load double, ptr %60, align 8
  %62 = fadd double %59, %61
  %63 = getelementptr inbounds nuw double, ptr %49, i64 %57
  store double %62, ptr %63, align 8
  %64 = add nuw nsw i64 %56, 1
  %exitcond14.not = icmp eq i64 %64, 6
  br i1 %exitcond14.not, label %65, label %55

65:                                               ; preds = %55
  %66 = add nuw nsw i64 %52, 1
  %exitcond15.not = icmp eq i64 %66, 4
  br i1 %exitcond15.not, label %67, label %.preheader

67:                                               ; preds = %65
  %68 = add nuw nsw i64 %50, 1
  %exitcond16.not = icmp eq i64 %68, 3
  br i1 %exitcond16.not, label %69, label %.preheader4

69:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_29, ptr noundef nonnull align 64 dereferenceable(576) %49, i64 576, i1 false)
  tail call void @marco_free(ptr %2)
  tail call void @marco_free(ptr %20)
  tail call void @marco_free(ptr %45)
  ret void
}

define void @euler_state_update_T_m() local_unnamed_addr {
  %1 = load double, ptr @timeStep, align 8
  %2 = tail call ptr @marco_malloc(i64 88)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %3, 63
  %5 = and i64 %4, -64
  %6 = inttoptr i64 %5 to ptr
  br label %7

7:                                                ; preds = %7, %0
  %8 = phi i64 [ 0, %0 ], [ %10, %7 ]
  %9 = getelementptr inbounds nuw double, ptr %6, i64 %8
  store double %1, ptr %9, align 8
  %10 = add nuw nsw i64 %8, 1
  %exitcond.not = icmp eq i64 %10, 3
  br i1 %exitcond.not, label %11, label %7

11:                                               ; preds = %7
  %12 = tail call ptr @marco_malloc(i64 88)
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %13, 63
  %15 = and i64 %14, -64
  %16 = inttoptr i64 %15 to ptr
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi i64 [ 0, %11 ], [ %25, %17 ]
  %19 = getelementptr inbounds nuw double, ptr @var_31, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw double, ptr %6, i64 %18
  %22 = load double, ptr %21, align 8
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds nuw double, ptr %16, i64 %18
  store double %23, ptr %24, align 8
  %25 = add nuw nsw i64 %18, 1
  %exitcond3.not = icmp eq i64 %25, 3
  br i1 %exitcond3.not, label %26, label %17

26:                                               ; preds = %17
  %27 = tail call ptr @marco_malloc(i64 88)
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %28, 63
  %30 = and i64 %29, -64
  %31 = inttoptr i64 %30 to ptr
  br label %32

32:                                               ; preds = %32, %26
  %33 = phi i64 [ 0, %26 ], [ %40, %32 ]
  %34 = getelementptr inbounds nuw double, ptr @var_30, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds nuw double, ptr %16, i64 %33
  %37 = load double, ptr %36, align 8
  %38 = fadd double %35, %37
  %39 = getelementptr inbounds nuw double, ptr %31, i64 %33
  store double %38, ptr %39, align 8
  %40 = add nuw nsw i64 %33, 1
  %exitcond4.not = icmp eq i64 %40, 3
  br i1 %exitcond4.not, label %41, label %32

41:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_30, ptr noundef nonnull align 64 dereferenceable(24) %31, i64 24, i1 false)
  tail call void @marco_free(ptr %2)
  tail call void @marco_free(ptr %12)
  tail call void @marco_free(ptr %27)
  ret void
}

define void @equation() local_unnamed_addr {
  %1 = load double, ptr @time, align 8
  %2 = fmul double %1, 0x3FCACEE9F37BEDC6
  %3 = tail call double @_Msin_f64_f64(double %2)
  %4 = fmul double %3, 2.000000e-01
  %5 = fadd double %4, 1.000000e+00
  store double %5, ptr @var_17, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_0() local_unnamed_addr #0 {
  %1 = load double, ptr @var_17, align 8
  %2 = fmul double %1, 2.500000e-01
  store double %2, ptr @var_18, align 8
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_1(i64 %0, i64 %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %11, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = fmul double %7, 0x4070380A7B9F18DE
  %9 = fdiv double 2.000000e+06, %8
  %10 = getelementptr double, ptr @var_26, i64 %5
  store double %9, ptr %10, align 8
  %11 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %11, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_2(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %10, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %7)
  %9 = getelementptr double, ptr @var_23, i64 %5
  store double %8, ptr %9, align 8
  %10 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %10, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_3(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %12, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = tail call ptr @marco_malloc(i64 8)
  %9 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %7)
  %10 = fadd double %9, 0xC070380A7B9F18DE
  store double %10, ptr %8, align 8
  tail call void @marco_free(ptr nonnull %8)
  %11 = getelementptr double, ptr @var_28, i64 %5
  store double %10, ptr %11, align 8
  %12 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %12, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_4(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %26, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %25, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %24, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_24, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = fmul double %20, 0x4070380A7B9F18DE
  %22 = fdiv double 2.000000e+06, %21
  %23 = getelementptr double, ptr @var_25, i64 %18
  store double %22, ptr %23, align 8
  %24 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %24, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %25 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %25, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %26 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %26, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

define void @equation_5(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %27, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %26, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %25, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_24, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = tail call ptr @marco_malloc(i64 8)
  %22 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %20)
  %23 = fadd double %22, 0xC070380A7B9F18DE
  store double %23, ptr %21, align 8
  tail call void @marco_free(ptr nonnull %21)
  %24 = getelementptr double, ptr @var_27, i64 %18
  store double %23, ptr %24, align 8
  %25 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %25, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %26 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %26, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %27 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %27, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_6(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader4.lr.ph, label %._crit_edge6

.preheader4.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  %10 = mul i64 %0, 224
  %11 = mul i64 %2, 56
  %12 = shl i64 %4, 3
  %13 = mul i64 %0, 192
  %14 = mul i64 %2, 48
  %15 = sub i64 %5, %4
  %16 = shl i64 %15, 3
  %17 = sub i64 %3, %2
  %18 = sub i64 %1, %0
  %19 = getelementptr i8, ptr @var_24, i64 %13
  %20 = getelementptr i8, ptr %19, i64 %14
  %21 = getelementptr i8, ptr %20, i64 %12
  %22 = getelementptr i8, ptr @var_21, i64 %10
  %23 = getelementptr i8, ptr %22, i64 %11
  %24 = getelementptr i8, ptr %23, i64 %12
  %25 = getelementptr i8, ptr %24, i64 8
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge5, %.preheader4.lr.ph
  %indvar = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvar.next, %._crit_edge5 ]
  br i1 %8, label %.preheader.preheader, label %._crit_edge5

.preheader.preheader:                             ; preds = %.preheader4
  %26 = mul i64 %indvar, 192
  %27 = mul i64 %indvar, 224
  %28 = getelementptr i8, ptr %21, i64 %26
  %29 = getelementptr i8, ptr %25, i64 %27
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %indvar7 = phi i64 [ %indvar.next8, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %30 = mul i64 %indvar7, 48
  %scevgep9 = getelementptr i8, ptr %28, i64 %30
  %31 = mul i64 %indvar7, 56
  %scevgep = getelementptr i8, ptr %29, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep9, i64 %16, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvar.next8 = add nuw i64 %indvar7, 1
  %exitcond.not = icmp eq i64 %indvar.next8, %17
  br i1 %exitcond.not, label %._crit_edge5, label %.preheader

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader4
  %indvar.next = add nuw i64 %indvar, 1
  %exitcond10.not = icmp eq i64 %indvar.next, %18
  br i1 %exitcond10.not, label %._crit_edge6, label %.preheader4

._crit_edge6:                                     ; preds = %._crit_edge5, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_7(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp slt i64 %0, %1
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %4
  %6 = icmp slt i64 %2, %3
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %7 = phi i64 [ %0, %.preheader.lr.ph ], [ %17, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr double, ptr @var_30, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -16
  %10 = load double, ptr %9, align 8
  %.idx = mul i64 %7, 224
  %11 = getelementptr i8, ptr @var_21, i64 %.idx
  br label %12

12:                                               ; preds = %12, %.lr.ph
  %13 = phi i64 [ %2, %.lr.ph ], [ %16, %12 ]
  %.idx1 = mul i64 %13, 56
  %14 = getelementptr i8, ptr %11, i64 %.idx1
  %15 = getelementptr i8, ptr %14, i64 -280
  store double %10, ptr %15, align 8
  %16 = add nsw i64 %13, 1
  %exitcond.not = icmp eq i64 %16, %3
  br i1 %exitcond.not, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %12, %.preheader
  %17 = add nsw i64 %7, 1
  %exitcond3.not = icmp eq i64 %17, %1
  br i1 %exitcond3.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define void @equation_8(i64 %0, i64 %1) local_unnamed_addr #2 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %7, %.lr.ph ], [ %0, %2 ]
  %.idx = mul i64 %4, 56
  %5 = getelementptr i8, ptr @var_21, i64 %.idx
  %6 = getelementptr i8, ptr %5, i64 -56
  store double 4.931500e+02, ptr %6, align 8
  %7 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_9(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %25, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 28
  %12 = add i64 %11, -36
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %24, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 7
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %23, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_21, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %20)
  %22 = getelementptr double, ptr @var_22, i64 %18
  store double %21, ptr %22, align 8
  %23 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %23, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %24 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %24, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %25 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %25, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_10(i64 %0, i64 %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %4 = load double, ptr @var_18, align 8
  %5 = load double, ptr @var_17, align 8
  br label %6

6:                                                ; preds = %22, %.lr.ph
  %7 = phi i64 [ %0, %.lr.ph ], [ %32, %22 ]
  %8 = add i64 %7, -1
  %9 = getelementptr inbounds nuw double, ptr @var_26, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds nuw double, ptr @var_28, i64 %8
  %12 = load double, ptr %11, align 8
  %.idx = mul nuw nsw i64 %8, 224
  %13 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi double [ 0.000000e+00, %6 ], [ %20, %14 ]
  %16 = phi i64 [ 1, %6 ], [ %21, %14 ]
  %.idx2 = mul nuw nsw i64 %16, 56
  %17 = getelementptr i8, ptr %13, i64 %.idx2
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load double, ptr %18, align 8
  %20 = fadd double %15, %19
  %21 = add nuw nsw i64 %16, 1
  %exitcond.not = icmp eq i64 %21, 5
  br i1 %exitcond.not, label %22, label %14

22:                                               ; preds = %14
  %23 = fmul double %10, 0x3F6B4E81B4E81B4F
  %24 = fmul double %23, %12
  %25 = fmul double %4, %20
  %26 = getelementptr inbounds nuw double, ptr @var_23, i64 %8
  %27 = load double, ptr %26, align 8
  %28 = fmul double %5, %27
  %29 = fsub double %25, %28
  %30 = fdiv double %29, %24
  %31 = getelementptr double, ptr @var_31, i64 %8
  store double %30, ptr %31, align 8
  %32 = add nsw i64 %7, 1
  %exitcond3.not = icmp eq i64 %32, %1
  br i1 %exitcond3.not, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %22, %2
  ret void
}

define void @equation_11(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %32, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %31, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %30, %16 ]
  %18 = load double, ptr @var_17, align 8
  %19 = tail call ptr @llvm.stacksave.p0()
  %20 = tail call double @_Mpow_f64_f64_f64(double %18, double 8.000000e-01)
  call void @llvm.stackrestore.p0(ptr %19)
  %21 = fmul double %20, 0x40615C71C71C71C7
  %22 = add i64 %15, %17
  %23 = getelementptr inbounds nuw double, ptr @var_29, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds nuw double, ptr @var_24, i64 %22
  %26 = load double, ptr %25, align 8
  %27 = fsub double %24, %26
  %28 = fmul double %21, %27
  %29 = getelementptr double, ptr @var_20, i64 %22
  store double %28, ptr %29, align 8
  %30 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %30, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %31 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %31, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %32 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %32, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_12(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader2.lr.ph, label %._crit_edge4

.preheader2.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  %10 = load double, ptr @var_18, align 8
  br label %.preheader2

.preheader2:                                      ; preds = %._crit_edge3, %.preheader2.lr.ph
  %11 = phi i64 [ %0, %.preheader2.lr.ph ], [ %43, %._crit_edge3 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %.preheader2
  %12 = add i64 %11, -1
  %13 = mul nuw nsw i64 %12, 24
  %.idx = mul nuw nsw i64 %12, 224
  %14 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %15 = phi i64 [ %2, %.preheader.lr.ph ], [ %42, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %16 = add i64 %15, -1
  %17 = mul nuw nsw i64 %16, 6
  %18 = add nuw nsw i64 %17, %13
  %.idx1 = mul nuw nsw i64 %16, 56
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 %.idx1
  br label %20

20:                                               ; preds = %20, %.lr.ph
  %21 = phi i64 [ %4, %.lr.ph ], [ %41, %20 ]
  %22 = add i64 %21, -1
  %23 = add nuw nsw i64 %18, %22
  %24 = getelementptr inbounds nuw double, ptr @var_25, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, 1.375000e-02
  %27 = getelementptr inbounds nuw double, ptr @var_27, i64 %23
  %28 = load double, ptr %27, align 8
  %29 = fmul double %26, %28
  %30 = getelementptr inbounds nuw double, ptr %19, i64 %22
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds nuw double, ptr %19, i64 %21
  %33 = load double, ptr %32, align 8
  %34 = fsub double %31, %33
  %35 = fmul double %10, %34
  %36 = getelementptr inbounds nuw double, ptr @var_20, i64 %23
  %37 = load double, ptr %36, align 8
  %38 = fadd double %37, %35
  %39 = fdiv double %38, %29
  %40 = getelementptr double, ptr @var_32, i64 %23
  store double %39, ptr %40, align 8
  %41 = add nsw i64 %21, 1
  %exitcond.not = icmp eq i64 %41, %5
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20, %.preheader
  %42 = add nsw i64 %15, 1
  %exitcond5.not = icmp eq i64 %42, %3
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader

._crit_edge3:                                     ; preds = %._crit_edge, %.preheader2
  %43 = add nsw i64 %11, 1
  %exitcond6.not = icmp eq i64 %43, %1
  br i1 %exitcond6.not, label %._crit_edge4, label %.preheader2

._crit_edge4:                                     ; preds = %._crit_edge3, %6
  ret void
}

define void @equation_13(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %17, %.lr.ph ], [ %0, %2 ]
  %5 = load double, ptr @time, align 8
  %6 = fmul double %5, 0x3FB015BF92172844
  %7 = sitofp i64 %4 to double
  %8 = fmul double %7, 0x401921FB54442EEA
  %9 = fmul double %8, 2.500000e-01
  %10 = fadd double %6, %9
  %11 = tail call ptr @llvm.stacksave.p0()
  %12 = tail call double @_Msin_f64_f64(double %10)
  call void @llvm.stackrestore.p0(ptr %11)
  %13 = fadd double %12, 1.000000e+00
  %14 = fmul double %13, 0x40E4585555555555
  %15 = getelementptr double, ptr @var_19, i64 %4
  %16 = getelementptr i8, ptr %15, i64 -8
  store double %14, ptr %16, align 8
  %17 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %17, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_14(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %30, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -25
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %29, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = add i64 %13, -1
  %15 = getelementptr inbounds nuw double, ptr @var_19, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fdiv double %16, 6.000000e+00
  %18 = mul nuw nsw i64 %14, 6
  %19 = add i64 %12, %18
  br label %20

20:                                               ; preds = %20, %.lr.ph
  %21 = phi i64 [ %4, %.lr.ph ], [ %28, %20 ]
  %22 = add i64 %19, %21
  %23 = getelementptr inbounds nuw double, ptr @var_20, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fsub double %17, %24
  %26 = fdiv double %25, 0x40615C71C71C71C7
  %27 = getelementptr double, ptr @var_33, i64 %22
  store double %26, ptr %27, align 8
  %28 = add nsw i64 %21, 1
  %exitcond.not = icmp eq i64 %28, %5
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20, %.preheader
  %29 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %29, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %30 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %30, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_15() local_unnamed_addr #3 {
  store i64 3, ptr @var, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_16() local_unnamed_addr #3 {
  store i64 4, ptr @var_0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_17() local_unnamed_addr #3 {
  store i64 6, ptr @var_1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_18() local_unnamed_addr #3 {
  store double 1.000000e+00, ptr @var_2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_19() local_unnamed_addr #3 {
  store double 5.000000e+05, ptr @var_3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_20() local_unnamed_addr #3 {
  store double 0x3FA1111111111111, ptr @var_4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_21() local_unnamed_addr #3 {
  store double 1.000000e-02, ptr @var_5, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_22() local_unnamed_addr #3 {
  store double 4.931500e+02, ptr @var_6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_23() local_unnamed_addr #3 {
  store double 1.000000e+00, ptr @var_7, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_24() local_unnamed_addr #3 {
  store double 1.000000e-02, ptr @var_8, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_25() local_unnamed_addr #3 {
  store double 1.000000e+04, ptr @var_9, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_26() local_unnamed_addr #3 {
  store double 8.000000e-01, ptr @var_10, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_27() local_unnamed_addr #3 {
  store double 1.000000e+04, ptr @var_11, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_28() local_unnamed_addr #3 {
  store double 2.000000e+06, ptr @var_12, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_29() local_unnamed_addr #3 {
  store double 1.375000e-02, ptr @var_13, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_30() local_unnamed_addr #3 {
  store double 0x3F6B4E81B4E81B4F, ptr @var_14, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_31() local_unnamed_addr #3 {
  store double 0x40615C71C71C71C7, ptr @var_15, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @equation_32() local_unnamed_addr #3 {
  store double 0x400921FB54442EEA, ptr @var_16, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define void @equation_33(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #2 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader2.lr.ph, label %._crit_edge4

.preheader2.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader2

.preheader2:                                      ; preds = %._crit_edge3, %.preheader2.lr.ph
  %10 = phi i64 [ %0, %.preheader2.lr.ph ], [ %19, %._crit_edge3 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %.preheader2
  %.idx = mul i64 %10, 192
  %11 = getelementptr i8, ptr @var_24, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %12 = phi i64 [ %2, %.preheader.lr.ph ], [ %18, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.idx1 = mul i64 %12, 48
  %13 = getelementptr i8, ptr %11, i64 %.idx1
  br label %14

14:                                               ; preds = %14, %.lr.ph
  %15 = phi i64 [ %4, %.lr.ph ], [ %17, %14 ]
  %16 = getelementptr double, ptr %13, i64 %15
  store double 4.931500e+02, ptr %16, align 8
  %17 = add nsw i64 %15, 1
  %exitcond.not = icmp eq i64 %17, %5
  br i1 %exitcond.not, label %._crit_edge, label %14

._crit_edge:                                      ; preds = %14, %.preheader
  %18 = add nsw i64 %12, 1
  %exitcond5.not = icmp eq i64 %18, %3
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader

._crit_edge3:                                     ; preds = %._crit_edge, %.preheader2
  %19 = add nsw i64 %10, 1
  %exitcond6.not = icmp eq i64 %19, %1
  br i1 %exitcond6.not, label %._crit_edge4, label %.preheader2

._crit_edge4:                                     ; preds = %._crit_edge3, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define void @equation_34(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #2 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader2.lr.ph, label %._crit_edge4

.preheader2.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader2

.preheader2:                                      ; preds = %._crit_edge3, %.preheader2.lr.ph
  %10 = phi i64 [ %0, %.preheader2.lr.ph ], [ %19, %._crit_edge3 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %.preheader2
  %.idx = mul i64 %10, 192
  %11 = getelementptr i8, ptr @var_29, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %12 = phi i64 [ %2, %.preheader.lr.ph ], [ %18, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.idx1 = mul i64 %12, 48
  %13 = getelementptr i8, ptr %11, i64 %.idx1
  br label %14

14:                                               ; preds = %14, %.lr.ph
  %15 = phi i64 [ %4, %.lr.ph ], [ %17, %14 ]
  %16 = getelementptr double, ptr %13, i64 %15
  store double 4.931500e+02, ptr %16, align 8
  %17 = add nsw i64 %15, 1
  %exitcond.not = icmp eq i64 %17, %5
  br i1 %exitcond.not, label %._crit_edge, label %14

._crit_edge:                                      ; preds = %14, %.preheader
  %18 = add nsw i64 %12, 1
  %exitcond5.not = icmp eq i64 %18, %3
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader

._crit_edge3:                                     ; preds = %._crit_edge, %.preheader2
  %19 = add nsw i64 %10, 1
  %exitcond6.not = icmp eq i64 %19, %1
  br i1 %exitcond6.not, label %._crit_edge4, label %.preheader2

._crit_edge4:                                     ; preds = %._crit_edge3, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define void @equation_35(i64 %0, i64 %1) local_unnamed_addr #2 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %6, %.lr.ph ], [ %0, %2 ]
  %5 = getelementptr double, ptr @var_30, i64 %4
  store double 4.931500e+02, ptr %5, align 8
  %6 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %6, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_36() local_unnamed_addr {
  %1 = load double, ptr @time, align 8
  %2 = fmul double %1, 0x3FCACEE9F37BEDC6
  %3 = tail call double @_Msin_f64_f64(double %2)
  %4 = fmul double %3, 2.000000e-01
  %5 = fadd double %4, 1.000000e+00
  store double %5, ptr @var_17, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_37() local_unnamed_addr #0 {
  %1 = load double, ptr @var_17, align 8
  %2 = fmul double %1, 2.500000e-01
  store double %2, ptr @var_18, align 8
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_38(i64 %0, i64 %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %11, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = fmul double %7, 0x4070380A7B9F18DE
  %9 = fdiv double 2.000000e+06, %8
  %10 = getelementptr double, ptr @var_26, i64 %5
  store double %9, ptr %10, align 8
  %11 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %11, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_39(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %10, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %7)
  %9 = getelementptr double, ptr @var_23, i64 %5
  store double %8, ptr %9, align 8
  %10 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %10, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_40(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %12, %.lr.ph ], [ %0, %2 ]
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds nuw double, ptr @var_30, i64 %5
  %7 = load double, ptr %6, align 8
  %8 = tail call ptr @marco_malloc(i64 8)
  %9 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %7)
  %10 = fadd double %9, 0xC070380A7B9F18DE
  store double %10, ptr %8, align 8
  tail call void @marco_free(ptr nonnull %8)
  %11 = getelementptr double, ptr @var_28, i64 %5
  store double %10, ptr %11, align 8
  %12 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %12, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_41(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %26, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %25, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %24, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_24, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = fmul double %20, 0x4070380A7B9F18DE
  %22 = fdiv double 2.000000e+06, %21
  %23 = getelementptr double, ptr @var_25, i64 %18
  store double %22, ptr %23, align 8
  %24 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %24, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %25 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %25, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %26 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %26, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

define void @equation_42(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %27, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %26, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %25, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_24, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = tail call ptr @marco_malloc(i64 8)
  %22 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %20)
  %23 = fadd double %22, 0xC070380A7B9F18DE
  store double %23, ptr %21, align 8
  tail call void @marco_free(ptr nonnull %21)
  %24 = getelementptr double, ptr @var_27, i64 %18
  store double %23, ptr %24, align 8
  %25 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %25, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %26 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %26, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %27 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %27, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_43(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader4.lr.ph, label %._crit_edge6

.preheader4.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  %10 = mul i64 %0, 224
  %11 = mul i64 %2, 56
  %12 = shl i64 %4, 3
  %13 = mul i64 %0, 192
  %14 = mul i64 %2, 48
  %15 = sub i64 %5, %4
  %16 = shl i64 %15, 3
  %17 = sub i64 %3, %2
  %18 = sub i64 %1, %0
  %19 = getelementptr i8, ptr @var_24, i64 %13
  %20 = getelementptr i8, ptr %19, i64 %14
  %21 = getelementptr i8, ptr %20, i64 %12
  %22 = getelementptr i8, ptr @var_21, i64 %10
  %23 = getelementptr i8, ptr %22, i64 %11
  %24 = getelementptr i8, ptr %23, i64 %12
  %25 = getelementptr i8, ptr %24, i64 8
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge5, %.preheader4.lr.ph
  %indvar = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvar.next, %._crit_edge5 ]
  br i1 %8, label %.preheader.preheader, label %._crit_edge5

.preheader.preheader:                             ; preds = %.preheader4
  %26 = mul i64 %indvar, 192
  %27 = mul i64 %indvar, 224
  %28 = getelementptr i8, ptr %21, i64 %26
  %29 = getelementptr i8, ptr %25, i64 %27
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %indvar7 = phi i64 [ %indvar.next8, %._crit_edge ], [ 0, %.preheader.preheader ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %30 = mul i64 %indvar7, 48
  %scevgep9 = getelementptr i8, ptr %28, i64 %30
  %31 = mul i64 %indvar7, 56
  %scevgep = getelementptr i8, ptr %29, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep9, i64 %16, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvar.next8 = add nuw i64 %indvar7, 1
  %exitcond.not = icmp eq i64 %indvar.next8, %17
  br i1 %exitcond.not, label %._crit_edge5, label %.preheader

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader4
  %indvar.next = add nuw i64 %indvar, 1
  %exitcond10.not = icmp eq i64 %indvar.next, %18
  br i1 %exitcond10.not, label %._crit_edge6, label %.preheader4

._crit_edge6:                                     ; preds = %._crit_edge5, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_44(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #1 {
  %5 = icmp slt i64 %0, %1
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %4
  %6 = icmp slt i64 %2, %3
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %7 = phi i64 [ %0, %.preheader.lr.ph ], [ %17, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr double, ptr @var_30, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -16
  %10 = load double, ptr %9, align 8
  %.idx = mul i64 %7, 224
  %11 = getelementptr i8, ptr @var_21, i64 %.idx
  br label %12

12:                                               ; preds = %12, %.lr.ph
  %13 = phi i64 [ %2, %.lr.ph ], [ %16, %12 ]
  %.idx1 = mul i64 %13, 56
  %14 = getelementptr i8, ptr %11, i64 %.idx1
  %15 = getelementptr i8, ptr %14, i64 -280
  store double %10, ptr %15, align 8
  %16 = add nsw i64 %13, 1
  %exitcond.not = icmp eq i64 %16, %3
  br i1 %exitcond.not, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %12, %.preheader
  %17 = add nsw i64 %7, 1
  %exitcond3.not = icmp eq i64 %17, %1
  br i1 %exitcond3.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none)
define void @equation_45(i64 %0, i64 %1) local_unnamed_addr #2 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %7, %.lr.ph ], [ %0, %2 ]
  %.idx = mul i64 %4, 56
  %5 = getelementptr i8, ptr @var_21, i64 %.idx
  %6 = getelementptr i8, ptr %5, i64 -56
  store double 4.931500e+02, ptr %6, align 8
  %7 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

define void @equation_46(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %25, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 28
  %12 = add i64 %11, -36
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %24, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 7
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %23, %16 ]
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds nuw double, ptr @var_21, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %20)
  %22 = getelementptr double, ptr @var_22, i64 %18
  store double %21, ptr %22, align 8
  %23 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %23, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %24 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %24, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %25 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %25, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_47(i64 %0, i64 %1) local_unnamed_addr #1 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %4 = load double, ptr @var_18, align 8
  %5 = load double, ptr @var_17, align 8
  br label %6

6:                                                ; preds = %22, %.lr.ph
  %7 = phi i64 [ %0, %.lr.ph ], [ %32, %22 ]
  %8 = add i64 %7, -1
  %9 = getelementptr inbounds nuw double, ptr @var_26, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds nuw double, ptr @var_28, i64 %8
  %12 = load double, ptr %11, align 8
  %.idx = mul nuw nsw i64 %8, 224
  %13 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi double [ 0.000000e+00, %6 ], [ %20, %14 ]
  %16 = phi i64 [ 1, %6 ], [ %21, %14 ]
  %.idx2 = mul nuw nsw i64 %16, 56
  %17 = getelementptr i8, ptr %13, i64 %.idx2
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = load double, ptr %18, align 8
  %20 = fadd double %15, %19
  %21 = add nuw nsw i64 %16, 1
  %exitcond.not = icmp eq i64 %21, 5
  br i1 %exitcond.not, label %22, label %14

22:                                               ; preds = %14
  %23 = fmul double %10, 0x3F6B4E81B4E81B4F
  %24 = fmul double %23, %12
  %25 = fmul double %4, %20
  %26 = getelementptr inbounds nuw double, ptr @var_23, i64 %8
  %27 = load double, ptr %26, align 8
  %28 = fmul double %5, %27
  %29 = fsub double %25, %28
  %30 = fdiv double %29, %24
  %31 = getelementptr double, ptr @var_31, i64 %8
  store double %30, ptr %31, align 8
  %32 = add nsw i64 %7, 1
  %exitcond3.not = icmp eq i64 %32, %1
  br i1 %exitcond3.not, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %22, %2
  ret void
}

define void @equation_48(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %32, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -31
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %31, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = mul i64 %13, 6
  %15 = add i64 %12, %14
  br label %16

16:                                               ; preds = %16, %.lr.ph
  %17 = phi i64 [ %4, %.lr.ph ], [ %30, %16 ]
  %18 = load double, ptr @var_17, align 8
  %19 = tail call ptr @llvm.stacksave.p0()
  %20 = tail call double @_Mpow_f64_f64_f64(double %18, double 8.000000e-01)
  call void @llvm.stackrestore.p0(ptr %19)
  %21 = fmul double %20, 0x40615C71C71C71C7
  %22 = add i64 %15, %17
  %23 = getelementptr inbounds nuw double, ptr @var_29, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds nuw double, ptr @var_24, i64 %22
  %26 = load double, ptr %25, align 8
  %27 = fsub double %24, %26
  %28 = fmul double %21, %27
  %29 = getelementptr double, ptr @var_20, i64 %22
  store double %28, ptr %29, align 8
  %30 = add nsw i64 %17, 1
  %exitcond.not = icmp eq i64 %30, %5
  br i1 %exitcond.not, label %._crit_edge, label %16

._crit_edge:                                      ; preds = %16, %.preheader
  %31 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %31, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %32 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %32, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_49(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader2.lr.ph, label %._crit_edge4

.preheader2.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  %10 = load double, ptr @var_18, align 8
  br label %.preheader2

.preheader2:                                      ; preds = %._crit_edge3, %.preheader2.lr.ph
  %11 = phi i64 [ %0, %.preheader2.lr.ph ], [ %43, %._crit_edge3 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %.preheader2
  %12 = add i64 %11, -1
  %13 = mul nuw nsw i64 %12, 24
  %.idx = mul nuw nsw i64 %12, 224
  %14 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %15 = phi i64 [ %2, %.preheader.lr.ph ], [ %42, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %16 = add i64 %15, -1
  %17 = mul nuw nsw i64 %16, 6
  %18 = add nuw nsw i64 %17, %13
  %.idx1 = mul nuw nsw i64 %16, 56
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 %.idx1
  br label %20

20:                                               ; preds = %20, %.lr.ph
  %21 = phi i64 [ %4, %.lr.ph ], [ %41, %20 ]
  %22 = add i64 %21, -1
  %23 = add nuw nsw i64 %18, %22
  %24 = getelementptr inbounds nuw double, ptr @var_25, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, 1.375000e-02
  %27 = getelementptr inbounds nuw double, ptr @var_27, i64 %23
  %28 = load double, ptr %27, align 8
  %29 = fmul double %26, %28
  %30 = getelementptr inbounds nuw double, ptr %19, i64 %22
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds nuw double, ptr %19, i64 %21
  %33 = load double, ptr %32, align 8
  %34 = fsub double %31, %33
  %35 = fmul double %10, %34
  %36 = getelementptr inbounds nuw double, ptr @var_20, i64 %23
  %37 = load double, ptr %36, align 8
  %38 = fadd double %37, %35
  %39 = fdiv double %38, %29
  %40 = getelementptr double, ptr @var_32, i64 %23
  store double %39, ptr %40, align 8
  %41 = add nsw i64 %21, 1
  %exitcond.not = icmp eq i64 %41, %5
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20, %.preheader
  %42 = add nsw i64 %15, 1
  %exitcond5.not = icmp eq i64 %42, %3
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader

._crit_edge3:                                     ; preds = %._crit_edge, %.preheader2
  %43 = add nsw i64 %11, 1
  %exitcond6.not = icmp eq i64 %43, %1
  br i1 %exitcond6.not, label %._crit_edge4, label %.preheader2

._crit_edge4:                                     ; preds = %._crit_edge3, %6
  ret void
}

define void @equation_50(i64 %0, i64 %1) local_unnamed_addr {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %4 = phi i64 [ %17, %.lr.ph ], [ %0, %2 ]
  %5 = load double, ptr @time, align 8
  %6 = fmul double %5, 0x3FB015BF92172844
  %7 = sitofp i64 %4 to double
  %8 = fmul double %7, 0x401921FB54442EEA
  %9 = fmul double %8, 2.500000e-01
  %10 = fadd double %6, %9
  %11 = tail call ptr @llvm.stacksave.p0()
  %12 = tail call double @_Msin_f64_f64(double %10)
  call void @llvm.stackrestore.p0(ptr %11)
  %13 = fadd double %12, 1.000000e+00
  %14 = fmul double %13, 0x40E4585555555555
  %15 = getelementptr double, ptr @var_19, i64 %4
  %16 = getelementptr i8, ptr %15, i64 -8
  store double %14, ptr %16, align 8
  %17 = add nsw i64 %4, 1
  %exitcond.not = icmp eq i64 %17, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define void @equation_51(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #1 {
  %7 = icmp slt i64 %0, %1
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge3

.preheader1.lr.ph:                                ; preds = %6
  %8 = icmp slt i64 %2, %3
  %9 = icmp slt i64 %4, %5
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge2, %.preheader1.lr.ph
  %10 = phi i64 [ %0, %.preheader1.lr.ph ], [ %30, %._crit_edge2 ]
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge2

.preheader.lr.ph:                                 ; preds = %.preheader1
  %11 = mul i64 %10, 24
  %12 = add i64 %11, -25
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %13 = phi i64 [ %2, %.preheader.lr.ph ], [ %29, %._crit_edge ]
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = add i64 %13, -1
  %15 = getelementptr inbounds nuw double, ptr @var_19, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fdiv double %16, 6.000000e+00
  %18 = mul nuw nsw i64 %14, 6
  %19 = add i64 %12, %18
  br label %20

20:                                               ; preds = %20, %.lr.ph
  %21 = phi i64 [ %4, %.lr.ph ], [ %28, %20 ]
  %22 = add i64 %19, %21
  %23 = getelementptr inbounds nuw double, ptr @var_20, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fsub double %17, %24
  %26 = fdiv double %25, 0x40615C71C71C71C7
  %27 = getelementptr double, ptr @var_33, i64 %22
  store double %26, ptr %27, align 8
  %28 = add nsw i64 %21, 1
  %exitcond.not = icmp eq i64 %28, %5
  br i1 %exitcond.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %20, %.preheader
  %29 = add nsw i64 %13, 1
  %exitcond4.not = icmp eq i64 %29, %3
  br i1 %exitcond4.not, label %._crit_edge2, label %.preheader

._crit_edge2:                                     ; preds = %._crit_edge, %.preheader1
  %30 = add nsw i64 %10, 1
  %exitcond5.not = icmp eq i64 %30, %1
  br i1 %exitcond5.not, label %._crit_edge3, label %.preheader1

._crit_edge3:                                     ; preds = %._crit_edge2, %6
  ret void
}

define void @MethanolHeatExchangers_dynamic() local_unnamed_addr {
  %1 = load double, ptr @time, align 8
  %2 = fmul double %1, 0x3FCACEE9F37BEDC6
  %3 = tail call double @_Msin_f64_f64(double %2)
  %4 = fmul double %3, 2.000000e-01
  %5 = fadd double %4, 1.000000e+00
  store double %5, ptr @var_17, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %0
  %6 = phi i64 [ %13, %.lr.ph.i ], [ 1, %0 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds nuw double, ptr @var_30, i64 %7
  %9 = load double, ptr %8, align 8
  %10 = fmul double %9, 0x4070380A7B9F18DE
  %11 = fdiv double 2.000000e+06, %10
  %12 = getelementptr double, ptr @var_26, i64 %7
  store double %11, ptr %12, align 8
  %13 = add nuw nsw i64 %6, 1
  %exitcond.not.i = icmp eq i64 %13, 4
  br i1 %exitcond.not.i, label %.lr.ph.i1, label %.lr.ph.i

.lr.ph.i1:                                        ; preds = %.lr.ph.i1, %.lr.ph.i
  %14 = phi i64 [ %20, %.lr.ph.i1 ], [ 1, %.lr.ph.i ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds nuw double, ptr @var_30, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %17)
  %19 = getelementptr double, ptr @var_23, i64 %15
  store double %18, ptr %19, align 8
  %20 = add nuw nsw i64 %14, 1
  %exitcond.not.i2 = icmp eq i64 %20, 4
  br i1 %exitcond.not.i2, label %.lr.ph.i3, label %.lr.ph.i1

.lr.ph.i3:                                        ; preds = %.lr.ph.i3, %.lr.ph.i1
  %21 = phi i64 [ %29, %.lr.ph.i3 ], [ 1, %.lr.ph.i1 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds nuw double, ptr @var_30, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = tail call ptr @marco_malloc(i64 8)
  %26 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %24)
  %27 = fadd double %26, 0xC070380A7B9F18DE
  store double %27, ptr %25, align 8
  tail call void @marco_free(ptr nonnull %25)
  %28 = getelementptr double, ptr @var_28, i64 %22
  store double %27, ptr %28, align 8
  %29 = add nuw nsw i64 %21, 1
  %exitcond.not.i4 = icmp eq i64 %29, 4
  br i1 %exitcond.not.i4, label %.preheader1.i, label %.lr.ph.i3

.preheader1.i:                                    ; preds = %._crit_edge2.i, %.lr.ph.i3
  %30 = phi i64 [ %46, %._crit_edge2.i ], [ 1, %.lr.ph.i3 ]
  %31 = mul nuw nsw i64 %30, 24
  %32 = add nsw i64 %31, -31
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader1.i
  %33 = phi i64 [ 1, %.preheader1.i ], [ %45, %._crit_edge.i ]
  %34 = mul nuw nsw i64 %33, 6
  %35 = add nsw i64 %32, %34
  br label %36

36:                                               ; preds = %36, %.preheader.i
  %37 = phi i64 [ 1, %.preheader.i ], [ %44, %36 ]
  %38 = add nsw i64 %35, %37
  %39 = getelementptr inbounds nuw double, ptr @var_24, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fmul double %40, 0x4070380A7B9F18DE
  %42 = fdiv double 2.000000e+06, %41
  %43 = getelementptr double, ptr @var_25, i64 %38
  store double %42, ptr %43, align 8
  %44 = add nuw nsw i64 %37, 1
  %exitcond.not.i6 = icmp eq i64 %44, 7
  br i1 %exitcond.not.i6, label %._crit_edge.i, label %36

._crit_edge.i:                                    ; preds = %36
  %45 = add nuw nsw i64 %33, 1
  %exitcond4.not.i = icmp eq i64 %45, 5
  br i1 %exitcond4.not.i, label %._crit_edge2.i, label %.preheader.i

._crit_edge2.i:                                   ; preds = %._crit_edge.i
  %46 = add nuw nsw i64 %30, 1
  %exitcond5.not.i = icmp eq i64 %46, 4
  br i1 %exitcond5.not.i, label %.preheader1.i7, label %.preheader1.i

.preheader1.i7:                                   ; preds = %._crit_edge2.i13, %._crit_edge2.i
  %47 = phi i64 [ %64, %._crit_edge2.i13 ], [ 1, %._crit_edge2.i ]
  %48 = mul nuw nsw i64 %47, 24
  %49 = add nsw i64 %48, -31
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %._crit_edge.i11, %.preheader1.i7
  %50 = phi i64 [ 1, %.preheader1.i7 ], [ %63, %._crit_edge.i11 ]
  %51 = mul nuw nsw i64 %50, 6
  %52 = add nsw i64 %49, %51
  br label %53

53:                                               ; preds = %53, %.preheader.i8
  %54 = phi i64 [ 1, %.preheader.i8 ], [ %62, %53 ]
  %55 = add nsw i64 %52, %54
  %56 = getelementptr inbounds nuw double, ptr @var_24, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = tail call ptr @marco_malloc(i64 8)
  %59 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %57)
  %60 = fadd double %59, 0xC070380A7B9F18DE
  store double %60, ptr %58, align 8
  tail call void @marco_free(ptr nonnull %58)
  %61 = getelementptr double, ptr @var_27, i64 %55
  store double %60, ptr %61, align 8
  %62 = add nuw nsw i64 %54, 1
  %exitcond.not.i10 = icmp eq i64 %62, 7
  br i1 %exitcond.not.i10, label %._crit_edge.i11, label %53

._crit_edge.i11:                                  ; preds = %53
  %63 = add nuw nsw i64 %50, 1
  %exitcond4.not.i12 = icmp eq i64 %63, 5
  br i1 %exitcond4.not.i12, label %._crit_edge2.i13, label %.preheader.i8

._crit_edge2.i13:                                 ; preds = %._crit_edge.i11
  %64 = add nuw nsw i64 %47, 1
  %exitcond5.not.i14 = icmp eq i64 %64, 4
  br i1 %exitcond5.not.i14, label %.preheader4.i, label %.preheader1.i7

.preheader4.i:                                    ; preds = %._crit_edge5.i, %._crit_edge2.i13
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge5.i ], [ 0, %._crit_edge2.i13 ]
  %65 = mul nuw nsw i64 %indvar.i, 224
  %66 = mul nuw nsw i64 %indvar.i, 192
  %67 = getelementptr i8, ptr @var_24, i64 %66
  %68 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @var_21, i64 8), i64 %65
  br label %.preheader.i15

.preheader.i15:                                   ; preds = %.preheader.i15, %.preheader4.i
  %indvar7.i = phi i64 [ %indvar.next8.i, %.preheader.i15 ], [ 0, %.preheader4.i ]
  %69 = mul nuw nsw i64 %indvar7.i, 48
  %scevgep9.i = getelementptr i8, ptr %67, i64 %69
  %70 = mul nuw nsw i64 %indvar7.i, 56
  %scevgep.i = getelementptr i8, ptr %68, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(48) %scevgep9.i, i64 48, i1 false)
  %indvar.next8.i = add nuw nsw i64 %indvar7.i, 1
  %exitcond.not.i18 = icmp eq i64 %indvar.next8.i, 4
  br i1 %exitcond.not.i18, label %._crit_edge5.i, label %.preheader.i15

._crit_edge5.i:                                   ; preds = %.preheader.i15
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond10.not.i = icmp eq i64 %indvar.next.i, 3
  br i1 %exitcond10.not.i, label %.preheader.i19, label %.preheader4.i

.preheader.i19:                                   ; preds = %._crit_edge.i22, %._crit_edge5.i
  %exitcond3.not.i = phi i1 [ true, %._crit_edge.i22 ], [ false, %._crit_edge5.i ]
  %71 = phi i64 [ 3, %._crit_edge.i22 ], [ 2, %._crit_edge5.i ]
  %72 = getelementptr double, ptr @var_30, i64 %71
  %73 = getelementptr i8, ptr %72, i64 -16
  %74 = load double, ptr %73, align 8
  %.idx.i = mul nuw nsw i64 %71, 224
  %75 = getelementptr i8, ptr @var_21, i64 %.idx.i
  br label %76

76:                                               ; preds = %76, %.preheader.i19
  %77 = phi i64 [ 1, %.preheader.i19 ], [ %80, %76 ]
  %.idx1.i = mul nuw nsw i64 %77, 56
  %78 = getelementptr i8, ptr %75, i64 %.idx1.i
  %79 = getelementptr i8, ptr %78, i64 -280
  store double %74, ptr %79, align 8
  %80 = add nuw nsw i64 %77, 1
  %exitcond.not.i21 = icmp eq i64 %80, 5
  br i1 %exitcond.not.i21, label %._crit_edge.i22, label %76

._crit_edge.i22:                                  ; preds = %76
  br i1 %exitcond3.not.i, label %.lr.ph.i24, label %.preheader.i19

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %._crit_edge.i22
  %81 = phi i64 [ %84, %.lr.ph.i24 ], [ 1, %._crit_edge.i22 ]
  %.idx.i25 = mul nuw nsw i64 %81, 56
  %82 = getelementptr i8, ptr @var_21, i64 %.idx.i25
  %83 = getelementptr i8, ptr %82, i64 -56
  store double 4.931500e+02, ptr %83, align 8
  %84 = add nuw nsw i64 %81, 1
  %exitcond.not.i26 = icmp eq i64 %84, 5
  br i1 %exitcond.not.i26, label %.lr.ph.i28, label %.lr.ph.i24

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.i24
  %85 = phi i64 [ %98, %.lr.ph.i28 ], [ 1, %.lr.ph.i24 ]
  %86 = load double, ptr @time, align 8
  %87 = fmul double %86, 0x3FB015BF92172844
  %88 = uitofp nneg i64 %85 to double
  %89 = fmul double %88, 0x401921FB54442EEA
  %90 = fmul double %89, 2.500000e-01
  %91 = fadd double %87, %90
  %92 = tail call ptr @llvm.stacksave.p0()
  %93 = tail call double @_Msin_f64_f64(double %91)
  call void @llvm.stackrestore.p0(ptr %92)
  %94 = fadd double %93, 1.000000e+00
  %95 = fmul double %94, 0x40E4585555555555
  %96 = getelementptr double, ptr @var_19, i64 %85
  %97 = getelementptr i8, ptr %96, i64 -8
  store double %95, ptr %97, align 8
  %98 = add nuw nsw i64 %85, 1
  %exitcond.not.i29 = icmp eq i64 %98, 5
  br i1 %exitcond.not.i29, label %equation_13.exit, label %.lr.ph.i28

equation_13.exit:                                 ; preds = %.lr.ph.i28
  %99 = load double, ptr @var_17, align 8
  %100 = fmul double %99, 2.500000e-01
  store double %100, ptr @var_18, align 8
  br label %.preheader1.i31

.preheader1.i31:                                  ; preds = %._crit_edge2.i37, %equation_13.exit
  %101 = phi i64 [ 1, %equation_13.exit ], [ %123, %._crit_edge2.i37 ]
  %102 = mul nuw nsw i64 %101, 24
  %103 = add nsw i64 %102, -31
  br label %.preheader.i32

.preheader.i32:                                   ; preds = %._crit_edge.i35, %.preheader1.i31
  %104 = phi i64 [ 1, %.preheader1.i31 ], [ %122, %._crit_edge.i35 ]
  %105 = mul nuw nsw i64 %104, 6
  %106 = add nsw i64 %103, %105
  br label %107

107:                                              ; preds = %107, %.preheader.i32
  %108 = phi i64 [ 1, %.preheader.i32 ], [ %121, %107 ]
  %109 = load double, ptr @var_17, align 8
  %110 = tail call ptr @llvm.stacksave.p0()
  %111 = tail call double @_Mpow_f64_f64_f64(double %109, double 8.000000e-01)
  call void @llvm.stackrestore.p0(ptr %110)
  %112 = fmul double %111, 0x40615C71C71C71C7
  %113 = add nsw i64 %106, %108
  %114 = getelementptr inbounds nuw double, ptr @var_29, i64 %113
  %115 = load double, ptr %114, align 8
  %116 = getelementptr inbounds nuw double, ptr @var_24, i64 %113
  %117 = load double, ptr %116, align 8
  %118 = fsub double %115, %117
  %119 = fmul double %112, %118
  %120 = getelementptr double, ptr @var_20, i64 %113
  store double %119, ptr %120, align 8
  %121 = add nuw nsw i64 %108, 1
  %exitcond.not.i34 = icmp eq i64 %121, 7
  br i1 %exitcond.not.i34, label %._crit_edge.i35, label %107

._crit_edge.i35:                                  ; preds = %107
  %122 = add nuw nsw i64 %104, 1
  %exitcond4.not.i36 = icmp eq i64 %122, 5
  br i1 %exitcond4.not.i36, label %._crit_edge2.i37, label %.preheader.i32

._crit_edge2.i37:                                 ; preds = %._crit_edge.i35
  %123 = add nuw nsw i64 %101, 1
  %exitcond5.not.i38 = icmp eq i64 %123, 4
  br i1 %exitcond5.not.i38, label %.preheader1.i39, label %.preheader1.i31

.preheader1.i39:                                  ; preds = %._crit_edge2.i45, %._crit_edge2.i37
  %124 = phi i64 [ %139, %._crit_edge2.i45 ], [ 1, %._crit_edge2.i37 ]
  %125 = mul nuw nsw i64 %124, 28
  %126 = add nsw i64 %125, -36
  br label %.preheader.i40

.preheader.i40:                                   ; preds = %._crit_edge.i43, %.preheader1.i39
  %127 = phi i64 [ 1, %.preheader1.i39 ], [ %138, %._crit_edge.i43 ]
  %128 = mul nuw nsw i64 %127, 7
  %129 = add nsw i64 %126, %128
  br label %130

130:                                              ; preds = %130, %.preheader.i40
  %131 = phi i64 [ 1, %.preheader.i40 ], [ %137, %130 ]
  %132 = add nsw i64 %129, %131
  %133 = getelementptr inbounds nuw double, ptr @var_21, i64 %132
  %134 = load double, ptr %133, align 8
  %135 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %134)
  %136 = getelementptr double, ptr @var_22, i64 %132
  store double %135, ptr %136, align 8
  %137 = add nuw nsw i64 %131, 1
  %exitcond.not.i42 = icmp eq i64 %137, 8
  br i1 %exitcond.not.i42, label %._crit_edge.i43, label %130

._crit_edge.i43:                                  ; preds = %130
  %138 = add nuw nsw i64 %127, 1
  %exitcond4.not.i44 = icmp eq i64 %138, 5
  br i1 %exitcond4.not.i44, label %._crit_edge2.i45, label %.preheader.i40

._crit_edge2.i45:                                 ; preds = %._crit_edge.i43
  %139 = add nuw nsw i64 %124, 1
  %exitcond5.not.i46 = icmp eq i64 %139, 4
  br i1 %exitcond5.not.i46, label %.preheader1.i47.preheader, label %.preheader1.i39

.preheader1.i47.preheader:                        ; preds = %._crit_edge2.i45
  %140 = load double, ptr @var_18, align 8
  %141 = load double, ptr @var_17, align 8
  br label %.preheader1.i47

.preheader1.i47:                                  ; preds = %._crit_edge3.i, %.preheader1.i47.preheader
  %142 = phi i64 [ %199, %._crit_edge3.i ], [ 1, %.preheader1.i47.preheader ]
  %143 = mul nuw nsw i64 %142, 24
  %144 = add nsw i64 %143, -25
  %145 = add nsw i64 %142, -1
  %146 = getelementptr inbounds nuw double, ptr @var_26, i64 %145
  %147 = load double, ptr %146, align 8
  %148 = getelementptr inbounds nuw double, ptr @var_28, i64 %145
  %149 = load double, ptr %148, align 8
  %.idx.i56 = mul nuw nsw i64 %145, 224
  %150 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx.i56
  %151 = add nsw i64 %142, -1
  %152 = mul nuw nsw i64 %151, 24
  %.idx.i60 = mul nuw nsw i64 %151, 224
  %153 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx.i60
  br label %.preheader.i48

.preheader.i48:                                   ; preds = %._crit_edge.i65, %.preheader1.i47
  %154 = phi i64 [ 1, %.preheader1.i47 ], [ %194, %._crit_edge.i65 ]
  %155 = phi double [ 0.000000e+00, %.preheader1.i47 ], [ %198, %._crit_edge.i65 ]
  %156 = add nsw i64 %154, -1
  %157 = getelementptr inbounds nuw double, ptr @var_19, i64 %156
  %158 = load double, ptr %157, align 8
  %159 = fdiv double %158, 6.000000e+00
  %160 = mul nuw nsw i64 %156, 6
  %161 = add nsw i64 %144, %160
  %162 = add nsw i64 %154, -1
  %163 = mul nuw nsw i64 %162, 6
  %164 = add nuw nsw i64 %163, %152
  %.idx1.i63 = mul nuw nsw i64 %162, 56
  %165 = getelementptr inbounds nuw i8, ptr %153, i64 %.idx1.i63
  br label %166

166:                                              ; preds = %166, %.preheader.i48
  %167 = phi i64 [ 1, %.preheader.i48 ], [ %174, %166 ]
  %168 = add nsw i64 %161, %167
  %169 = getelementptr inbounds nuw double, ptr @var_20, i64 %168
  %170 = load double, ptr %169, align 8
  %171 = fsub double %159, %170
  %172 = fdiv double %171, 0x40615C71C71C71C7
  %173 = getelementptr double, ptr @var_33, i64 %168
  store double %172, ptr %173, align 8
  %174 = add nuw nsw i64 %167, 1
  %175 = add nsw i64 %167, -1
  %176 = add nuw nsw i64 %164, %175
  %177 = getelementptr inbounds nuw double, ptr @var_25, i64 %176
  %178 = load double, ptr %177, align 8
  %179 = fmul double %178, 1.375000e-02
  %180 = getelementptr inbounds nuw double, ptr @var_27, i64 %176
  %181 = load double, ptr %180, align 8
  %182 = fmul double %179, %181
  %183 = getelementptr inbounds nuw double, ptr %165, i64 %175
  %184 = load double, ptr %183, align 8
  %185 = getelementptr inbounds nuw double, ptr %165, i64 %167
  %186 = load double, ptr %185, align 8
  %187 = fsub double %184, %186
  %188 = fmul double %140, %187
  %189 = getelementptr inbounds nuw double, ptr @var_20, i64 %176
  %190 = load double, ptr %189, align 8
  %191 = fadd double %190, %188
  %192 = fdiv double %191, %182
  %193 = getelementptr double, ptr @var_32, i64 %176
  store double %192, ptr %193, align 8
  %exitcond.not.i64 = icmp eq i64 %174, 7
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %166

._crit_edge.i65:                                  ; preds = %166
  %194 = add nuw nsw i64 %154, 1
  %.idx2.i = mul nuw nsw i64 %154, 56
  %195 = getelementptr i8, ptr %150, i64 %.idx2.i
  %196 = getelementptr i8, ptr %195, i64 -8
  %197 = load double, ptr %196, align 8
  %198 = fadd double %155, %197
  %exitcond5.not.i66 = icmp eq i64 %194, 5
  br i1 %exitcond5.not.i66, label %._crit_edge3.i, label %.preheader.i48

._crit_edge3.i:                                   ; preds = %._crit_edge.i65
  %199 = add nuw nsw i64 %142, 1
  %200 = fmul double %147, 0x3F6B4E81B4E81B4F
  %201 = fmul double %200, %149
  %202 = fmul double %140, %198
  %203 = getelementptr inbounds nuw double, ptr @var_23, i64 %145
  %204 = load double, ptr %203, align 8
  %205 = fmul double %141, %204
  %206 = fsub double %202, %205
  %207 = fdiv double %206, %201
  %208 = getelementptr double, ptr @var_31, i64 %145
  store double %207, ptr %208, align 8
  %exitcond6.not.i = icmp eq i64 %199, 4
  br i1 %exitcond6.not.i, label %equation_12.exit, label %.preheader1.i47

equation_12.exit:                                 ; preds = %._crit_edge3.i
  ret void
}

define void @MethanolHeatExchangers_schedule_state_variables() local_unnamed_addr {
  tail call void @euler_state_update_T_tilde()
  tail call void @euler_state_update_T_w()
  tail call void @euler_state_update_T_m()
  ret void
}

define void @MethanolHeatExchangers_ic() local_unnamed_addr {
  store i64 3, ptr @var, align 8
  store i64 4, ptr @var_0, align 8
  store i64 6, ptr @var_1, align 8
  store double 1.000000e+00, ptr @var_2, align 8
  store double 5.000000e+05, ptr @var_3, align 8
  store double 0x3FA1111111111111, ptr @var_4, align 8
  store double 1.000000e-02, ptr @var_5, align 8
  store double 4.931500e+02, ptr @var_6, align 8
  store double 1.000000e+00, ptr @var_7, align 8
  store double 1.000000e-02, ptr @var_8, align 8
  store double 1.000000e+04, ptr @var_9, align 8
  store double 8.000000e-01, ptr @var_10, align 8
  store double 1.000000e+04, ptr @var_11, align 8
  store double 2.000000e+06, ptr @var_12, align 8
  store double 1.375000e-02, ptr @var_13, align 8
  store double 0x3F6B4E81B4E81B4F, ptr @var_14, align 8
  store double 0x40615C71C71C71C7, ptr @var_15, align 8
  store double 0x400921FB54442EEA, ptr @var_16, align 8
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %._crit_edge3.i8, %0
  %1 = phi i64 [ 0, %0 ], [ %13, %._crit_edge3.i8 ]
  %.idx.i = mul nuw nsw i64 %1, 192
  %2 = getelementptr i8, ptr @var_24, i64 %.idx.i
  %.idx.i2 = mul nuw nsw i64 %1, 192
  %3 = getelementptr i8, ptr @var_29, i64 %.idx.i2
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i6, %.preheader2.i
  %4 = phi i64 [ 0, %.preheader2.i ], [ %12, %._crit_edge.i6 ]
  %.idx1.i = mul nuw nsw i64 %4, 48
  %5 = getelementptr i8, ptr %2, i64 %.idx1.i
  %.idx1.i4 = mul nuw nsw i64 %4, 48
  %6 = getelementptr i8, ptr %3, i64 %.idx1.i4
  br label %7

7:                                                ; preds = %7, %.preheader.i
  %8 = phi i64 [ 0, %.preheader.i ], [ %10, %7 ]
  %9 = getelementptr double, ptr %5, i64 %8
  store double 4.931500e+02, ptr %9, align 8
  %10 = add nuw nsw i64 %8, 1
  %11 = getelementptr double, ptr %6, i64 %8
  store double 4.931500e+02, ptr %11, align 8
  %exitcond.not.i5 = icmp eq i64 %10, 6
  br i1 %exitcond.not.i5, label %._crit_edge.i6, label %7

._crit_edge.i6:                                   ; preds = %7
  %12 = add nuw nsw i64 %4, 1
  %exitcond5.not.i7 = icmp eq i64 %12, 4
  br i1 %exitcond5.not.i7, label %._crit_edge3.i8, label %.preheader.i

._crit_edge3.i8:                                  ; preds = %._crit_edge.i6
  %13 = add nuw nsw i64 %1, 1
  %14 = getelementptr double, ptr @var_30, i64 %1
  store double 4.931500e+02, ptr %14, align 8
  %exitcond.not.i10 = icmp eq i64 %13, 3
  br i1 %exitcond.not.i10, label %equation_35.exit, label %.preheader2.i

equation_35.exit:                                 ; preds = %._crit_edge3.i8
  %15 = load double, ptr @time, align 8
  %16 = fmul double %15, 0x3FCACEE9F37BEDC6
  %17 = tail call double @_Msin_f64_f64(double %16)
  %18 = fmul double %17, 2.000000e-01
  %19 = fadd double %18, 1.000000e+00
  store double %19, ptr @var_17, align 8
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %equation_35.exit
  %20 = phi i64 [ %23, %.lr.ph.i12 ], [ 1, %equation_35.exit ]
  %.idx.i13 = mul nuw nsw i64 %20, 56
  %21 = getelementptr i8, ptr @var_21, i64 %.idx.i13
  %22 = getelementptr i8, ptr %21, i64 -56
  store double 4.931500e+02, ptr %22, align 8
  %23 = add nuw nsw i64 %20, 1
  %exitcond.not.i14 = icmp eq i64 %23, 5
  br i1 %exitcond.not.i14, label %.lr.ph.i16, label %.lr.ph.i12

.lr.ph.i16:                                       ; preds = %.lr.ph.i16, %.lr.ph.i12
  %24 = phi i64 [ %37, %.lr.ph.i16 ], [ 1, %.lr.ph.i12 ]
  %25 = load double, ptr @time, align 8
  %26 = fmul double %25, 0x3FB015BF92172844
  %27 = uitofp nneg i64 %24 to double
  %28 = fmul double %27, 0x401921FB54442EEA
  %29 = fmul double %28, 2.500000e-01
  %30 = fadd double %26, %29
  %31 = tail call ptr @llvm.stacksave.p0()
  %32 = tail call double @_Msin_f64_f64(double %30)
  call void @llvm.stackrestore.p0(ptr %31)
  %33 = fadd double %32, 1.000000e+00
  %34 = fmul double %33, 0x40E4585555555555
  %35 = getelementptr double, ptr @var_19, i64 %24
  %36 = getelementptr i8, ptr %35, i64 -8
  store double %34, ptr %36, align 8
  %37 = add nuw nsw i64 %24, 1
  %exitcond.not.i17 = icmp eq i64 %37, 5
  br i1 %exitcond.not.i17, label %.preheader1.i, label %.lr.ph.i16

.preheader1.i:                                    ; preds = %._crit_edge2.i, %.lr.ph.i16
  %38 = phi i64 [ %54, %._crit_edge2.i ], [ 1, %.lr.ph.i16 ]
  %39 = mul nuw nsw i64 %38, 24
  %40 = add nsw i64 %39, -31
  br label %.preheader.i19

.preheader.i19:                                   ; preds = %._crit_edge.i22, %.preheader1.i
  %41 = phi i64 [ 1, %.preheader1.i ], [ %53, %._crit_edge.i22 ]
  %42 = mul nuw nsw i64 %41, 6
  %43 = add nsw i64 %40, %42
  br label %44

44:                                               ; preds = %44, %.preheader.i19
  %45 = phi i64 [ 1, %.preheader.i19 ], [ %52, %44 ]
  %46 = add nsw i64 %43, %45
  %47 = getelementptr inbounds nuw double, ptr @var_24, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = fmul double %48, 0x4070380A7B9F18DE
  %50 = fdiv double 2.000000e+06, %49
  %51 = getelementptr double, ptr @var_25, i64 %46
  store double %50, ptr %51, align 8
  %52 = add nuw nsw i64 %45, 1
  %exitcond.not.i21 = icmp eq i64 %52, 7
  br i1 %exitcond.not.i21, label %._crit_edge.i22, label %44

._crit_edge.i22:                                  ; preds = %44
  %53 = add nuw nsw i64 %41, 1
  %exitcond4.not.i = icmp eq i64 %53, 5
  br i1 %exitcond4.not.i, label %._crit_edge2.i, label %.preheader.i19

._crit_edge2.i:                                   ; preds = %._crit_edge.i22
  %54 = add nuw nsw i64 %38, 1
  %exitcond5.not.i23 = icmp eq i64 %54, 4
  br i1 %exitcond5.not.i23, label %.preheader1.i25, label %.preheader1.i

.preheader1.i25:                                  ; preds = %._crit_edge2.i31, %._crit_edge2.i
  %55 = phi i64 [ %72, %._crit_edge2.i31 ], [ 1, %._crit_edge2.i ]
  %56 = mul nuw nsw i64 %55, 24
  %57 = add nsw i64 %56, -31
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %._crit_edge.i29, %.preheader1.i25
  %58 = phi i64 [ 1, %.preheader1.i25 ], [ %71, %._crit_edge.i29 ]
  %59 = mul nuw nsw i64 %58, 6
  %60 = add nsw i64 %57, %59
  br label %61

61:                                               ; preds = %61, %.preheader.i26
  %62 = phi i64 [ 1, %.preheader.i26 ], [ %70, %61 ]
  %63 = add nsw i64 %60, %62
  %64 = getelementptr inbounds nuw double, ptr @var_24, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = tail call ptr @marco_malloc(i64 8)
  %67 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %65)
  %68 = fadd double %67, 0xC070380A7B9F18DE
  store double %68, ptr %66, align 8
  tail call void @marco_free(ptr nonnull %66)
  %69 = getelementptr double, ptr @var_27, i64 %63
  store double %68, ptr %69, align 8
  %70 = add nuw nsw i64 %62, 1
  %exitcond.not.i28 = icmp eq i64 %70, 7
  br i1 %exitcond.not.i28, label %._crit_edge.i29, label %61

._crit_edge.i29:                                  ; preds = %61
  %71 = add nuw nsw i64 %58, 1
  %exitcond4.not.i30 = icmp eq i64 %71, 5
  br i1 %exitcond4.not.i30, label %._crit_edge2.i31, label %.preheader.i26

._crit_edge2.i31:                                 ; preds = %._crit_edge.i29
  %72 = add nuw nsw i64 %55, 1
  %exitcond5.not.i32 = icmp eq i64 %72, 4
  br i1 %exitcond5.not.i32, label %.preheader4.i, label %.preheader1.i25

.preheader4.i:                                    ; preds = %._crit_edge5.i, %._crit_edge2.i31
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge5.i ], [ 0, %._crit_edge2.i31 ]
  %73 = mul nuw nsw i64 %indvar.i, 224
  %74 = mul nuw nsw i64 %indvar.i, 192
  %75 = getelementptr i8, ptr @var_24, i64 %74
  %76 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @var_21, i64 8), i64 %73
  br label %.preheader.i34

.preheader.i34:                                   ; preds = %.preheader.i34, %.preheader4.i
  %indvar7.i = phi i64 [ %indvar.next8.i, %.preheader.i34 ], [ 0, %.preheader4.i ]
  %77 = mul nuw nsw i64 %indvar7.i, 48
  %scevgep9.i = getelementptr i8, ptr %75, i64 %77
  %78 = mul nuw nsw i64 %indvar7.i, 56
  %scevgep.i = getelementptr i8, ptr %76, i64 %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(48) %scevgep9.i, i64 48, i1 false)
  %indvar.next8.i = add nuw nsw i64 %indvar7.i, 1
  %exitcond.not.i37 = icmp eq i64 %indvar.next8.i, 4
  br i1 %exitcond.not.i37, label %._crit_edge5.i, label %.preheader.i34

._crit_edge5.i:                                   ; preds = %.preheader.i34
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond10.not.i = icmp eq i64 %indvar.next.i, 3
  br i1 %exitcond10.not.i, label %.lr.ph.i38, label %.preheader4.i

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %._crit_edge5.i
  %79 = phi i64 [ %86, %.lr.ph.i38 ], [ 1, %._crit_edge5.i ]
  %80 = add nsw i64 %79, -1
  %81 = getelementptr inbounds nuw double, ptr @var_30, i64 %80
  %82 = load double, ptr %81, align 8
  %83 = fmul double %82, 0x4070380A7B9F18DE
  %84 = fdiv double 2.000000e+06, %83
  %85 = getelementptr double, ptr @var_26, i64 %80
  store double %84, ptr %85, align 8
  %86 = add nuw nsw i64 %79, 1
  %exitcond.not.i39 = icmp eq i64 %86, 4
  br i1 %exitcond.not.i39, label %.lr.ph.i41, label %.lr.ph.i38

.lr.ph.i41:                                       ; preds = %.lr.ph.i41, %.lr.ph.i38
  %87 = phi i64 [ %93, %.lr.ph.i41 ], [ 1, %.lr.ph.i38 ]
  %88 = add nsw i64 %87, -1
  %89 = getelementptr inbounds nuw double, ptr @var_30, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %90)
  %92 = getelementptr double, ptr @var_23, i64 %88
  store double %91, ptr %92, align 8
  %93 = add nuw nsw i64 %87, 1
  %exitcond.not.i42 = icmp eq i64 %93, 4
  br i1 %exitcond.not.i42, label %.lr.ph.i44, label %.lr.ph.i41

.lr.ph.i44:                                       ; preds = %.lr.ph.i44, %.lr.ph.i41
  %94 = phi i64 [ %102, %.lr.ph.i44 ], [ 1, %.lr.ph.i41 ]
  %95 = add nsw i64 %94, -1
  %96 = getelementptr inbounds nuw double, ptr @var_30, i64 %95
  %97 = load double, ptr %96, align 8
  %98 = tail call ptr @marco_malloc(i64 8)
  %99 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.cp_T(double %97)
  %100 = fadd double %99, 0xC070380A7B9F18DE
  store double %100, ptr %98, align 8
  tail call void @marco_free(ptr nonnull %98)
  %101 = getelementptr double, ptr @var_28, i64 %95
  store double %100, ptr %101, align 8
  %102 = add nuw nsw i64 %94, 1
  %exitcond.not.i45 = icmp eq i64 %102, 4
  br i1 %exitcond.not.i45, label %.preheader.i47, label %.lr.ph.i44

.preheader.i47:                                   ; preds = %._crit_edge.i52, %.lr.ph.i44
  %exitcond3.not.i = phi i1 [ true, %._crit_edge.i52 ], [ false, %.lr.ph.i44 ]
  %103 = phi i64 [ 3, %._crit_edge.i52 ], [ 2, %.lr.ph.i44 ]
  %104 = getelementptr double, ptr @var_30, i64 %103
  %105 = getelementptr i8, ptr %104, i64 -16
  %106 = load double, ptr %105, align 8
  %.idx.i49 = mul nuw nsw i64 %103, 224
  %107 = getelementptr i8, ptr @var_21, i64 %.idx.i49
  br label %108

108:                                              ; preds = %108, %.preheader.i47
  %109 = phi i64 [ 1, %.preheader.i47 ], [ %112, %108 ]
  %.idx1.i50 = mul nuw nsw i64 %109, 56
  %110 = getelementptr i8, ptr %107, i64 %.idx1.i50
  %111 = getelementptr i8, ptr %110, i64 -280
  store double %106, ptr %111, align 8
  %112 = add nuw nsw i64 %109, 1
  %exitcond.not.i51 = icmp eq i64 %112, 5
  br i1 %exitcond.not.i51, label %._crit_edge.i52, label %108

._crit_edge.i52:                                  ; preds = %108
  br i1 %exitcond3.not.i, label %equation_44.exit, label %.preheader.i47

equation_44.exit:                                 ; preds = %._crit_edge.i52
  %113 = load double, ptr @var_17, align 8
  %114 = fmul double %113, 2.500000e-01
  store double %114, ptr @var_18, align 8
  br label %.preheader1.i54

.preheader1.i54:                                  ; preds = %._crit_edge2.i60, %equation_44.exit
  %115 = phi i64 [ 1, %equation_44.exit ], [ %137, %._crit_edge2.i60 ]
  %116 = mul nuw nsw i64 %115, 24
  %117 = add nsw i64 %116, -31
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %._crit_edge.i58, %.preheader1.i54
  %118 = phi i64 [ 1, %.preheader1.i54 ], [ %136, %._crit_edge.i58 ]
  %119 = mul nuw nsw i64 %118, 6
  %120 = add nsw i64 %117, %119
  br label %121

121:                                              ; preds = %121, %.preheader.i55
  %122 = phi i64 [ 1, %.preheader.i55 ], [ %135, %121 ]
  %123 = load double, ptr @var_17, align 8
  %124 = tail call ptr @llvm.stacksave.p0()
  %125 = tail call double @_Mpow_f64_f64_f64(double %123, double 8.000000e-01)
  call void @llvm.stackrestore.p0(ptr %124)
  %126 = fmul double %125, 0x40615C71C71C71C7
  %127 = add nsw i64 %120, %122
  %128 = getelementptr inbounds nuw double, ptr @var_29, i64 %127
  %129 = load double, ptr %128, align 8
  %130 = getelementptr inbounds nuw double, ptr @var_24, i64 %127
  %131 = load double, ptr %130, align 8
  %132 = fsub double %129, %131
  %133 = fmul double %126, %132
  %134 = getelementptr double, ptr @var_20, i64 %127
  store double %133, ptr %134, align 8
  %135 = add nuw nsw i64 %122, 1
  %exitcond.not.i57 = icmp eq i64 %135, 7
  br i1 %exitcond.not.i57, label %._crit_edge.i58, label %121

._crit_edge.i58:                                  ; preds = %121
  %136 = add nuw nsw i64 %118, 1
  %exitcond4.not.i59 = icmp eq i64 %136, 5
  br i1 %exitcond4.not.i59, label %._crit_edge2.i60, label %.preheader.i55

._crit_edge2.i60:                                 ; preds = %._crit_edge.i58
  %137 = add nuw nsw i64 %115, 1
  %exitcond5.not.i61 = icmp eq i64 %137, 4
  br i1 %exitcond5.not.i61, label %.preheader1.i63, label %.preheader1.i54

.preheader1.i63:                                  ; preds = %._crit_edge2.i69, %._crit_edge2.i60
  %138 = phi i64 [ %153, %._crit_edge2.i69 ], [ 1, %._crit_edge2.i60 ]
  %139 = mul nuw nsw i64 %138, 28
  %140 = add nsw i64 %139, -36
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %._crit_edge.i67, %.preheader1.i63
  %141 = phi i64 [ 1, %.preheader1.i63 ], [ %152, %._crit_edge.i67 ]
  %142 = mul nuw nsw i64 %141, 7
  %143 = add nsw i64 %140, %142
  br label %144

144:                                              ; preds = %144, %.preheader.i64
  %145 = phi i64 [ 1, %.preheader.i64 ], [ %151, %144 ]
  %146 = add nsw i64 %143, %145
  %147 = getelementptr inbounds nuw double, ptr @var_21, i64 %146
  %148 = load double, ptr %147, align 8
  %149 = tail call double @_MMethanolHeatExchangersDAE.Models.Methanol.h_T(double %148)
  %150 = getelementptr double, ptr @var_22, i64 %146
  store double %149, ptr %150, align 8
  %151 = add nuw nsw i64 %145, 1
  %exitcond.not.i66 = icmp eq i64 %151, 8
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %144

._crit_edge.i67:                                  ; preds = %144
  %152 = add nuw nsw i64 %141, 1
  %exitcond4.not.i68 = icmp eq i64 %152, 5
  br i1 %exitcond4.not.i68, label %._crit_edge2.i69, label %.preheader.i64

._crit_edge2.i69:                                 ; preds = %._crit_edge.i67
  %153 = add nuw nsw i64 %138, 1
  %exitcond5.not.i70 = icmp eq i64 %153, 4
  br i1 %exitcond5.not.i70, label %.preheader1.i72.preheader, label %.preheader1.i63

.preheader1.i72.preheader:                        ; preds = %._crit_edge2.i69
  %154 = load double, ptr @var_18, align 8
  %155 = load double, ptr @var_17, align 8
  br label %.preheader1.i72

.preheader1.i72:                                  ; preds = %._crit_edge3.i94, %.preheader1.i72.preheader
  %156 = phi i64 [ %213, %._crit_edge3.i94 ], [ 1, %.preheader1.i72.preheader ]
  %157 = mul nuw nsw i64 %156, 24
  %158 = add nsw i64 %157, -25
  %159 = add nsw i64 %156, -1
  %160 = getelementptr inbounds nuw double, ptr @var_26, i64 %159
  %161 = load double, ptr %160, align 8
  %162 = getelementptr inbounds nuw double, ptr @var_28, i64 %159
  %163 = load double, ptr %162, align 8
  %.idx.i82 = mul nuw nsw i64 %159, 224
  %164 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx.i82
  %165 = add nsw i64 %156, -1
  %166 = mul nuw nsw i64 %165, 24
  %.idx.i87 = mul nuw nsw i64 %165, 224
  %167 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx.i87
  br label %.preheader.i73

.preheader.i73:                                   ; preds = %._crit_edge.i92, %.preheader1.i72
  %168 = phi i64 [ 1, %.preheader1.i72 ], [ %208, %._crit_edge.i92 ]
  %169 = phi double [ 0.000000e+00, %.preheader1.i72 ], [ %212, %._crit_edge.i92 ]
  %170 = add nsw i64 %168, -1
  %171 = getelementptr inbounds nuw double, ptr @var_19, i64 %170
  %172 = load double, ptr %171, align 8
  %173 = fdiv double %172, 6.000000e+00
  %174 = mul nuw nsw i64 %170, 6
  %175 = add nsw i64 %158, %174
  %176 = add nsw i64 %168, -1
  %177 = mul nuw nsw i64 %176, 6
  %178 = add nuw nsw i64 %177, %166
  %.idx1.i90 = mul nuw nsw i64 %176, 56
  %179 = getelementptr inbounds nuw i8, ptr %167, i64 %.idx1.i90
  br label %180

180:                                              ; preds = %180, %.preheader.i73
  %181 = phi i64 [ 1, %.preheader.i73 ], [ %188, %180 ]
  %182 = add nsw i64 %175, %181
  %183 = getelementptr inbounds nuw double, ptr @var_20, i64 %182
  %184 = load double, ptr %183, align 8
  %185 = fsub double %173, %184
  %186 = fdiv double %185, 0x40615C71C71C71C7
  %187 = getelementptr double, ptr @var_33, i64 %182
  store double %186, ptr %187, align 8
  %188 = add nuw nsw i64 %181, 1
  %189 = add nsw i64 %181, -1
  %190 = add nuw nsw i64 %178, %189
  %191 = getelementptr inbounds nuw double, ptr @var_25, i64 %190
  %192 = load double, ptr %191, align 8
  %193 = fmul double %192, 1.375000e-02
  %194 = getelementptr inbounds nuw double, ptr @var_27, i64 %190
  %195 = load double, ptr %194, align 8
  %196 = fmul double %193, %195
  %197 = getelementptr inbounds nuw double, ptr %179, i64 %189
  %198 = load double, ptr %197, align 8
  %199 = getelementptr inbounds nuw double, ptr %179, i64 %181
  %200 = load double, ptr %199, align 8
  %201 = fsub double %198, %200
  %202 = fmul double %154, %201
  %203 = getelementptr inbounds nuw double, ptr @var_20, i64 %190
  %204 = load double, ptr %203, align 8
  %205 = fadd double %204, %202
  %206 = fdiv double %205, %196
  %207 = getelementptr double, ptr @var_32, i64 %190
  store double %206, ptr %207, align 8
  %exitcond.not.i91 = icmp eq i64 %188, 7
  br i1 %exitcond.not.i91, label %._crit_edge.i92, label %180

._crit_edge.i92:                                  ; preds = %180
  %208 = add nuw nsw i64 %168, 1
  %.idx2.i = mul nuw nsw i64 %168, 56
  %209 = getelementptr i8, ptr %164, i64 %.idx2.i
  %210 = getelementptr i8, ptr %209, i64 -8
  %211 = load double, ptr %210, align 8
  %212 = fadd double %169, %211
  %exitcond5.not.i93 = icmp eq i64 %208, 5
  br i1 %exitcond5.not.i93, label %._crit_edge3.i94, label %.preheader.i73

._crit_edge3.i94:                                 ; preds = %._crit_edge.i92
  %213 = add nuw nsw i64 %156, 1
  %214 = fmul double %161, 0x3F6B4E81B4E81B4F
  %215 = fmul double %214, %163
  %216 = fmul double %154, %212
  %217 = getelementptr inbounds nuw double, ptr @var_23, i64 %159
  %218 = load double, ptr %217, align 8
  %219 = fmul double %155, %218
  %220 = fsub double %216, %219
  %221 = fdiv double %220, %215
  %222 = getelementptr double, ptr @var_31, i64 %159
  store double %221, ptr %222, align 8
  %exitcond6.not.i95 = icmp eq i64 %213, 4
  br i1 %exitcond6.not.i95, label %equation_49.exit, label %.preheader1.i72

equation_49.exit:                                 ; preds = %._crit_edge3.i94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef nonnull ptr @getModelName() local_unnamed_addr #4 {
  ret ptr @modelName
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i64 @getNumOfVariables() local_unnamed_addr #4 {
  ret i64 35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef nonnull ptr @getVariableName(i64 %0) local_unnamed_addr #4 {
  %2 = icmp ult i64 %0, 35
  br i1 %2, label %switch.lookup, label %3

switch.lookup:                                    ; preds = %1
  %reltable.shift = shl nuw nsw i64 %0, 2
  %reltable.intrinsic = tail call ptr @llvm.load.relative.i64(ptr nonnull @switch.table.getVariableName.rel, i64 %reltable.shift)
  br label %3

3:                                                ; preds = %switch.lookup, %1
  %4 = phi ptr [ @var_name_unknown, %1 ], [ %reltable.intrinsic, %switch.lookup ]
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 0, 4) i64 @getVariableRank(i64 %0) local_unnamed_addr #4 {
  %switch.tableidx = add i64 %0, -20
  %2 = icmp ult i64 %switch.tableidx, 15
  br i1 %2, label %switch.lookup, label %3

switch.lookup:                                    ; preds = %1
  %switch.gep = getelementptr inbounds nuw i64, ptr @switch.table.getVariableRank, i64 %switch.tableidx
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %3

3:                                                ; preds = %switch.lookup, %1
  %4 = phi i64 [ 0, %1 ], [ %switch.load, %switch.lookup ]
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i1 @isPrintable(i64 %0) local_unnamed_addr #4 {
  %switch = icmp ult i64 %0, 32
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 0, 2) i64 @getVariableNumOfPrintableRanges(i64 %0) local_unnamed_addr #4 {
  %.off = add i64 %0, -20
  %switch = icmp ult i64 %.off, 12
  %spec.select = zext i1 %switch to i64
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 -1, 1) i64 @getVariablePrintableRangeBegin(i64 %0, i64 %1, i64 %2) local_unnamed_addr #4 {
  switch i64 %0, label %19 [
    i64 23, label %4
    i64 27, label %6
    i64 21, label %7
    i64 31, label %9
    i64 29, label %10
    i64 25, label %11
    i64 28, label %12
    i64 26, label %13
    i64 22, label %14
    i64 24, label %15
    i64 20, label %16
    i64 30, label %17
  ]

4:                                                ; preds = %3
  %cond13 = icmp eq i64 %1, 0
  %5 = icmp ult i64 %2, 3
  %or.cond25 = select i1 %cond13, i1 %5, i1 false
  br i1 %or.cond25, label %switch.lookup23, label %19

6:                                                ; preds = %3
  %cond12 = icmp eq i64 %1, 0
  %cond4 = icmp eq i64 %2, 0
  %or.cond = select i1 %cond12, i1 %cond4, i1 false
  br i1 %or.cond, label %18, label %19

7:                                                ; preds = %3
  %cond11 = icmp eq i64 %1, 0
  %8 = icmp ult i64 %2, 3
  %or.cond18 = select i1 %cond11, i1 %8, i1 false
  br i1 %or.cond18, label %switch.lookup, label %19

9:                                                ; preds = %3
  %cond10 = icmp eq i64 %1, 0
  %cond4.old = icmp eq i64 %2, 0
  %or.cond14 = select i1 %cond10, i1 %cond4.old, i1 false
  br i1 %or.cond14, label %18, label %19

10:                                               ; preds = %3
  %cond9 = icmp eq i64 %1, 0
  %cond4.old.old = icmp eq i64 %2, 0
  %or.cond15 = select i1 %cond9, i1 %cond4.old.old, i1 false
  br i1 %or.cond15, label %18, label %19

11:                                               ; preds = %3
  %cond8 = icmp eq i64 %1, 0
  %.old = icmp ult i64 %2, 3
  %or.cond19 = select i1 %cond8, i1 %.old, i1 false
  br i1 %or.cond19, label %switch.lookup, label %19

12:                                               ; preds = %3
  %cond7 = icmp eq i64 %1, 0
  %.old.old = icmp ult i64 %2, 3
  %or.cond20 = select i1 %cond7, i1 %.old.old, i1 false
  br i1 %or.cond20, label %switch.lookup, label %19

13:                                               ; preds = %3
  %cond6 = icmp eq i64 %1, 0
  %.old.old.old = icmp ult i64 %2, 3
  %or.cond21 = select i1 %cond6, i1 %.old.old.old, i1 false
  br i1 %or.cond21, label %switch.lookup, label %19

14:                                               ; preds = %3
  %cond5 = icmp eq i64 %1, 0
  %.old24 = icmp ult i64 %2, 3
  %or.cond26 = select i1 %cond5, i1 %.old24, i1 false
  br i1 %or.cond26, label %switch.lookup23, label %19

15:                                               ; preds = %3
  %cond3 = icmp eq i64 %1, 0
  %cond4.old.old.old = icmp eq i64 %2, 0
  %or.cond16 = select i1 %cond3, i1 %cond4.old.old.old, i1 false
  br i1 %or.cond16, label %18, label %19

16:                                               ; preds = %3
  %cond1 = icmp ne i64 %1, 0
  %cond2 = icmp ne i64 %2, 0
  %or.cond17.not = select i1 %cond1, i1 true, i1 %cond2
  %spec.select = sext i1 %or.cond17.not to i64
  br label %19

17:                                               ; preds = %3
  %cond = icmp eq i64 %1, 0
  %.old.old.old.old = icmp ult i64 %2, 3
  %or.cond22 = select i1 %cond, i1 %.old.old.old.old, i1 false
  br i1 %or.cond22, label %switch.lookup, label %19

18:                                               ; preds = %15, %10, %9, %6
  br label %19

switch.lookup:                                    ; preds = %17, %13, %12, %11, %7
  br label %19

switch.lookup23:                                  ; preds = %14, %4
  br label %19

19:                                               ; preds = %switch.lookup23, %switch.lookup, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %7, %6, %4, %3
  %20 = phi i64 [ -1, %17 ], [ -1, %15 ], [ -1, %14 ], [ -1, %13 ], [ -1, %12 ], [ -1, %11 ], [ -1, %10 ], [ -1, %9 ], [ -1, %7 ], [ -1, %6 ], [ 0, %18 ], [ -1, %4 ], [ -1, %3 ], [ 0, %switch.lookup ], [ 0, %switch.lookup23 ], [ %spec.select, %16 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 -1, 8) i64 @getVariablePrintableRangeEnd(i64 %0, i64 %1, i64 %2) local_unnamed_addr #4 {
  switch i64 %0, label %19 [
    i64 23, label %4
    i64 27, label %6
    i64 21, label %7
    i64 31, label %9
    i64 29, label %10
    i64 25, label %11
    i64 28, label %12
    i64 26, label %13
    i64 22, label %14
    i64 24, label %15
    i64 20, label %16
    i64 30, label %17
  ]

4:                                                ; preds = %3
  %cond13 = icmp eq i64 %1, 0
  %5 = icmp ult i64 %2, 3
  %or.cond27 = select i1 %cond13, i1 %5, i1 false
  br i1 %or.cond27, label %switch.lookup23, label %19

6:                                                ; preds = %3
  %cond12 = icmp eq i64 %1, 0
  %cond4 = icmp eq i64 %2, 0
  %or.cond = select i1 %cond12, i1 %cond4, i1 false
  br i1 %or.cond, label %18, label %19

7:                                                ; preds = %3
  %cond11 = icmp eq i64 %1, 0
  %8 = icmp ult i64 %2, 3
  %or.cond18 = select i1 %cond11, i1 %8, i1 false
  br i1 %or.cond18, label %switch.lookup, label %19

9:                                                ; preds = %3
  %cond10 = icmp eq i64 %1, 0
  %cond4.old = icmp eq i64 %2, 0
  %or.cond14 = select i1 %cond10, i1 %cond4.old, i1 false
  br i1 %or.cond14, label %18, label %19

10:                                               ; preds = %3
  %cond9 = icmp eq i64 %1, 0
  %cond4.old.old = icmp eq i64 %2, 0
  %or.cond15 = select i1 %cond9, i1 %cond4.old.old, i1 false
  br i1 %or.cond15, label %18, label %19

11:                                               ; preds = %3
  %cond8 = icmp eq i64 %1, 0
  %.old = icmp ult i64 %2, 3
  %or.cond19 = select i1 %cond8, i1 %.old, i1 false
  br i1 %or.cond19, label %switch.lookup, label %19

12:                                               ; preds = %3
  %cond7 = icmp eq i64 %1, 0
  %.old.old = icmp ult i64 %2, 3
  %or.cond20 = select i1 %cond7, i1 %.old.old, i1 false
  br i1 %or.cond20, label %switch.lookup, label %19

13:                                               ; preds = %3
  %cond6 = icmp eq i64 %1, 0
  %.old.old.old = icmp ult i64 %2, 3
  %or.cond21 = select i1 %cond6, i1 %.old.old.old, i1 false
  br i1 %or.cond21, label %switch.lookup, label %19

14:                                               ; preds = %3
  %cond5 = icmp eq i64 %1, 0
  %.old26 = icmp ult i64 %2, 3
  %or.cond28 = select i1 %cond5, i1 %.old26, i1 false
  br i1 %or.cond28, label %switch.lookup23, label %19

15:                                               ; preds = %3
  %cond3 = icmp eq i64 %1, 0
  %cond4.old.old.old = icmp eq i64 %2, 0
  %or.cond16 = select i1 %cond3, i1 %cond4.old.old.old, i1 false
  br i1 %or.cond16, label %18, label %19

16:                                               ; preds = %3
  %cond1 = icmp eq i64 %1, 0
  %cond2 = icmp eq i64 %2, 0
  %or.cond17 = select i1 %cond1, i1 %cond2, i1 false
  %spec.select = select i1 %or.cond17, i64 4, i64 -1
  br label %19

17:                                               ; preds = %3
  %cond = icmp eq i64 %1, 0
  %.old.old.old.old = icmp ult i64 %2, 3
  %or.cond22 = select i1 %cond, i1 %.old.old.old.old, i1 false
  br i1 %or.cond22, label %switch.lookup, label %19

18:                                               ; preds = %15, %10, %9, %6
  br label %19

switch.lookup:                                    ; preds = %17, %13, %12, %11, %7
  %switch.gep = getelementptr inbounds i64, ptr @switch.table.getVariablePrintableRangeEnd, i64 %2
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %19

switch.lookup23:                                  ; preds = %14, %4
  %switch.gep24 = getelementptr inbounds i64, ptr @switch.table.getVariablePrintableRangeEnd.1, i64 %2
  %switch.load25 = load i64, ptr %switch.gep24, align 8
  br label %19

19:                                               ; preds = %switch.lookup23, %switch.lookup, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %7, %6, %4, %3
  %20 = phi i64 [ -1, %17 ], [ -1, %15 ], [ -1, %14 ], [ -1, %13 ], [ -1, %12 ], [ -1, %11 ], [ -1, %10 ], [ -1, %9 ], [ -1, %7 ], [ -1, %6 ], [ 3, %18 ], [ -1, %4 ], [ -1, %3 ], [ %switch.load, %switch.lookup ], [ %switch.load25, %switch.lookup23 ], [ %spec.select, %16 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i64 -1, 35) i64 @getDerivative(i64 %0) local_unnamed_addr #4 {
  %switch.tableidx = add i64 %0, -25
  %2 = icmp ult i64 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %3

switch.lookup:                                    ; preds = %1
  %switch.gep = getelementptr inbounds nuw i64, ptr @switch.table.getDerivative, i64 %switch.tableidx
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %3

3:                                                ; preds = %switch.lookup, %1
  %4 = phi i64 [ -1, %1 ], [ %switch.load, %switch.lookup ]
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_0(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load i64, ptr @var, align 8
  %3 = sitofp i64 %2 to double
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_1(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load i64, ptr @var_0, align 8
  %3 = sitofp i64 %2 to double
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_2(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load i64, ptr @var_1, align 8
  %3 = sitofp i64 %2 to double
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_3(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_2, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_4(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_3, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_5(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_4, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_6(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_5, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_7(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_6, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_8(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_7, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_9(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_8, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_10(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_9, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_11(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_10, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_12(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_11, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_13(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_12, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_14(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_13, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_15(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_14, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_16(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_15, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_17(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_16, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_18(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_17, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @var_getter_19(ptr readnone captures(none) %0) local_unnamed_addr #5 {
  %2 = load double, ptr @var_18, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_20(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_19, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_21(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_20, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_22(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 224
  %7 = getelementptr inbounds nuw i8, ptr @var_21, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 56
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_23(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 224
  %7 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 56
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_24(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_23, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_25(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_24, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_26(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_25, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_27(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_26, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_28(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_27, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_29(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_28, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_30(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_29, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_31(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_30, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_32(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr inbounds nuw double, ptr @var_31, i64 %2
  %4 = load double, ptr %3, align 8
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_33(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_32, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @var_getter_34(ptr readonly captures(none) %0) local_unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8
  %.idx = mul nuw nsw i64 %2, 192
  %7 = getelementptr inbounds nuw i8, ptr @var_33, i64 %.idx
  %.idx1 = mul nuw nsw i64 %4, 48
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx1
  %9 = getelementptr inbounds nuw double, ptr %8, i64 %6
  %10 = load double, ptr %9, align 8
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define double @getVariableValue(i64 %0, ptr readonly captures(none) %1) local_unnamed_addr #6 {
  switch i64 %0, label %160 [
    i64 0, label %3
    i64 1, label %6
    i64 2, label %9
    i64 3, label %12
    i64 4, label %14
    i64 5, label %16
    i64 6, label %18
    i64 7, label %20
    i64 8, label %22
    i64 9, label %24
    i64 10, label %26
    i64 11, label %28
    i64 12, label %30
    i64 13, label %32
    i64 14, label %34
    i64 15, label %36
    i64 16, label %38
    i64 17, label %40
    i64 18, label %42
    i64 19, label %44
    i64 20, label %46
    i64 21, label %50
    i64 22, label %60
    i64 23, label %70
    i64 24, label %80
    i64 25, label %84
    i64 26, label %94
    i64 27, label %104
    i64 28, label %108
    i64 29, label %118
    i64 30, label %122
    i64 31, label %132
    i64 32, label %136
    i64 33, label %140
    i64 34, label %150
  ]

3:                                                ; preds = %2
  %4 = load i64, ptr @var, align 8
  %5 = sitofp i64 %4 to double
  br label %160

6:                                                ; preds = %2
  %7 = load i64, ptr @var_0, align 8
  %8 = sitofp i64 %7 to double
  br label %160

9:                                                ; preds = %2
  %10 = load i64, ptr @var_1, align 8
  %11 = sitofp i64 %10 to double
  br label %160

12:                                               ; preds = %2
  %13 = load double, ptr @var_2, align 8
  br label %160

14:                                               ; preds = %2
  %15 = load double, ptr @var_3, align 8
  br label %160

16:                                               ; preds = %2
  %17 = load double, ptr @var_4, align 8
  br label %160

18:                                               ; preds = %2
  %19 = load double, ptr @var_5, align 8
  br label %160

20:                                               ; preds = %2
  %21 = load double, ptr @var_6, align 8
  br label %160

22:                                               ; preds = %2
  %23 = load double, ptr @var_7, align 8
  br label %160

24:                                               ; preds = %2
  %25 = load double, ptr @var_8, align 8
  br label %160

26:                                               ; preds = %2
  %27 = load double, ptr @var_9, align 8
  br label %160

28:                                               ; preds = %2
  %29 = load double, ptr @var_10, align 8
  br label %160

30:                                               ; preds = %2
  %31 = load double, ptr @var_11, align 8
  br label %160

32:                                               ; preds = %2
  %33 = load double, ptr @var_12, align 8
  br label %160

34:                                               ; preds = %2
  %35 = load double, ptr @var_13, align 8
  br label %160

36:                                               ; preds = %2
  %37 = load double, ptr @var_14, align 8
  br label %160

38:                                               ; preds = %2
  %39 = load double, ptr @var_15, align 8
  br label %160

40:                                               ; preds = %2
  %41 = load double, ptr @var_16, align 8
  br label %160

42:                                               ; preds = %2
  %43 = load double, ptr @var_17, align 8
  br label %160

44:                                               ; preds = %2
  %45 = load double, ptr @var_18, align 8
  br label %160

46:                                               ; preds = %2
  %47 = load i64, ptr %1, align 8
  %48 = getelementptr inbounds nuw double, ptr @var_19, i64 %47
  %49 = load double, ptr %48, align 8
  br label %160

50:                                               ; preds = %2
  %51 = load i64, ptr %1, align 8
  %52 = getelementptr i8, ptr %1, i64 8
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr i8, ptr %1, i64 16
  %55 = load i64, ptr %54, align 8
  %.idx.i = mul nuw nsw i64 %51, 192
  %56 = getelementptr inbounds nuw i8, ptr @var_20, i64 %.idx.i
  %.idx1.i = mul nuw nsw i64 %53, 48
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %.idx1.i
  %58 = getelementptr inbounds nuw double, ptr %57, i64 %55
  %59 = load double, ptr %58, align 8
  br label %160

60:                                               ; preds = %2
  %61 = load i64, ptr %1, align 8
  %62 = getelementptr i8, ptr %1, i64 8
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr i8, ptr %1, i64 16
  %65 = load i64, ptr %64, align 8
  %.idx.i1 = mul nuw nsw i64 %61, 224
  %66 = getelementptr inbounds nuw i8, ptr @var_21, i64 %.idx.i1
  %.idx1.i2 = mul nuw nsw i64 %63, 56
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %.idx1.i2
  %68 = getelementptr inbounds nuw double, ptr %67, i64 %65
  %69 = load double, ptr %68, align 8
  br label %160

70:                                               ; preds = %2
  %71 = load i64, ptr %1, align 8
  %72 = getelementptr i8, ptr %1, i64 8
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr i8, ptr %1, i64 16
  %75 = load i64, ptr %74, align 8
  %.idx.i3 = mul nuw nsw i64 %71, 224
  %76 = getelementptr inbounds nuw i8, ptr @var_22, i64 %.idx.i3
  %.idx1.i4 = mul nuw nsw i64 %73, 56
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 %.idx1.i4
  %78 = getelementptr inbounds nuw double, ptr %77, i64 %75
  %79 = load double, ptr %78, align 8
  br label %160

80:                                               ; preds = %2
  %81 = load i64, ptr %1, align 8
  %82 = getelementptr inbounds nuw double, ptr @var_23, i64 %81
  %83 = load double, ptr %82, align 8
  br label %160

84:                                               ; preds = %2
  %85 = load i64, ptr %1, align 8
  %86 = getelementptr i8, ptr %1, i64 8
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr i8, ptr %1, i64 16
  %89 = load i64, ptr %88, align 8
  %.idx.i5 = mul nuw nsw i64 %85, 192
  %90 = getelementptr inbounds nuw i8, ptr @var_24, i64 %.idx.i5
  %.idx1.i6 = mul nuw nsw i64 %87, 48
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 %.idx1.i6
  %92 = getelementptr inbounds nuw double, ptr %91, i64 %89
  %93 = load double, ptr %92, align 8
  br label %160

94:                                               ; preds = %2
  %95 = load i64, ptr %1, align 8
  %96 = getelementptr i8, ptr %1, i64 8
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr i8, ptr %1, i64 16
  %99 = load i64, ptr %98, align 8
  %.idx.i7 = mul nuw nsw i64 %95, 192
  %100 = getelementptr inbounds nuw i8, ptr @var_25, i64 %.idx.i7
  %.idx1.i8 = mul nuw nsw i64 %97, 48
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 %.idx1.i8
  %102 = getelementptr inbounds nuw double, ptr %101, i64 %99
  %103 = load double, ptr %102, align 8
  br label %160

104:                                              ; preds = %2
  %105 = load i64, ptr %1, align 8
  %106 = getelementptr inbounds nuw double, ptr @var_26, i64 %105
  %107 = load double, ptr %106, align 8
  br label %160

108:                                              ; preds = %2
  %109 = load i64, ptr %1, align 8
  %110 = getelementptr i8, ptr %1, i64 8
  %111 = load i64, ptr %110, align 8
  %112 = getelementptr i8, ptr %1, i64 16
  %113 = load i64, ptr %112, align 8
  %.idx.i9 = mul nuw nsw i64 %109, 192
  %114 = getelementptr inbounds nuw i8, ptr @var_27, i64 %.idx.i9
  %.idx1.i10 = mul nuw nsw i64 %111, 48
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 %.idx1.i10
  %116 = getelementptr inbounds nuw double, ptr %115, i64 %113
  %117 = load double, ptr %116, align 8
  br label %160

118:                                              ; preds = %2
  %119 = load i64, ptr %1, align 8
  %120 = getelementptr inbounds nuw double, ptr @var_28, i64 %119
  %121 = load double, ptr %120, align 8
  br label %160

122:                                              ; preds = %2
  %123 = load i64, ptr %1, align 8
  %124 = getelementptr i8, ptr %1, i64 8
  %125 = load i64, ptr %124, align 8
  %126 = getelementptr i8, ptr %1, i64 16
  %127 = load i64, ptr %126, align 8
  %.idx.i11 = mul nuw nsw i64 %123, 192
  %128 = getelementptr inbounds nuw i8, ptr @var_29, i64 %.idx.i11
  %.idx1.i12 = mul nuw nsw i64 %125, 48
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 %.idx1.i12
  %130 = getelementptr inbounds nuw double, ptr %129, i64 %127
  %131 = load double, ptr %130, align 8
  br label %160

132:                                              ; preds = %2
  %133 = load i64, ptr %1, align 8
  %134 = getelementptr inbounds nuw double, ptr @var_30, i64 %133
  %135 = load double, ptr %134, align 8
  br label %160

136:                                              ; preds = %2
  %137 = load i64, ptr %1, align 8
  %138 = getelementptr inbounds nuw double, ptr @var_31, i64 %137
  %139 = load double, ptr %138, align 8
  br label %160

140:                                              ; preds = %2
  %141 = load i64, ptr %1, align 8
  %142 = getelementptr i8, ptr %1, i64 8
  %143 = load i64, ptr %142, align 8
  %144 = getelementptr i8, ptr %1, i64 16
  %145 = load i64, ptr %144, align 8
  %.idx.i13 = mul nuw nsw i64 %141, 192
  %146 = getelementptr inbounds nuw i8, ptr @var_32, i64 %.idx.i13
  %.idx1.i14 = mul nuw nsw i64 %143, 48
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %.idx1.i14
  %148 = getelementptr inbounds nuw double, ptr %147, i64 %145
  %149 = load double, ptr %148, align 8
  br label %160

150:                                              ; preds = %2
  %151 = load i64, ptr %1, align 8
  %152 = getelementptr i8, ptr %1, i64 8
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr i8, ptr %1, i64 16
  %155 = load i64, ptr %154, align 8
  %.idx.i15 = mul nuw nsw i64 %151, 192
  %156 = getelementptr inbounds nuw i8, ptr @var_33, i64 %.idx.i15
  %.idx1.i16 = mul nuw nsw i64 %153, 48
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 %.idx1.i16
  %158 = getelementptr inbounds nuw double, ptr %157, i64 %155
  %159 = load double, ptr %158, align 8
  br label %160

160:                                              ; preds = %150, %140, %136, %132, %122, %118, %108, %104, %94, %84, %80, %70, %60, %50, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %9, %6, %3, %2
  %161 = phi double [ %159, %150 ], [ %149, %140 ], [ %139, %136 ], [ %135, %132 ], [ %131, %122 ], [ %121, %118 ], [ %117, %108 ], [ %107, %104 ], [ %103, %94 ], [ %93, %84 ], [ %83, %80 ], [ %79, %70 ], [ %69, %60 ], [ %59, %50 ], [ %49, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ], [ 0.000000e+00, %2 ]
  ret double %161
}

define void @updateNonStateVariables() local_unnamed_addr {
  tail call void @MethanolHeatExchangers_dynamic()
  ret void
}

define void @updateStateVariables(double %0) local_unnamed_addr {
  store double %0, ptr @timeStep, align 8
  tail call void @euler_state_update_T_tilde()
  tail call void @euler_state_update_T_w()
  tail call void @euler_state_update_T_m()
  ret void
}

define void @solveICModel() local_unnamed_addr {
  tail call void @MethanolHeatExchangers_ic()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @icModelBegin() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @icModelEnd() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @dynamicModelBegin() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @dynamicModelEnd() local_unnamed_addr #4 {
  ret void
}

define void @init() local_unnamed_addr {
  store i64 0, ptr @var, align 8
  store i64 0, ptr @var_0, align 8
  store i64 0, ptr @var_1, align 8
  store double 0.000000e+00, ptr @var_2, align 8
  store double 0.000000e+00, ptr @var_3, align 8
  store double 0.000000e+00, ptr @var_4, align 8
  store double 0.000000e+00, ptr @var_5, align 8
  store double 0.000000e+00, ptr @var_6, align 8
  store double 0.000000e+00, ptr @var_7, align 8
  store double 0.000000e+00, ptr @var_8, align 8
  store double 0.000000e+00, ptr @var_9, align 8
  store double 0.000000e+00, ptr @var_10, align 8
  store double 0.000000e+00, ptr @var_11, align 8
  store double 0.000000e+00, ptr @var_12, align 8
  store double 0.000000e+00, ptr @var_13, align 8
  store double 0.000000e+00, ptr @var_14, align 8
  store double 0.000000e+00, ptr @var_15, align 8
  store double 0.000000e+00, ptr @var_16, align 8
  store double 0.000000e+00, ptr @var_17, align 8
  store double 0.000000e+00, ptr @var_18, align 8
  %1 = tail call ptr @marco_malloc(i64 96)
  %2 = ptrtoint ptr %1 to i64
  %3 = add i64 %2, 63
  %4 = and i64 %3, -64
  %5 = inttoptr i64 %4 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @var_19, i8 0, i64 32, i1 false)
  %6 = tail call ptr @marco_malloc(i64 640)
  %7 = ptrtoint ptr %6 to i64
  %8 = add i64 %7, 63
  %9 = and i64 %8, -64
  %10 = inttoptr i64 %9 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %10, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_20, i8 0, i64 576, i1 false)
  %11 = tail call ptr @marco_malloc(i64 736)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %12, 63
  %14 = and i64 %13, -64
  %15 = inttoptr i64 %14 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(672) %15, i8 0, i64 672, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(672) @var_21, i8 0, i64 672, i1 false)
  %16 = tail call ptr @marco_malloc(i64 736)
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %17, 63
  %19 = and i64 %18, -64
  %20 = inttoptr i64 %19 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(672) %20, i8 0, i64 672, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(672) @var_22, i8 0, i64 672, i1 false)
  %21 = tail call ptr @marco_malloc(i64 88)
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 63
  %24 = and i64 %23, -64
  %25 = inttoptr i64 %24 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_23, i8 0, i64 24, i1 false)
  %26 = tail call ptr @marco_malloc(i64 640)
  %27 = ptrtoint ptr %26 to i64
  %28 = add i64 %27, 63
  %29 = and i64 %28, -64
  %30 = inttoptr i64 %29 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %30, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_24, i8 0, i64 576, i1 false)
  %31 = tail call ptr @marco_malloc(i64 640)
  %32 = ptrtoint ptr %31 to i64
  %33 = add i64 %32, 63
  %34 = and i64 %33, -64
  %35 = inttoptr i64 %34 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %35, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_25, i8 0, i64 576, i1 false)
  %36 = tail call ptr @marco_malloc(i64 88)
  %37 = ptrtoint ptr %36 to i64
  %38 = add i64 %37, 63
  %39 = and i64 %38, -64
  %40 = inttoptr i64 %39 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_26, i8 0, i64 24, i1 false)
  %41 = tail call ptr @marco_malloc(i64 640)
  %42 = ptrtoint ptr %41 to i64
  %43 = add i64 %42, 63
  %44 = and i64 %43, -64
  %45 = inttoptr i64 %44 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %45, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_27, i8 0, i64 576, i1 false)
  %46 = tail call ptr @marco_malloc(i64 88)
  %47 = ptrtoint ptr %46 to i64
  %48 = add i64 %47, 63
  %49 = and i64 %48, -64
  %50 = inttoptr i64 %49 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_28, i8 0, i64 24, i1 false)
  %51 = tail call ptr @marco_malloc(i64 640)
  %52 = ptrtoint ptr %51 to i64
  %53 = add i64 %52, 63
  %54 = and i64 %53, -64
  %55 = inttoptr i64 %54 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %55, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_29, i8 0, i64 576, i1 false)
  %56 = tail call ptr @marco_malloc(i64 88)
  %57 = ptrtoint ptr %56 to i64
  %58 = add i64 %57, 63
  %59 = and i64 %58, -64
  %60 = inttoptr i64 %59 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_30, i8 0, i64 24, i1 false)
  %61 = tail call ptr @marco_malloc(i64 88)
  %62 = ptrtoint ptr %61 to i64
  %63 = add i64 %62, 63
  %64 = and i64 %63, -64
  %65 = inttoptr i64 %64 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @var_31, i8 0, i64 24, i1 false)
  %66 = tail call ptr @marco_malloc(i64 640)
  %67 = ptrtoint ptr %66 to i64
  %68 = add i64 %67, 63
  %69 = and i64 %68, -64
  %70 = inttoptr i64 %69 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %70, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_32, i8 0, i64 576, i1 false)
  %71 = tail call ptr @marco_malloc(i64 640)
  %72 = ptrtoint ptr %71 to i64
  %73 = add i64 %72, 63
  %74 = and i64 %73, -64
  %75 = inttoptr i64 %74 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %75, i8 0, i64 576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) @var_33, i8 0, i64 576, i1 false)
  tail call void @marco_free(ptr %1)
  tail call void @marco_free(ptr %6)
  tail call void @marco_free(ptr %11)
  tail call void @marco_free(ptr %16)
  tail call void @marco_free(ptr %21)
  tail call void @marco_free(ptr %26)
  tail call void @marco_free(ptr %31)
  tail call void @marco_free(ptr %36)
  tail call void @marco_free(ptr %41)
  tail call void @marco_free(ptr %46)
  tail call void @marco_free(ptr %51)
  tail call void @marco_free(ptr %56)
  tail call void @marco_free(ptr %61)
  tail call void @marco_free(ptr %66)
  tail call void @marco_free(ptr %71)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @deinit() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define double @getTime() local_unnamed_addr #5 {
  %1 = load double, ptr @time, align 8
  ret double %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @setTime(double %0) local_unnamed_addr #3 {
  store double %0, ptr @time, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #1 = { alwaysinline nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
