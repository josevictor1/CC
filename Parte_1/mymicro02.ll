
@.str = private unnamed_addr constant [29 x i8] c"Digite o primeiro n\C3\BAmero: \0A\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [28 x i8] c"Digite o segundo n\C3\BAmero: \0A\00"
@.str.3 = private unnamed_addr constant [49 x i8] c"O Primeiro n\C3\BAmero %d \C3\A9 maior que o segundo %d\0A\00"
@.str.4 = private unnamed_addr constant [49 x i8] c"O segundo n\C3\BAmero %d \C3\A9 maior que o primeiro %d\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %3)
  %8 = load i32, i32* %2
  %9 = load i32, i32* %3
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %15

; <label>:11:
  %12 = load i32, i32* %2
  %13 = load i32, i32* %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 %12, i32 %13)
  br label %19

; <label>:15:
  %16 = load i32, i32* %2
  %17 = load i32, i32* %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i32 %16, i32 %17)
  br label %19

; <label>:19:
  %20 = load i32, i32* %1
  ret i32 %20
}
