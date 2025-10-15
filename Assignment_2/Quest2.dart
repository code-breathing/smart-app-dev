import 'dart:io';

void main(){
    print("Enter a single charecter : ");
    String? ch = stdin.readLineSync()!.toLowerCase();
    if("a" == ch || "e" == ch ||"i" == ch ||"o" == ch ||"u" == ch ){
        print("It is a vowel!");
    }
    else{
        print("It is a consonent!");
    }
}