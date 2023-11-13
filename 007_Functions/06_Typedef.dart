typedef ListOfInts = List<int>;

List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String showGreeting(Map<String, String> userInfo) {
  return "Hello ${userInfo['name']}";
}

void main() {
  // print(reverseListOfNumbers([1, 2, 3, 4]));

  print(showGreeting({"name": "qwer"}));
}
