@.str = private unnamed_addr constant [21 x i8] c"Digite um n\C3\BAmero: \0A\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00"
@.str.2 = private unnamed_addr constant [18 x i8] c"N\C3\BAmero positivo\0A\00"
@.str.3 = private unnamed_addr constant [6 x i8] c"Zero\0A\00"
@.str.4 = private unnamed_addr constant [18 x i8] c"N\C3\BAmero negativo\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr  ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr  ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %2)
  %6 = load i32, i32* %2
  %7 = call i32 @verifica(i32 %6)
  store i32 %7, i32* %3
  %8 = load i32, i32* %3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

; <label>:10:
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr  ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %20

; <label>:12:
  %13 = load i32, i32* %3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr  ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %19

; <label>:17:
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr  ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %19

; <label>:19:
  br label %20

; <label>:20:
  %21 = load i32, i32* %1
  ret i32 %21
}

define i32 @verifica(i32) #0 {
  %2 = alloca i32
  %3 = alloca i32
  store i32 %0, i32* %2
  %4 = load i32, i32* %2
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:
  store i32 1, i32* %3
  br label %13

; <label>:7:
  %8 = load i32, i32* %2
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:
  store i32 -1, i32* %3
  br label %12

; <label>:11:
  store i32 0, i32* %3
  br label %12

; <label>:12:
  br label %13

; <label>:13:
  %14 = load i32, i32* %3
  ret i32 %14
}
