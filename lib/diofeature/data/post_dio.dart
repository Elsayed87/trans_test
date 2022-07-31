// To parse this JSON data, do
//
//     final postModelDio = postModelDioFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<PostModelDio> postModelDioFromJson(String str) => List<PostModelDio>.from(json.decode(str).map((x) => PostModelDio.fromJson(x)));

String postModelDioToJson(List<PostModelDio> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModelDio {
  PostModelDio({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostModelDio.fromJson(Map<String, dynamic> json) => PostModelDio(
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
