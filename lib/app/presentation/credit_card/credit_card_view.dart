import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_animation.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get_it/get_it.dart';

class CreditCardView extends StatefulWidget {
  @override
  State<CreditCardView> createState() => _CreditCardViewState();
}

class _CreditCardViewState extends State<CreditCardView> {
  final cardStore = GetIt.I.get<CreditCardStore>();
  bool startAnimation = false;
  List<CreditCard> cards = [
    CreditCard.Digio(),
    CreditCard.Inter(),
    CreditCard.Nubank()
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CreditCardAnimation(creditCard: cards[0]),
            CreditCardWidget(cardInfo: cards[1]),
            CreditCardWidget(cardInfo: cards[2])
                .animate(autoPlay: false, effects: inclinateLowerCard()),
          ],
        ),
        TextButton(
          child: Text('👈 Choose this card ', textScaleFactor: 3),
          onPressed: _animate,
        ),
      ],
    );
  }

  void _animate() {
    cardStore.callbackAnimation?.call();
    Future.delayed(400.ms).whenComplete(
      () => super.setState(() {
        cards = _rotateArray(cards, 1) as List<CreditCard>;
      }),
    );
  }
}

List _rotateArray(List nums, int count) {
  count = count.remainder(nums.length);
  int r = nums.length - count;
  List getRenges = nums.getRange(r, nums.length).toList();
  nums.removeRange(r, nums.length);
  nums.insertAll(0, getRenges);
  return nums;
}

List<Effect> inclinateLowerCard() {
  return [
    MoveEffect(begin: Offset(0, 300)),
    MoveEffect(begin: Offset(300, 0)),
    ScaleEffect(begin: Offset(.5, .5)),
    RotateEffect(begin: .875)
  ];
}
