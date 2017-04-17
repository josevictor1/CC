@.str = private unnamed_addr constant [20 x i8] c"Digite um n\C3\BAmero: \00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [15 x i8] c"O fatorial de \00"
@.str.3 = private unnamed_addr constant [5 x i8] c" \C3\A9 \00"

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

; Function Attrs: noinline nounwind uwtable
define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr  ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %1)
  %5 = load i32, i32* %1
  %6 = call i32 @fatorial(i32 %5)
  store i32 %6, i32* %2
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr  ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %8 = load i32, i32* %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr  ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %11 = load i32, i32* %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr  ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %11)
  ret i32 0
}

define i32 @fatorial(i32)  {
  %2 = alloca i32
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:
  store i32 1, i32* %2
  br label %13

; <label>:7:
  %8 = load i32, i32* %3
  %9 = load i32, i32* %3
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @fatorial(i32 %10)
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %2
  br label %13

; <label>:13:
  %14 = load i32, i32* %2
  ret i32 %14
}
