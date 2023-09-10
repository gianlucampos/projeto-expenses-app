import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/use_cases/add_credit_card_usecase.dart';
import 'package:expenses_app/app/domain/use_cases/get_credit_cards_usecase.dart';
import 'package:mobx/mobx.dart';

part 'credit_card_store.g.dart';

class CreditCardStore = _CreditCardStore with _$CreditCardStore;

abstract class _CreditCardStore with Store {
  final AddCreditCardUsecase _addCreditCard;
  final GetCreditCardUsecase _getCreditCard;

  _CreditCardStore({
    required AddCreditCardUsecase addCreditCardUsecase,
    required GetCreditCardUsecase getCreditCardUsecase,
  })  : _getCreditCard = getCreditCardUsecase,
        _addCreditCard = addCreditCardUsecase;

  @observable
  Function? callbackAnimation;

  @action
  void setCallbackAnimation(Function callback) {
    callbackAnimation = callback;
  }

  @observable
  List<CreditCard> creditCards = ObservableList<CreditCard>();

  @action
  void addCreditCard(CreditCard value) {
    _addCreditCard(value);
    creditCards.add(value);
  }

  @action
  void loadCreditCards() {
    creditCards.addAll(_getCreditCard());
  }
}
