/*
 create user model 
*/

class UserModel {
  final int id;
  final String name;
  final String email;
  final String password;
  final int promo_id;
  final String role;
  final String created_at;
  final String updated_at;


  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.promo_id,
    required this.role,
    required this.created_at,
    required this.updated_at,
  });

  toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'promo_id': promo_id,
      'role': role,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  static fromJson(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      password: data['password'],
      promo_id: data['promo_id'],
      role: data['role'],
      created_at: data['created_at'],
      updated_at: data['updated_at'],
    );
  }
}