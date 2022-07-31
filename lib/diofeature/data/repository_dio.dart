import 'package:dio/dio.dart';
import 'package:trans_test/diofeature/data/post_dio.dart';

import '../../userfeature/data/usermodel.dart';

class User {
  User({
    required this.data,
  });

  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
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

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

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

class UserRepoDio {

  var dio = Dio();
  Future<List<dynamic>?> fetchUser() async {
    Response response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    try {



      // if (response.statusCode == 200) {
      //   print(response.data);
      //   return ApiResponse<List<MyAttendanceModel>>.completed(
      //       response.data.map<MyAttendanceModel>((item) => MyAttendanceModel.fromJson(item)).toList();
      //   );
      // }
      if (response.statusCode == 200) {
         print(response.data);
       // User user=  User.fromJson(response.data);
       // return user;

      //  return  (response.data as List).map((e) => UserModel.fromJson(e)).toList() as List<User>;
        // return userModelFromJson(response.data.toString()).data;
        // return (response.data as List)
        //     .map((e) => ProductsModel.fromJson(e))
        //     .toList();
        return response.data ;
      }
    } catch (e) {
      print(e.toString());
      return[];
    }

  }
}
