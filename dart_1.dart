import 'dart:io';

void main() {
  String? a = stdin.readLineSync();

  if(a != null && int.tryParse(a) != null){
    int n = int.parse(a);
    int sum=0;

    while(n > 0){
      sum += n%10;
      n ~/= 10;
    }

    print("$sum");
  }
}
