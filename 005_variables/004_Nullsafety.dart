void main() {
  // null safety dart 는 nullable 은 아님
  // null safety 의 필요성 
  // dart 에서는 어떤 변수가 null 이 될 수 있음을 명시해야함
  String? name = 'qwer'; // 변수타입 + ? null 이 될 수 있음을 명시
  name = null;


  // 1
  if(name != null){
    name.isNotEmpty;
  }
  // 2
  name?.isNotEmpty;

}