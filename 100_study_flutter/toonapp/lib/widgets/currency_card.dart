import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String cardName, cardCode, cardAmount;
  final IconData cardIcon;
  final Color cardColor;

  const CurrencyCard(
      {super.key,
      required this.cardName,
      required this.cardCode,
      required this.cardAmount,
      required this.cardIcon,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardName,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      cardAmount,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      cardCode,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.4,
              child: Transform.translate(
                offset: const Offset(-6, 10),
                child: Icon(
                  cardIcon,
                  color: Colors.white,
                  size: 90,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
