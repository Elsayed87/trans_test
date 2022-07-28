// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);
//
// import 'package:meta/meta.dart';
// import 'dart:convert';

// List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));
//
// String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class UserModel {
//   UserModel({
//     required this.id,
//     required this.name,
//     required this.username,
//     required this.email,
//     required this.address,
//     required this.phone,
//     required this.website,
//     required this.company,
//   });
//
//   final int id;
//   final String name;
//   final String username;
//   final String email;
//   final Address address;
//   final String phone;
//   final String website;
//   final Company company;
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//     id: json["id"],
//     name: json["name"],
//     username: json["username"],
//     email: json["email"],
//     address: Address.fromJson(json["address"]),
//     phone: json["phone"],
//     website: json["website"],
//     company: Company.fromJson(json["company"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "username": username,
//     "email": email,
//     "address": address.toJson(),
//     "phone": phone,
//     "website": website,
//     "company": company.toJson(),
//   };
// }
//
// class Address {
//   Address({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });
//
//   final String street;
//   final String suite;
//   final String city;
//   final String zipcode;
//   final Geo geo;
//
//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//     street: json["street"],
//     suite: json["suite"],
//     city: json["city"],
//     zipcode: json["zipcode"],
//     geo: Geo.fromJson(json["geo"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "street": street,
//     "suite": suite,
//     "city": city,
//     "zipcode": zipcode,
//     "geo": geo.toJson(),
//   };
// }
//
// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });
//
//   final String lat;
//   final String lng;
//
//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//     lat: json["lat"],
//     lng: json["lng"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "lat": lat,
//     "lng": lng,
//   };
// }
//
// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });
//
//   final String name;
//   final String catchPhrase;
//   final String bs;
//
//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//     name: json["name"],
//     catchPhrase: json["catchPhrase"],
//     bs: json["bs"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "catchPhrase": catchPhrase,
//     "bs": bs,
//   };
// }
// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.meta,
    required this.data,
  });

  final Meta meta;
  final List<User> data;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        meta: Meta.fromJson(json["meta"]),
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
  });

  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        gender: json["gender"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "status": status,
      };
}

class Meta {
  Meta({
    required this.pagination,
  });

  final Pagination pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  Pagination({
    required this.total,
    required this.pages,
    required this.page,
    required this.limit,
    required this.links,
  });

  final int total;
  final int pages;
  final int page;
  final int limit;
  final Links links;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        pages: json["pages"],
        page: json["page"],
        limit: json["limit"],
        links: Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "pages": pages,
        "page": page,
        "limit": limit,
        "links": links.toJson(),
      };
}

class Links {
  Links({
    required this.previous,
    required this.current,
    required this.next,
  });

  final dynamic previous;
  final String current;
  final String next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        previous: json["previous"],
        current: json["current"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "previous": previous,
        "current": current,
        "next": next,
      };
}
