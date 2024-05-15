import "dart:io";

void main() {
  bool isClear = true;
  var weather = isClear == true ? "맑음" : "흐림";
  print(weather);
  print(weather.runtimeType);
}