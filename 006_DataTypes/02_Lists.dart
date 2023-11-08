void main() {
  var numbers01 = [1, 2, 3, 4];

  List<int> numbers02 = [1, 2, 3, 4];
  numbers02.add(5); // int 면 int 만 add 가능
  // print(numbers02.indexOf(3));

  // collection if
  var showFive = true;
  var numbers03 = [
    1,
    2,
    3,
    4,
    if (showFive) 5, // if(showFive){numbers03.add(5);}
  ];

  print(numbers03);
}
