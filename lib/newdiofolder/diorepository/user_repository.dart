import 'package:dio/dio.dart';

import '../diomodels/user_model.dart';

class UserApiRepository{
  var dio=Dio();
    Future<Data> fetchUserData()async{
      Response response = await dio.get('https://reqres.in/api/users/2');
      var user=response.data;
      return UserModelDio.fromJson(user).data;

     }
}