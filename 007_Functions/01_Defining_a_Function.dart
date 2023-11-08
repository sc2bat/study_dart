String showHello(String name, int age) {
  return "hello $name i'm $age years old";
}

num plus(num a, num b) => a + b;

void main() {
  var text = showHello('qwer', 33);

  print(text);

  print(plus(33, 44));
}
