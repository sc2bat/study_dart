import 'package:flutter/material.dart';
import 'package:toonapp/widgets/button_01.dart';
import 'package:toonapp/widgets/currency_card.dart';

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      inputTxt: "Transfer",
                      bgColor: Colors.amber,
                      txtColor: Colors.black),
                  Button(
                      inputTxt: "Request",
                      bgColor: Colors.black54,
                      txtColor: Colors.white70),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                cardName: "Euro",
                cardCode: "EUR",
                cardAmount: "3 848",
                cardIcon: Icons.euro_symbol_rounded,
                cardColor: Colors.black,
              ),
              const CurrencyCard(
                cardName: "Euro",
                cardCode: "EUR",
                cardAmount: "6 328",
                cardIcon: Icons.euro_symbol_rounded,
                cardColor: Colors.orange,
              ),
              const CurrencyCard(
                cardName: "Euro",
                cardCode: "EUR",
                cardAmount: "1 223",
                cardIcon: Icons.euro_symbol_rounded,
                cardColor: Colors.purpleAccent,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const App());
}
