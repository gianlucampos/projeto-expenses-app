import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/repositories/credit_card_repository.dart';

class CreditCardRepositoryImpl implements CreditCardRepository {
  List<CreditCard> _creditCards = [
    CreditCard.Digio(),
    CreditCard.Inter(),
    CreditCard.Nubank()
  ];

  @override
  List<CreditCard> getCreditCards() {
    return _creditCards;
  }
}
