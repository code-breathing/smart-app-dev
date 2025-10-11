import 'dart:io';

void main(){
    print("enter the number to square: ");
    int? number = int.parse(stdin.readLineSync()!);
    int square = number*number;
    print("square is $square");
}