class UserModel{
  late int id;
  late String name;
  late String email;
  late String phone;
  late String username;
  late String password;

//<editor-fold desc="Data Methods">

  UserModel({
    required this.id,
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
          id == other.id &&
          name == other.name &&
          email == other.email &&
          phone == other.phone &&
          username == other.username &&
          password == other.password);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      username.hashCode ^
      password.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' id: $id,' +
        ' name: $name,' +
        ' email: $email,' +
        ' phone: $phone,' +
        ' username: $username,' +
        ' password: $password,' +
        '}';
  }

  UserModel copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? username,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'phone': this.phone,
      'username': this.username,
      'password': this.password,
    };
  }

  String toJson(){
    return '{' +
        ' id: $id,' +
        ' name: $name,' +
        ' email: $email,' +
        ' phone: $phone,' +
        ' username: $username,' +
        ' password: $password,' +
        '}';
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

//</editor-fold>
}

