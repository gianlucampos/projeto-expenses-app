import 'package:expenses_app/expenses/domain/entities/CreditCard.dart';
import 'package:expenses_app/expenses/presentation/credit_card/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CreditCardView extends StatefulWidget {
  @override
  State<CreditCardView> createState() => _CreditCardViewState();
}

class _CreditCardViewState extends State<CreditCardView> {
  bool startAnimation = false;
  List<CreditCard> cards = [
    CreditCard.Digio(),
    CreditCard.Inter(),
    CreditCard.Nubank()
  ];

  List rotateArray(List nums, int k) {
    k = k.remainder(nums.length);
    int r = nums.length - k;
    List getRenges = nums.getRange(r, nums.length).toList();
    nums.removeRange(r, nums.length);
    nums.insertAll(0, getRenges);
    return nums;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CreditCardWidget(cardInfo: cards[0])
                .animate(
                  target: startAnimation ? 1 : 0,
                  onComplete: (controller) => controller.reset(),
                )
                .slideY(
                  end: 1,
                  curve: FlippedCurve(Curves.easeIn),
                  duration: 500.ms,
                ),
            CreditCardWidget(cardInfo: cards[1])
                .animate(
                  target: startAnimation ? 0 : 1,
                  onComplete: (controller) => controller.reset(),
                )
                .slideY(
                  end: 1,
                  curve: FlippedCurve(Curves.easeIn),
                  duration: 500.ms,
                ),
            CreditCardWidget(cardInfo: cards[2])
                .animate(
                  target: startAnimation ? 1 : 0,
                  onComplete: (controller) => controller.reset(),
                )
                .slideY(
                  end: -2,
                  curve: FlippedCurve(Curves.easeIn),
                  duration: 500.ms,
                ),
          ],
        ),
        IconButton(
          padding: EdgeInsets.all(0.0),
          iconSize: 150,
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              startAnimation = !startAnimation;
              Future.delayed(500.ms).whenComplete(
                () => super.setState(() {
                  cards = rotateArray(cards, 1) as List<CreditCard>;
                }),
              );
            });
          },
        ),
      ],
    );
  }
}
