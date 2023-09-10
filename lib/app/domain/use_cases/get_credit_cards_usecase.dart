import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/repositories/credit_card_repository.dart';

abstract class GetCreditCardUsecase {
  List<CreditCard> call();
}

class GetCreditCardUsecaseImpl implements GetCreditCardUsecase {
  final CreditCardRepository repository;

  const GetCreditCardUsecaseImpl({
    required this.repository,
  });

  @override
  List<CreditCard> call() {
    return repository.getCreditCards();
  }

}
