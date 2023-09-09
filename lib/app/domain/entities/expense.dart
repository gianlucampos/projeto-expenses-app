import 'package:expenses_app/app/domain/entities/credit_card.dart';

class Expense {
  final String description;
  final double spentValue;
  final double savingsValue;
  final String dtSpent;
  final CreditCard creditCard;

  Expense(this.description, this.spentValue, this.savingsValue, this.dtSpent, this.creditCard);
}
