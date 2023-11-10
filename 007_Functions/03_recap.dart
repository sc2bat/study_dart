String showString(
    {required String name,
    String country = "none",
    int age = 0,
    String MBTI = "ENTP"}) {
  var returnValue = "name $name, country $country, age $age, MBIT $MBTI";
  // return "test";
  return returnValue;
}

void main() {
  print(showString(name: "qwer", country: "KOR"));
}
