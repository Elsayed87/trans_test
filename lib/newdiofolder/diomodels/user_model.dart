// To parse this JSON data, do
//
//     final userModelDio = userModelDioFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserModelDio userModelDioFromJson(String str) => UserModelDio.fromJson(json.decode(str));

String userModelDioToJson(UserModelDio data) => json.encode(data.toJson());

class UserModelDio {
  UserModelDio({
    required this.data,
    required this.support,
  });

  final Data data;
  final Support support;

  factory UserModelDio.fromJson(Map<String, dynamic> json) => UserModelDio(
    data: Data.fromJson(json["data"]),
    support: Support.fromJson(json["support"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "support": support.toJson(),
  };
}

class Data {
  Data({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}

class Support {
  Support({
    required this.url,
    required this.text,
  });

  final String url;
  final String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json["url"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "text": text,
  };
}
