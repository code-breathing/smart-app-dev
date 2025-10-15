import 'dart:io';

void main(){
  print("Enter a natural number: ");
  int? n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for(int i = 0; i<=n;i++){
    sum+=i;
  }
  print("sum of natural numbers of n is $sum ");
}