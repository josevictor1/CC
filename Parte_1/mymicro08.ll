@.str = private unnamed_addr constant [21 x i8] c"Digite um n\C3\BAmero: \0A\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [31 x i8] c" O n\C3\BAmero %d \C3\A9 maior que 10\0A\00"
@.str.3 = private unnamed_addr constant [30 x i8] c"O n\C3\BAmero %d \C3\A9 menor que 10\0A\00"


declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)


define i32 @main() #0 {
  %1 = alloca i32
  %2 = alloca i32
  store i32 0, i32* %1
  store i32 1, i32* %2
  br label %3

; <label>:3:
  %4 = load i32, i32* %2
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6:
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %9 = load i32, i32* %2
  %10 = icmp sgt i32 %9, 10
  br i1 %10, label %11, label %14

; <label>:11:
  %12 = load i32, i32* %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  br label %17

; <label>:14:
  %15 = load i32, i32* %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 %15)
  br label %17

; <label>:17:
  br label %3

; <label>:18:
  %19 = load i32, i32* %1
  ret i32 %19
}
