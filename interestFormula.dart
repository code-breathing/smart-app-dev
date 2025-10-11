import 'dart:io';

void main(){
    print('give the p, t and r in order :');
    double? p = double.parse(stdin.readLineSync()!);
    double? t = double.parse(stdin.readLineSync()!);
    double? r = double.parse(stdin.readLineSync()!);

    double interest = (p* t * r)/100;
    print("the interest is $interest");
}