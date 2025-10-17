import 'package:intl/intl.dart';

class DateHelper {
  static String formatShort(DateTime date) => DateFormat('dd/MM/yy').format(date);
  static String formatLong(DateTime date) => DateFormat('dd MMMM yyyy').format(date);
}
