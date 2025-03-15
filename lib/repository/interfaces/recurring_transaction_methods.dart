import '../../model/recurring_transaction.dart';

abstract class IRecurringTransactionMethods {
  Future<RecurringTransaction?> insert(RecurringTransaction item) {
    throw UnimplementedError();
  }

  Future<int> deleteById(int id) {
    throw UnimplementedError();
  }

  Future<int> updateItem(RecurringTransaction item) {
    throw UnimplementedError();
  }

  Future<RecurringTransaction> selectById(int id) {
    throw UnimplementedError();
  }

  Future<List<RecurringTransaction>> selectAll() {
    throw UnimplementedError();
  }

  Future<List<RecurringTransaction>> selectAllActive() {
    throw UnimplementedError();
  }

  Future<void> checkRecurringTransactions() {
    throw UnimplementedError();
  }

  void populateRecurringTransaction(String scope, DateTime lastTransactionDate,
      RecurringTransaction transaction, int amount) {
    throw UnimplementedError();
  }
}
