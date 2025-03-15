import '../../model/currency.dart';

abstract class ICurrencyMethods {
  Future<List<Currency>> selectAll();
  Future<Currency> selectById(int id);
  Future<Currency> insert(Currency item);
  Future<int> updateItem(Currency item);
  Future<int> deleteById(int id);
  Future<void> insertAll(List<Currency> list);
  Future<Currency> getSelectedCurrency();
  void changeMainCurrency(int id);
}