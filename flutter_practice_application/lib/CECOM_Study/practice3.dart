import 'dart:io';

void main(List<String> args) {
  
  for (int i = 1; i < 10; i++)
  {
    if (i > 5){
      print('$i 는 5보다 크다.');
    }
    else if (10 >= i && i >= 5){
      print('$i 는 10과 5사이.');
    }
    else{
      print('$i ㅁㄹ.');
    }  
  }
}