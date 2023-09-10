// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditCardStore on _CreditCardStore, Store {
  late final _$callbackAnimationAtom =
      Atom(name: '_CreditCardStore.callbackAnimation', context: context);

  @override
  Function? get callbackAnimation {
    _$callbackAnimationAtom.reportRead();
    return super.callbackAnimation;
  }

  @override
  set callbackAnimation(Function? value) {
    _$callbackAnimationAtom.reportWrite(value, super.callbackAnimation, () {
      super.callbackAnimation = value;
    });
  }

  late final _$creditCardsAtom =
      Atom(name: '_CreditCardStore.creditCards', context: context);

  @override
  List<CreditCard> get creditCards {
    _$creditCardsAtom.reportRead();
    return super.creditCards;
  }

  @override
  set creditCards(List<CreditCard> value) {
    _$creditCardsAtom.reportWrite(value, super.creditCards, () {
      super.creditCards = value;
    });
  }

  late final _$_CreditCardStoreActionController =
      ActionController(name: '_CreditCardStore', context: context);

  @override
  void setCallbackAnimation(Function callback) {
    final _$actionInfo = _$_CreditCardStoreActionController.startAction(
        name: '_CreditCardStore.setCallbackAnimation');
    try {
      return super.setCallbackAnimation(callback);
    } finally {
      _$_CreditCardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCreditCard(CreditCard value) {
    final _$actionInfo = _$_CreditCardStoreActionController.startAction(
        name: '_CreditCardStore.addCreditCard');
    try {
      return super.addCreditCard(value);
    } finally {
      _$_CreditCardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadCreditCards() {
    final _$actionInfo = _$_CreditCardStoreActionController.startAction(
        name: '_CreditCardStore.loadCreditCards');
    try {
      return super.loadCreditCards();
    } finally {
      _$_CreditCardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
callbackAnimation: ${callbackAnimation},
creditCards: ${creditCards}
    ''';
  }
}
