@.str = private unnamed_addr constant [21 x i8] c"Digite um n\C3\BAmero: \0A\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [66 x i8] c"Ao total foram digitados %d n\C3\BAmeros no intervalo entre 10 e 150\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)


define i32 @main()  {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %1
  store i32 0, i32* %4
  store i32 1, i32* %2
  br label %5

; <label>:5:
  %6 = load i32, i32* %2
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %24

; <label>:8:
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %3)
  %11 = load i32, i32* %3
  %12 = icmp sge i32 %11, 10
  br i1 %12, label %13, label %20

; <label>:13:
  %14 = load i32, i32* %3
  %15 = icmp sle i32 %14, 150
  br i1 %15, label %16, label %19

; <label>:16:
  %17 = load i32, i32* %4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4
  br label %19

; <label>:19:
  br label %20

; <label>:20:
  br label %21

; <label>:21:
  %22 = load i32, i32* %2
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2
  br label %5

; <label>:24:
  %25 = load i32, i32* %4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0), i32 %25)
  %27 = load i32, i32* %1
  ret i32 %27
}
