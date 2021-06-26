import 'dart:convert';

class UserModel {
  final String name;
  final String? photURL;

  UserModel({required this.name, this.photURL});

  Map<String, dynamic> toMap() => {"name": name, "photoURL": photURL};

  String toJson() => jsonEncode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photURL: map['photoURL']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));
}
