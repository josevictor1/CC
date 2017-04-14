; ModuleID = 'micro03.c'
source_filename = "micro03.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Digite um n\C3\BAmero: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"O n\C3\BAmero est\C3\A1 no intervalo entre 100 e 200*\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"O n\C3\BAmero n\C3\A3o est\C3\A1 no intervalo entre 100 e 200*\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"O n\C3\BAmero n\C3\A3o est\C3\A1 no intervalo entre 100 e 200\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 100
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 %8, 200
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0))
  br label %14

; <label>:12:                                     ; preds = %7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %12, %10
  br label %17

; <label>:15:                                     ; preds = %0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %15, %14
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0-1ubuntu1 (tags/RELEASE_400/rc1)"}
