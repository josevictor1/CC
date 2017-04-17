
@.str = private unnamed_addr constant [21 x i8] c"Digite um n\C3\BAmero: \0A\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [47 x i8] c"O n\C3\BAmero est\C3\A1 no intervalo entre 100 e 200*\0A\00"
@.str.3 = private unnamed_addr constant [52 x i8] c"O n\C3\BAmero n\C3\A3o est\C3\A1 no intervalo entre 100 e 200*\0A\00"
@.str.4 = private unnamed_addr constant [51 x i8] c"O n\C3\BAmero n\C3\A3o est\C3\A1 no intervalo entre 100 e 200\0A\00"


declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @main(){
  %1 = alloca i32
  %2 = alloca i32
  store i32 0, i32* %1
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %5 = load i32, i32* %2
  %6 = icmp sge i32 %5, 100
  br i1 %6, label %7, label %15

; <label>:7:
  %8 = load i32, i32* %2
  %9 = icmp sle i32 %8, 200
  br i1 %9, label %10, label %12

; <label>:10:
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  br label %14

; <label>:12:
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:14:
  br label %17

; <label>:15:
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17:
  %18 = load i32, i32* %1
  ret i32 %18
}
