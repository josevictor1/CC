declare i32 @printf(i8*, ...);

@str = constant [4 x i8] c "%d\0A\00"

define i32 @main(){
    %n = alloca i32;
    %1 = sub i32 1, 2;
    store i32 %1, i32* %n;
    %2 = load i32 , i32* %n;
    %3 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8],[4 x i8]* @str, i32 0, i32 0),i32 %2)

    ret i32 0;
}
