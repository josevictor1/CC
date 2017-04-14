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
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %11, %0
  %15 = load float, float* %2, align 4
  %16 = load float, float* %2, align 4
  %17 = fmul float 0.000000e+00, %16
  %18 = fadd float %15, %17
  store float %18, float* %4, align 4
  br label %49

; <label>:19:                                     ; preds = %11
  %20 = load float, float* %3, align 4
  %21 = fcmp oge float %20, 5.000000e+02
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load float, float* %3, align 4
  %24 = fcmp olt float %23, 1.200000e+03
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = load float, float* %2, align 4
  %27 = fcmp oge float %26, 3.000000e+01
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %25
  %29 = load float, float* %2, align 4
  %30 = fcmp olt float %29, 8.000000e+01
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %28, %22
  %32 = load float, float* %2, align 4
  %33 = load float, float* %2, align 4
  %34 = fmul float 0.000000e+00, %33
  %35 = fadd float %32, %34
  store float %35, float* %4, align 4
  br label %48

; <label>:36:                                     ; preds = %28, %25
  %37 = load float, float* %3, align 4
  %38 = fcmp oge float %37, 1.200000e+03
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %36
  %40 = load float, float* %2, align 4
  %41 = fcmp oge float %40, 8.000000e+01
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %39, %36
  %43 = load float, float* %2, align 4
  %44 = load float, float* %2, align 4
  %45 = fmul float 0.000000e+00, %44
  %46 = fsub float %43, %45
  store float %46, float* %4, align 4
  br label %47

; <label>:47:                                     ; preds = %42, %39
  br label %48

; <label>:48:                                     ; preds = %47, %31
  br label %49

; <label>:49:                                     ; preds = %48, %14
  %50 = load float, float* %4, align 4
  %51 = fpext float %50 to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), double %51)
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0-1ubuntu1 (tags/RELEASE_400/rc1)"}
