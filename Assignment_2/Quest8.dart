import 'dart:io';

void main(){
    print("Enter 1st number: ");
    int? a = int.parse(stdin.readLineSync()!);
    print("Enter 2nd number: ");
    int? b = int.parse(stdin.readLineSync()!);

    print("operations to perform(+,-,*,/) :");
    String? op = stdin.readLineSync();

    if(op == "+") print("Addition: ${a + b}");
    else if(op == "-") print("Subtraction: ${a-b}");
    else if(op == "*") print("Multiplication: ${a*b}");
    else if(op == "/"){
        if(b != 0)print("Division: ${a/b}");
        else print("Divisor cannt be zero!");
    }
    else print("Wrong input");
}