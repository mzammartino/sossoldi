import '../../model/budget.dart';

abstract class IBudgetMethods {
  Future<Budget> insert(Budget item) {
    throw UnimplementedError();
  }

  Future<Budget> insertOrUpdate(Budget item) {
    throw UnimplementedError();
  }

  Future<Budget> selectById(int id) {
    throw UnimplementedError();
  }

  Future<List<Budget>> selectAll() {
    throw UnimplementedError();
  }

  Future<List<Budget>> selectAllActive() {
    throw UnimplementedError();
  }

  Future<List<BudgetStats>> selectMonthlyBudgetsStats() {
    throw UnimplementedError();
  }

  Future<void> updateItem(Budget item) {
    throw UnimplementedError();
  }

  Future<void> deleteById(int id) {
    throw UnimplementedError();
  }

  Future<void> deleteByCategory(int idCategory) {
    throw UnimplementedError();
  }
}
