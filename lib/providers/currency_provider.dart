import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/currency.dart';
import '../repository/interfaces/currency_methods.dart';

final currencyStateNotifier = ChangeNotifierProvider(
  (ref) => CurrencyState(currencyMethods: CurrencyMethods()),
);

class CurrencyState extends ChangeNotifier {
  late final ICurrencyMethods _currencyMethods;

  CurrencyState({required ICurrencyMethods currencyMethods}) {
    _currencyMethods = currencyMethods;
    _initializeState();
  }

  //Initial currency selected
  Currency selectedCurrency = const Currency(
      id: 2,
      symbol: '\$',
      code: 'USD',
      name: "United States Dollar",
      mainCurrency: true);

  Future<void> _initializeState() async {
    selectedCurrency = await _currencyMethods.getSelectedCurrency();
    notifyListeners();
  }

  void setSelectedCurrency(Currency currency) {
    selectedCurrency = currency;
    _currencyMethods.changeMainCurrency(currency.id!);
    notifyListeners();
  }
}
