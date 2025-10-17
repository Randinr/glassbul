import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String toRupiah(num number) =>
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0).format(number);
}
