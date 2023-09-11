import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_widget.dart';
import 'package:expenses_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CreditCardAnimation extends StatefulWidget {
  final CreditCard creditCard;
  final bool isNext;

  CreditCardAnimation({
    required this.creditCard,
    required this.isNext,
  });

  @override
  _CreditCardAnimationState createState() => _CreditCardAnimationState();
}

class _CreditCardAnimationState extends State<CreditCardAnimation>
    with SingleTickerProviderStateMixin {
  final cardStore = getIt<CreditCardStore>();
  late AnimationController _controller;
  late Animation<Offset> animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0.0, widget.isNext ? -1 : 1),
  ).animate(_controller);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
    widget.isNext
        ? cardStore.setCallbackNextCard(_startAnimation)
        : cardStore.setCallbackPreviousCard(_startAnimation);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    print(widget.creditCard);
    _controller.forward();
    Future.delayed(Duration(milliseconds: 400), () {
      _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: CreditCardWidget(cardInfo: widget.creditCard),
    ).animate(
      controller: _controller,
      autoPlay: false,
      // effects: _inclinateUpperCard(),
      effects: widget.isNext ? _inclinateLowerCard() : _inclinateUpperCard(),
    );
  }
}

List<Effect> _inclinateUpperCard() {
  return [
    MoveEffect(begin: Offset(0, -300)),
    MoveEffect(begin: Offset(300, 0)),
    ScaleEffect(begin: Offset(.5, .5)),
    RotateEffect(begin: .125)
  ];
}

List<Effect> _inclinateLowerCard() {
  return [
    MoveEffect(begin: Offset(0, 300)),
    MoveEffect(begin: Offset(300, 0)),
    ScaleEffect(begin: Offset(.5, .5)),
    RotateEffect(begin: -.125)
  ];
}
