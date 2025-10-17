class Validators {
  static String? requiredField(String? value) {
    if (value == null || value.isEmpty) return "Field wajib diisi";
    return null;
  }

  static String? positiveNumber(String? value) {
    if (value == null || value.isEmpty) return "Masukkan angka";
    final number = double.tryParse(value);
    if (number == null || number <= 0) return "Harus lebih dari 0";
    return null;
  }

  static bool isValidEmail(String email) =>
      RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
}
