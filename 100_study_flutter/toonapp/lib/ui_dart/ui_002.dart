import 'package:flutter/material.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrice = taxAmount + priceAmount;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black26,
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "hello hina",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "qewr band",
                        style: TextStyle(
                          // color: Colors.white.withOpacity(0.8),
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              const Center(
                child: Text(
                  "Total Value",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "\$ 3 939 393 939",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        "Transfer",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const MyButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 83, 83, 83),
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          "Request",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const App());
}
