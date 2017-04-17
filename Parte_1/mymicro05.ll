@.str = private unnamed_addr constant [17 x i8] c"Digite o nome: \0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"H - Homem ou M - Mulher: \0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Sexo s\C3\B3 pode ser H ou M!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Foram inseridos %d Homens\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Foram inseridos %d Mulheres\0A\00", align 1


declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...)

declare i32 @getchar()

define i32 @main()  {
  %1 = alloca i32
  %2 = alloca [40 x i8]
  %3 = alloca i8, align 1
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  store i32 0, i32* %1
  store i32 0, i32* %5
  store i32 0, i32* %6
  store i32 1, i32* %4
  br label %7

; <label>:7:
  %8 = load i32, i32* %4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %37

; <label>:10:
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %15 = call i32 @getchar()
  %16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %3)
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 72
  br i1 %19, label %20, label %23

; <label>:20:
  %21 = load i32, i32* %5
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5
  br label %33

; <label>:23:
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 77
  br i1 %26, label %27, label %30

; <label>:27:
  %28 = load i32, i32* %6
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6
  br label %32

; <label>:30:
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %32

; <label>:32:
  br label %33

; <label>:33:
  br label %34

; <label>:34:
  %35 = load i32, i32* %4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4
  br label %7

; <label>:37:
  %38 = load i32, i32* %5
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 %38)
  %40 = load i32, i32* %6
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 %40)
  %42 = load i32, i32* %1
  ret i32 %42
}
