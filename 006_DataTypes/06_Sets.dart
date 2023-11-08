void main() {
  var numbers01 = {
    1,
    2,
    3,
    4,
  };

  Set<int> numbers02 = {1, 2, 3, 4};

  for (var i = 0; i < 3; i++) numbers01.add(1);
  print(numbers01);
  // {1, 2, 3, 4} set elements is unique
}
