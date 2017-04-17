declare i32 @printf(i8*, ...);
@str = constant [4 x i8] c"%d\0A\00";

define i32 @main(){
    %n = alloca i32;
    %m = alloca i32;
    %x = alloca i32;
    store i32 1 , i32* %n;
    store i32 2 , i32* %m;
    store i32 5 , i32* %x;
    %1 = load i32, i32* %n;
    %2 = load i32, i32* %m;
    %3 = load i32, i32* %x;
    %cond = icmp sgt i32 %3,%1;
    br i1 %cond, label %IfGreater, label %Else;
    IfGreater:
        %4 = load i32, i32* %n;
        %5 = add  i32 %4, %2;
        %6 = call i32(i8*, ...) @printf(i8* getelementptr([4 x i8],[4 x i8]* @str,i32 0,i32 0),i32 %5);
        store i32 %5, i32* %n;
        %7 = icmp sgt i32 %3,%5;
        br i1 %7, label %IfGreater, label %Else;
    Else:
        ret i32 0;

}
