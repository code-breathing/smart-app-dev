import 'dart:math';

String passGenerator(){
    int length = 12;
    String s= "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#%^&*()_+-={}:?0123456789";

    String pass = List.generate(12, (_) => s[Random().nextInt(s.length)]).join();
    return pass;
}

void main(){
    print("Random pass: ${passGenerator()}");
}