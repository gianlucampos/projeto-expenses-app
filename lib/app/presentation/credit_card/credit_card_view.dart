import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_animation.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_widget.dart';
import 'package:expenses_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CreditCardView extends StatefulWidget {
  @override
  State<CreditCardView> createState() => _CreditCardViewState();
}

class _CreditCardViewState extends State<CreditCardView> {
  final cardStore = getIt<CreditCardStore>();
  late bool startAnimation;
  late List<CreditCard> cards;

  @override
  void initState() {
    cardStore.loadCreditCards();
    startAnimation = false;
    cards = cardStore.creditCards;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CreditCardAnimation(creditCard: cards[0], isNext: false),
            Center(
              child: TextButton(
                child: Text('☝️ Previous ', textScaleFactor: 2.5),
                onPressed: () => _changeCard(false),
              ),
            ),
            CreditCardWidget(cardInfo: cards[1]),
            Center(
              child: TextButton(
                child: Text('👇 Next ', textScaleFactor: 2.5),
                onPressed: () => _changeCard(true),
              ),
            ),
            CreditCardAnimation(creditCard: cards[2], isNext: true),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              child: Text('💳 Add new card', textScaleFactor: 2.5),
              onPressed: () {
                print('edit');
              },
            ),
            TextButton(
              child: Text('📖 Edit card', textScaleFactor: 2.5),
              onPressed: () {
                print('edit');
              },
            ),
            TextButton(
              child: Text('🗑️ Remove card', textScaleFactor: 2.5),
              onPressed: () {
                print('edit');
              },
            ),
          ],
        ),
      ],
    );
  }

  void _changeCard(bool isNext) {
    isNext
        ? cardStore.callbackNextCard?.call()
        : cardStore.callbackPreviousCard?.call();
    Future.delayed(400.ms).whenComplete(
      () => super.setState(() {
        cards = _rotateArray(cards, isNext ? 2 : 1) as List<CreditCard>;
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
