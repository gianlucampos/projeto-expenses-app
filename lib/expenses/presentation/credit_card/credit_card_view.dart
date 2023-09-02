import 'package:expenses_app/expenses/domain/entities/CreditCard.dart';
import 'package:expenses_app/expenses/presentation/credit_card/credit_card_widget.dart';
import 'package:flutter/material.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotationTransition(
          turns: AlwaysStoppedAnimation(30 / 360),
          child: Container(
            height: 187.5,
            width: 300,
            child: FittedBox(
              fit: BoxFit.contain,
              child: CreditCardWidget(cardInfo: CreditCard.Nubank()),
            ),
          ),
        ),
        SizedBox(height: 40),
        CreditCardWidget(cardInfo: CreditCard.Digio()),
        SizedBox(height: 40),
        RotationTransition(
          turns: AlwaysStoppedAnimation(330 / 360),
          child: Container(
            height: 187.5,
            width: 300,
            child: FittedBox(
              fit: BoxFit.contain,
              child: CreditCardWidget(cardInfo: CreditCard.Inter()),
            ),
          ),
        )
      ],
    );
  }
}
