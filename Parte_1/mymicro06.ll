
@.str = private unnamed_addr constant [29 x i8] c"Digite um n\C3\BAmero de 1 a 5: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Um\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Dois\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Tr\C3\AAs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Quatro\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Cinco\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"N\C3\B9mero Inv\C3\A1lido!!!\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @main() #0 {
  %1 = alloca i32
  %2 = alloca i32
  store i32 0, i32* %1
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %5 = load i32, i32* %2
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

; <label>:7:
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr  ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %35

; <label>:9:
  %10 = load i32, i32* %2
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

; <label>:12:
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr  ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %34

; <label>:14:
  %15 = load i32, i32* %2
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %19

; <label>:17:
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr  ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  br label %33

; <label>:19:
  %20 = load i32, i32* %2
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %24

; <label>:22:
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr  ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %32

; <label>:24:
  %25 = load i32, i32* %2
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %29

; <label>:27:
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr  ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %31

; <label>:29:
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr  ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %31

; <label>:31:
  br label %32

; <label>:32:
  br label %33

; <label>:33:
  br label %34

; <label>:34:
  br label %35

; <label>:35:
  %36 = load i32, i32* %1
  ret i32 %36
}
