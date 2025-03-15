import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/budget.dart';
import '../repository/interfaces/budget_methods.dart';

final monthlyBudgetsStatsProvider =
    FutureProvider<List<BudgetStats>>((ref) async {
  final budgets = await BudgetMethods().selectMonthlyBudgetsStats();
  return budgets;
});

class AsyncBudgetsNotifier extends AsyncNotifier<List<Budget>> {
  final IBudgetMethods _budgetMethods;

  AsyncBudgetsNotifier({required IBudgetMethods budgetMethods})
      : _budgetMethods = budgetMethods;

  @override
  Future<List<Budget>> build() async {
    return _getBudgets();
  }

  Future<List<Budget>> getBudgets() async {
    final budgets = await _budgetMethods.selectAllActive();
    return budgets;
  }

  Future<List<Budget>> _getBudgets() async {
    final budgets = await _budgetMethods.selectAllActive();
    return budgets;
  }

  Future<void> addBudget(Budget budget) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _budgetMethods.insertOrUpdate(budget);
      return _getBudgets();
    });
  }

  Future<void> updateBudget(Budget budget) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _budgetMethods.updateItem(budget);
      return _getBudgets();
    });
  }

  Future<void> removeBudget(int budgetId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await BudgetMethods().deleteById(budgetId);
      return _getBudgets();
    });
  }

  Future<void> refreshBudgets() async {
    ref.invalidateSelf();
  }
}

final budgetsProvider =
    AsyncNotifierProvider<AsyncBudgetsNotifier, List<Budget>>(() {
  return AsyncBudgetsNotifier(budgetMethods: BudgetMethods());
});
