@.str = constant [3 x i8] c "%d\00";
@.str.1 = constant [2 x i8] c "0\00";

declare i32 @printf(i8*, ...);


define i32 @main() {
  %1 = alloca i32;
  %2 = alloca i32;
  store i32 0, i32* %1;
  store i32 1, i32* %2;
  %3 = load i32, i32* %2;
  %4 = icmp eq i32 %3, 1;
  br i1 %4, label %5, label %8;

  %6 = load i32, i32* %2;
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %6);
  br label %10;

  %9 = call i32 (i8*, ...) @printf(i8* getelementptr ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0));
  br label %10;


  %11 = load i32, i32* %1, align 4;
  ret i32 %11;
}
