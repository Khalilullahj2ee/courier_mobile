class UserModel{
  late String name;
  late String email;
  late String phone;
  late String username;
  late String password;

//<editor-fold desc="Data Methods">

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          phone == other.phone &&
          username == other.username &&
          password == other.password);

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      username.hashCode ^
      password.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' name: $name,' +
        ' email: $email,' +
        ' phone: $phone,' +
        ' username: $username,' +
        ' password: $password,' +
        '}';
  }

  UserModel copyWith({
    String? name,
    String? email,
    String? phone,
    String? username,
    String? password,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'phone': this.phone,
      'username': this.username,
      'password': this.password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

//</editor-fold>
}

