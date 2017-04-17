
@.str = private unnamed_addr constant [46 x i8] c"\09Tabela de convers\C3\A3o: Celsius -> Fahrenheit\0A\00"
@.str.1 = private unnamed_addr constant [35 x i8] c"Digite a temperatura em Celsius: \0A\00"
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00"
@.str.3 = private unnamed_addr constant [29 x i8] c"A nova temperatura \C3\A9: %f F\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @__isoc99_scanf(i8*, ...) 

; Function Attrs: noinline nounwind uwtable
define i32 @main() {
  %1 = alloca float
  %2 = alloca float
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), float* %1)
  %6 = load float, float* %1
  %7 = fmul float 9.0, %6
  %8 = fadd float %7, 160.0
  %9 = fdiv float %8, 5.0
  store float %9, float* %2
  %10 = load float, float* %2
  %11 = fpext float %10 to double
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), double %11)
  ret i32 0
}
