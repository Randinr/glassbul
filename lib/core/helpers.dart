import 'package:intl/intl.dart';

/// Helper global untuk format angka, tanggal, dan ID transaksi

String formatRupiah(num number) {
  final format = NumberFormat.currency(locale: "id_ID", symbol: "Rp ", decimalDigits: 0);
  return format.format(number);
}

String formatTanggal(DateTime date) {
  final format = DateFormat('dd MMM yyyy');
  return format.format(date);
}

String generateID(String prefix) {
  final now = DateTime.now();
  return "$prefix-${now.millisecondsSinceEpoch}";
}
