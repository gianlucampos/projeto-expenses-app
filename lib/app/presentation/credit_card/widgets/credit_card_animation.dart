import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:expenses_app/app/presentation/credit_card/widgets/credit_card_widget.dart';
import 'package:expenses_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CreditCardAnimation extends StatefulWidget {
  final CreditCard creditCard;

  CreditCardAnimation({
    required this.creditCard,
  });

  final state = _CreditCardAnimationState();

  @override
  _CreditCardAnimationState createState() => state;
}

class _CreditCardAnimationState extends State<CreditCardAnimation>
    with SingleTickerProviderStateMixin {
  final cardStore = getIt<CreditCardStore>();
  late AnimationController _controller;
  late Animation<Offset> animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, 1.0),
  ).animate(_controller);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
    cardStore.setCallbackAnimation(startAnimation);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startAnimation() {
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
    )
        .animate(controller: _controller, autoPlay: false)
        .moveY(begin: -300)
        .moveX(begin: 300)
        .scaleXY(begin: .5)
        .rotate(begin: .125);
  }
}
