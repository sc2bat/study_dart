class UserCreator {
  final String name;
  String email;
  int age;

  UserCreator.fromJson(Map<String, dynamic> userJson)
      : name = userJson["name"],
        email = userJson["email"],
        age = userJson["age"];

  void userInfo() {
    print("userInfo name => $name email => $email age => $age");
  }
}

void main() {
  print("start recap functions");

  var apiData = [
    {"name": "jenny", "email": "jy@naver.com", "age": 23},
    {"name": "sakura", "email": "sakura@naver.com", "age": 26},
  ];

  apiData.forEach((userJson) {
    var user01 = UserCreator.fromJson(userJson);
    user01.userInfo();
  });

  print("end recap functions");
}
