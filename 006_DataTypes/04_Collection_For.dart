void main() {
  var friends01 = ['qwer', 'asdf'];
  var friends02 = [
    'lewis',
    'ralph',
    'roy',
    for (var friend in friends01) "❤🤣 $friend",
  ];
  // [lewis, ralph, roy, ❤🤣 qwer, ❤🤣 asdf]

  print(friends02);
}
