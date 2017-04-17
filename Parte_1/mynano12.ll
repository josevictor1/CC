@.str = constant [4 x i8] c"%d\0A\00"
@.str.1 = constant [3 x i8] c"0\0A\00"

declare i32 @printf(i8*, ...)

define i32 @main()  {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %1
  store i32 1, i32* %2
  store i32 2, i32* %3
  store i32 5, i32* %4
  br label %5

; <label>:5:
  %6 = load i32, i32* %4
  %7 = load i32, i32* %2
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %21

; <label>:9:
  %10 = load i32, i32* %2
  %11 = load i32, i32* %3
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

; <label>:13:
  %14 = load i32, i32* %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %14)
  br label %18

; <label>:16:
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %18

; <label>:18:
  %19 = load i32, i32* %4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4
  br label %5

; <label>:21:                                    
  %22 = load i32, i32* %1
  ret i32 %22
}
