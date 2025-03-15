import '../../model/category_transaction.dart';
import '../../model/transaction.dart';

abstract class ICategoryTransactionMethods {
  Future<CategoryTransaction> insert(CategoryTransaction item) {
    throw UnimplementedError();
  }

  Future<CategoryTransaction> selectById(int id) {
    throw UnimplementedError();
  }

  Future<List<CategoryTransaction>> selectAll() {
    throw UnimplementedError();
  }

  Future<List<CategoryTransaction>> selectCategoriesByType(
      CategoryTransactionType type) {
    throw UnimplementedError();
  }

  Future<int> updateItem(CategoryTransaction item) {
    throw UnimplementedError();
  }

  Future<int> deleteById(int id) {
    throw UnimplementedError();
  }
}

mixin TransactionTypeCategory {
  CategoryTransactionType? transactionToCategoryType(TransactionType type) {
    switch (type) {
      case TransactionType.income:
        return CategoryTransactionType.income;
      case TransactionType.expense:
        return CategoryTransactionType.expense;
      case TransactionType.transfer:
        return null;
    }
  }

  TransactionType categoryToTransactionType(CategoryTransactionType type) {
    switch (type) {
      case CategoryTransactionType.income:
        return TransactionType.income;
      case CategoryTransactionType.expense:
        return TransactionType.expense;
    }
  }
}
