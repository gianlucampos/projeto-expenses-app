import 'package:expenses_app/app/domain/entities/credit_card.dart';

abstract class CreditCardRepository {
  List<CreditCard> getCreditCards();
  void addCreditCard(CreditCard creditCard);
}
