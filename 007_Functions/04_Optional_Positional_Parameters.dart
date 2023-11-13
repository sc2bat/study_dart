// optional positional parameters
// 순서에 맞춰서 입력해야 함

String showString(String name, int age, [String? country = "KOR"]) =>
    "Hello $name, age $age, country $country";

void main() {
  print(showString("asdf", 13, "KOR"));

  print(showString("qwer", 33));
}
