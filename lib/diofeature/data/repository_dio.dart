import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:trans_test/diofeature/data/post_dio.dart';

import '../../userfeature/data/post.dart';

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

    final json = response.data;

    return json;
  }
}

class RepoTest{
    UserRepoDio userRepoDio=UserRepoDio();


  Future<List<Character>> fetchUserTest() async{
     final user =await userRepoDio.fetchUser();
   //  print(user);
     var jsondata=user.map((e) => Character.fromJson(e)).toList();
     print(jsondata);
     return jsondata ;
  }

}
class ChallengeAhmed {
  Dio dio = Dio();

  Future<List<Datum>> fetchUser() async {
    Response response =
    await Dio().get('https://gorest.co.in/public/v1/users?page=1');

    final json = response.data;

    return Character.fromJson(json).data;
  }
}

class ChallengeAhmedaa {
  Dio dio = Dio();

  Future<Meta> fetchUser() async {
    Response response =
    await Dio().get('https://gorest.co.in/public/v1/users?page=1');

    final json = response.data;

    return Character.fromJson(json).meta;
  }
}