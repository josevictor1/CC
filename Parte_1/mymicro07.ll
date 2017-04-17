@.str = private unnamed_addr constant [20 x i8] c"Digite um n\C3\BAmero: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Positivo\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"O n\C3\BAmero \C3\A9 igual a  0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Negativo\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Deseja finalizar? (S/N) \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

declare i32 @getchar()

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i8, align 1
  store i32 0, i32* %1
  store i32 1, i32* %2
  br label %5

; <label>:5:
  %6 = load i32, i32* %2
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

; <label>:8:
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr  ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr  ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %3)
  %11 = load i32, i32* %3
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr  ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %26

; <label>:15:
  %16 = load i32, i32* %3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr  ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  br label %20

; <label>:20:
  %21 = load i32, i32* %3
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr  ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %25

; <label>:25:
  br label %26

; <label>:26:
  %27 = call i32 @getchar()
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %29 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %4)
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 83
  br i1 %32, label %33, label %34

; <label>:33:
  store i32 0, i32* %2
  br label %34

; <label>:34:
  br label %5

; <label>:35:
  %36 = load i32, i32* %1
  ret i32 %36
}
