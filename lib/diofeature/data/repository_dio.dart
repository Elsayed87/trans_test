import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:trans_test/diofeature/data/post_dio.dart';

// class UserRepoDio {
//   var dio = Dio();
//   Future<List<dynamic>> fetchUser() async {
//     Response response =
//         await Dio().get('https://jsonplaceholder.typicode.com/posts');
//     final json = response.data;
//     //final user=PostUserDio.fromJson(json) ;
//     // print(user);
//     print(json[0]['body']);
//     return json as List<dynamic>;
//   }
// }

// running code with dio list of map
// class UserRepoDio {
//   Dio dio = Dio();
//   Future<List<dynamic>> fetchUser() async {
//     Response response =
//         await Dio().get('https://jsonplaceholder.typicode.com/posts');
//
//     print(response);
//
//     return (response.data);
//   }
// }

///////
class UserRepoDio {
  Dio dio = Dio();
  Future<List<dynamic>> fetchUser() async {
    Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');

    print(response);

    return (response.data);
  }
}
