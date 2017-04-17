declare i32 @printf(i8*, ...);

@str = constant [4 x i8] c "%d\0A\00";

define i32 @main(){
    entry:
    %n = alloca i32;
    store i32 1, i32* %n;
    %0 = load i32,i32* %n;
    %cond = icmp eq i32 %0, 1;
    br i1 %cond, label %IfEqual,label %IfUnequal;
    IfEqual:
        %1 = call i32(i8*, ...) @printf (i8* getelementptr([4 x i8],[4 x i8]* @str, i32 0, i32 0), i32 %0);
        ret i32 0;
    IfUnequal:
        %2 = call i32(i8*, ...) @printf (i8* getelementptr([4 x i8],[4 x i8]* @str, i32 0, i32 0), i32 0);
        ret i32 0;
}
