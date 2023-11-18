import 'package:flutter/material.dart';

class CurrencyCardAddTrans extends StatelessWidget {
  final String cardName, cardCode, cardAmount;
  final IconData cardIcon;
  final bool cardIsInverte;
  final int cardTransform;

  const CurrencyCardAddTrans(
      {super.key,
      required this.cardName,
      required this.cardCode,
      required this.cardAmount,
      required this.cardIcon,
      required this.cardIsInverte,
      required this.cardTransform});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, cardTransform * -10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: cardIsInverte ? Colors.black : Colors.white70,
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
                    style: TextStyle(
                      color: cardIsInverte ? Colors.white70 : Colors.black,
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
                        style: TextStyle(
                          color: cardIsInverte ? Colors.white70 : Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        cardCode,
                        style: TextStyle(
                          color: cardIsInverte ? Colors.white70 : Colors.black,
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
                    color: cardIsInverte ? Colors.white70 : Colors.black,
                    size: 90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
