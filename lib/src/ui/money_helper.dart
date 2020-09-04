import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class MoneyHelper {
  static String formatMoney(double sum) {
    return   FlutterMoneyFormatter(
      amount: sum,
      settings: MoneyFormatterSettings(
        symbol: '₽',
        thousandSeparator: ' ',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 0,
      ),
    ).output.symbolOnRight;
  }
}