String show(String name, int age, String country, String hobby) {
  return "Hello $name, you are $age, and you come from $country, and your hobby is $hobby";
}

// default value 지정하여 nullsafety
String showParameter(
    {String name = 'hong',
    int age = 20,
    String country = 'KOR',
    String hobby = 'football'}) {
  return "Hello $name, you are $age, and you come from $country, and your hobby is $hobby";
}

// required modifier 로 필수값 기재
String showRequired(
    {required String name,
    int age = 20,
    required String country,
    String hobby = 'football'}) {
  return "Hello $name, you are $age, and you come from $country, and your hobby is $hobby";
}

void main() {
  // print(show('qwer', 33, 'KOR', 'diving'));
  print(showParameter(age: 12, country: 'KOR', name: 'qwer', hobby: 'diving'));
  print(showParameter(age: 12, hobby: 'cycling'));
  print(showRequired(country: 'KOR', name: 'qwer'));
}
