import 'dart:io';

void main(){
    print('First name: ');
    String? first = stdin.readLineSync();
    print('Last name: ');
    String? last = stdin.readLineSync();

    print("Full name :- $first $last");
}