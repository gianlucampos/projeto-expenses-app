import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/entities/expense.dart';

abstract class ExpenseRepository {
  List<Expense> getExpensesFromCreditCard(CreditCard creditCard);
  void addExpense(Expense expense);
}
