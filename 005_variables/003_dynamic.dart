void main() {
    // dynamic 여러 변수 타입으로 지정 가능
    // dynamic 의 필요성 
    // 1. 변수가 어떤 타입인지 알기 어려운 경우 (flutter, json)
    // 2. 종종 dynamic 으로 유용하게 넘어가는 경우
    // var name;
    dynamic name;
    name = 'asdf';
    name = 135;
    name = false;

    print(name);

    if (name is String){
      // name.
    }

    if (name is int){
      // name.
    }
}