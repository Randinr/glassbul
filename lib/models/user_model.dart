class UserModel {
  final String id;
  final String email;
  final String role; // admin, kasir, owner

  UserModel({required this.id, required this.email, required this.role});

  Map<String, dynamic> toMap() => {'email': email, 'role': role};

  factory UserModel.fromMap(String id, Map<String, dynamic> data) {
    return UserModel(
      id: id,
      email: data['email'] ?? '',
      role: data['role'] ?? 'kasir',
    );
  }
}
