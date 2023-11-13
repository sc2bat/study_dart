/*
??
?=
*/

String captializeName01(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return "noneValue";
}

String captializeName02(String? name) =>
    name != null ? name.toUpperCase() : "noneValue";

String captializeName03(String? name) => name?.toUpperCase() ?? "noneValue";
// left ?? right

void main() {
  print(captializeName02("qwer"));
  print(captializeName02(null));

  print(captializeName03("asdf"));
  print(captializeName03(null));

  String? name;
  name ??= "zxcv";
  print(name);

  name = null;
  name ??= "another";
  print(name);
}
