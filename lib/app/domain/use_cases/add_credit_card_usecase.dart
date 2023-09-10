import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/repositories/credit_card_repository.dart';

abstract class AddCreditCardUsecase {
  void call(CreditCard creditCard);
}

class AddCreditCardUsecaseImpl implements AddCreditCardUsecase {
  final CreditCardRepository repository;

  const AddCreditCardUsecaseImpl({
    required this.repository,
  });

  @override
  void call(CreditCard creditCard) {
    repository.addCreditCard(creditCard);
  }
}
