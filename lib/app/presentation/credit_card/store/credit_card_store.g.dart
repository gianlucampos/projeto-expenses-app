// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditCardStore on _CreditCardStore, Store {
  late final _$callbackPreviousCardAtom =
      Atom(name: '_CreditCardStore.callbackPreviousCard', context: context);

  @override
  Function? get callbackPreviousCard {
    _$callbackPreviousCardAtom.reportRead();
    return super.callbackPreviousCard;
  }

  @override
  set callbackPreviousCard(Function? value) {
    _$callbackPreviousCardAtom.reportWrite(value, super.callbackPreviousCard,
        () {
      super.callbackPreviousCard = value;
    });
  }

  late final _$callbackNextCardAtom =
      Atom(name: '_CreditCardStore.callbackNextCard', context: context);

  @override
  Function? get callbackNextCard {
    _$callbackNextCardAtom.reportRead();
    return super.callbackNextCard;
  }

  @override
  set callbackNextCard(Function? value) {
    _$callbackNextCardAtom.reportWrite(value, super.callbackNextCard, () {
      super.callbackNextCard = value;
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
  void setCallbackPreviousCard(Function value) {
    final _$actionInfo = _$_CreditCardStoreActionController.startAction(
        name: '_CreditCardStore.setCallbackPreviousCard');
    try {
      return super.setCallbackPreviousCard(value);
    } finally {
      _$_CreditCardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCallbackNextCard(Function value) {
    final _$actionInfo = _$_CreditCardStoreActionController.startAction(
        name: '_CreditCardStore.setCallbackNextCard');
    try {
      return super.setCallbackNextCard(value);
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
callbackPreviousCard: ${callbackPreviousCard},
callbackNextCard: ${callbackNextCard},
creditCards: ${creditCards}
    ''';
  }
}
