import 'package:expenses_app/app/domain/entities/credit_card.dart';
import 'package:expenses_app/app/domain/entities/expense.dart';
import 'package:expenses_app/app/domain/repositories/expenses_repository.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  List<Expense> _expenses = [
    Expense('Food', 1253.43, 4057.14, 'Jan', CreditCard.Digio()),
    Expense('Food', 924.92, 4014.63, 'Feb', CreditCard.Digio()),
    Expense('Food', 656.03, 5290.37, 'Mar', CreditCard.Digio()),
    Expense('Food', 641.46, 4010.13, 'Apr', CreditCard.Digio()),
    Expense('Food', 649.44, 5009.14, 'May', CreditCard.Digio()),
    Expense('Food', 1001.30, 4060.31, 'June', CreditCard.Digio()),
    Expense('Food', 1978.55, 4619.32, 'July', CreditCard.Digio()),
    Expense('Food', 920.61, 4233.22, 'Aug', CreditCard.Digio()),
    Expense('Food', 584.55, 4009.14, 'Sep', CreditCard.Digio()),
    Expense('Food', 228.72, 4009.14, 'Oct', CreditCard.Digio()),
    Expense('Food', 394.34, 6000.00, 'Nov', CreditCard.Digio()),
    Expense('Food', 99.90, 6000.00, 'Dec', CreditCard.Digio()),
  ];

  @override
  List<Expense> getExpensesFromCreditCard(CreditCard creditCard) {
    return _expenses
        .where((expense) => expense.creditCard == creditCard)
        .toList();
  }

  @override
  void addExpense(Expense expense) {
    _expenses.add(expense);
  }
}
