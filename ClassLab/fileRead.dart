import 'dart:io';

void main(){
    File obj = File("test.txt");
    obj.writeAsStringSync("Hello! text written.", mode: FileMode.append);
    print(obj.readAsStringSync());
}