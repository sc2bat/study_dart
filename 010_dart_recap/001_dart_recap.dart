void main() {
  /**
   * 001 데이터 타입
   */
  int num1 = 10;
  double double1 = 1.1;
  String str = 'string';
  bool bool1 = true;
  num num2 = 0;

  print(num1 is int);
  print(num2 is int);
  print(num1.runtimeType);

  /**
   * 002 타입 추론
   */
  // compile 시 데이터 타입 결정
  var i2 = 10;
  var d2 = 19.3;
  var str2 = 'typecheck';

  // runtimes 시 데이터 타입 결정
  dynamic a2 = 10;
  dynamic b2 = 10.0;

  /**
   * 003 상수
   */
  final String str3 = 'qwer';
  // str3 = 'asdf'; // The final variable can only be set once

  const int age = 10; // 성능상 이점

  /**
   * 004 Null Safety
   */
  // int age4 = null; // Null can't be assigned to a variable of type 'int'
  int? age4 = null; // ? 로 null 값 가능 nullable
  print(age4 == null); // true

  String? name4;
  // String result4 = name4; // 타입이 다르기 때문에 불가함
  // String result4 = name4!; // ! 로 null 아님을 명시할 수는 있음
  if (name4 != null) {
    String result4 = name4; // nullable 이 아니기때문에 가능
  }

  /**
   * 005 조건문, 반복문
   */
  int i5 = 10;
  if (i5 > 5) {
    print('$i5 는 5 보다 큼');
  } else if (i5 == 5) {
    print('$i5 는 5 과 같음');
  } else {
    print('$i5 는 5 보다 작음');
  }

  for (var i = 0; i < 5; i++) {
    print("반복문 실행 중 $i 번째");
    // break;
    // continue;
  }

  int num5 = 0;
  while (num5 < 5) {
    num5++;
  }

  do {} while (num5 < 5);

  /**
   * 006 연산자
   */
  String? str6;
  // str6 = 'qwer';
  str6 = "asdf";
  str6 ??= "asdf";
  str6 = str6 ?? "zxcv";

  bool isBool6 = true;
  var boolResult6 = isBool6 == true ? "true 임" : "false임";

  // cascade 연산자
  // paint 객체
  // var paint6 = Paint();
  // paint6.color = 'red';
  // paint6.strokeCap = 'red';
  // var paint6 = Paint()
  //   ..color = 'blue'
  //   ..strokeCap = null;
}
