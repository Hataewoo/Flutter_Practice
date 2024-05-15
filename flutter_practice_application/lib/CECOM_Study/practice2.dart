import 'dart:io';

void main(List<String> args) {
  String? input_str = stdin.readLineSync();
  print(input_str);

  //int.Parse 와 int.tryPrase 차이 : try는 애러 나는 경우 null 반환
  int? new_int = int.tryParse(stdin.readLineSync() as String); 
  print(new_int);
  print(new_int.runtimeType);
}