import 'dart:io';

num? calculate(int number1, int number2, String sign){
  num? result;
  
  if(sign == "+"){
    result = number1 + number2; 
  }
  else if(sign == "-"){
    result = number1 - number2; 
  }
  else if(sign == "*"){
    result = number1 * number2; 
    
  }
  else if(sign == "/"){
    result = number1 / number2; 
  }
  else{
    result = null; 
  }
  
  return result;
}

void main() {
  
  List<int> numbers = List.filled(2, 0);

  for(var i = 1; i <= 2; i++)
  {
    print("숫자 $i을 입력해주세요:");
  
    while(true){
      int? number = int.tryParse(stdin.readLineSync() as String);
      if(number == null){
        print("올바른 숫자$i을 다시 입력해주세요.");
        continue;
      }
      else{
        numbers[i - 1] = number; 
        break;
      }
    }
  }

  print("사칙연산자 중 하나를 입력해주세요.");
  while(true){
    String? sign = stdin.readLineSync() as String;
    num? result_value = calculate(numbers[0], numbers[1], sign);
    if(result_value == null){
      print("사칙연산자 중 하나를 입력해주세요.");
      continue;
    }
    else{
      print("정답은 $result_value 입니다.");
      break;
    }
  }
}