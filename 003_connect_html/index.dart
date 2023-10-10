import 'dart:html';

void main() {
  final header = querySelector('#header');
  header?.text = "Hello, World!";

  querySelector('#RipVanWinkle')!.text = 'Wake up, sleepy head!';
}
