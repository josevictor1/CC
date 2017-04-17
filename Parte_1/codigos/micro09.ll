; ModuleID = 'micro09.c'
source_filename = "micro09.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Digite o preco: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Digite a venda: \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"O novo preco \C3\A9 %f\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %2)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %3)
  %9 = load float, float* %3, align 4
  %10 = fcmp olt float %9, 5.000000e+02
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %0
  %12 = load float, float* %2, align 4
  %13 = fcmp olt float %12, 3.000000e+01
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %11, %0
  %15 = load float, float* %2, align 4
  %16 = fpext float %15 to double
  %17 = load float, float* %2, align 4
  %18 = fpext float %17 to double
  %19 = fmul double 1.000000e-01, %18
  %20 = fadd double %16, %19
  %21 = fptrunc double %20 to float
  store float %21, float* %4, align 4
  br label %52

; <label>:22:                                     ; preds = %11
  %23 = load float, float* %3, align 4
  %24 = fcmp oge float %23, 5.000000e+02
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %22
  %26 = load float, float* %3, align 4
  %27 = fcmp olt float %26, 1.200000e+03
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25, %22
  %29 = load float, float* %2, align 4
  %30 = fcmp oge float %29, 3.000000e+01
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %28
  %32 = load float, float* %2, align 4
  %33 = fcmp olt float %32, 8.000000e+01
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %31, %25
  %35 = load float, float* %2, align 4
  %36 = load float, float* %2, align 4
  %37 = fmul float 0.000000e+00, %36
  %38 = fadd float %35, %37
  store float %38, float* %4, align 4
  br label %51

; <label>:39:                                     ; preds = %31, %28
  %40 = load float, float* %3, align 4
  %41 = fcmp oge float %40, 1.200000e+03
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = load float, float* %2, align 4
  %44 = fcmp oge float %43, 8.000000e+01
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %42, %39
  %46 = load float, float* %2, align 4
  %47 = load float, float* %2, align 4
  %48 = fmul float 0.000000e+00, %47
  %49 = fsub float %46, %48
  store float %49, float* %4, align 4
  br label %50

; <label>:50:                                     ; preds = %45, %42
  br label %51

; <label>:51:                                     ; preds = %50, %34
  br label %52

; <label>:52:                                     ; preds = %51, %14
  %53 = load float, float* %4, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), double %54)
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0-1ubuntu1 (tags/RELEASE_400/rc1)"}
