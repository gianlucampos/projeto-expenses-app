import 'package:expenses_app/expenses/domain/entities/CreditCard.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key, required this.cardInfo}) : super(key: key);

  final CreditCard cardInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: cardInfo.color,
        gradient: LinearGradient(
          colors: [
            cardInfo.color.withOpacity(0.55),
            cardInfo.color.withOpacity(0.95),
            // Colors.transparent.withOpacity(0.95),
            cardInfo.color.withOpacity(0.35),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardInfo.name, style: TextStyle(color: Colors.white, fontSize: 22)),
                Icon(Icons.contactless_rounded,color: Colors.white, size: 40),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ ${cardInfo.valueSpent} / \$ ${cardInfo.limitUsage}',
                    style: TextStyle(color: Colors.tealAccent, fontSize: 22)),
                ImageIcon(
                  AssetImage(cardInfo.logoImage),
                  color: Colors.transparent,
                  size: 80,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
