import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:mobx/mobx.dart';

part 'credit_card_store.g.dart';

class CreditCardStore = _CreditCardStore with _$CreditCardStore;

abstract class _CreditCardStore with Store {
  @observable
  List<CreditCard> creditCards = [];

  @observable
  Function? callbackAnimation;

  @action
  void addCreditCard(CreditCard value) {
    creditCards.add(value);
  }

  @action
  void setCallbackAnimation(Function callback) {
    callbackAnimation = callback;
  }
}
