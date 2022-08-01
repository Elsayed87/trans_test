// To parse this JSON data, do
//
//     final postUserDio = postUserDioFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<PostUserDio> postUserDioFromJson(String str) => List<PostUserDio>.from(json.decode(str).map((x) => PostUserDio.fromJson(x)));

String postUserDioToJson(List<PostUserDio> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostUserDio {
  PostUserDio({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostUserDio.fromJson(Map<String, dynamic> json) => PostUserDio(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
