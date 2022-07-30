import 'dart:developer';

import 'package:trans_test/userfeature/data/photo.dart';
import 'package:trans_test/userfeature/data/post.dart';
import 'package:trans_test/userfeature/data/products.dart';
import 'package:trans_test/userfeature/data/usermodel.dart';
import 'package:dio/dio.dart';

import '../constants/consturl.dart';
import 'package:http/http.dart' as http;

import 'news.dart';

// class UserRepository {
//   // List<UserModel> userList = [];
//   Future<List<User>> getUser() async {
//     try {
//       var url = Uri.parse(UrlConstants.baseUrl1 + UrlConstants.endPoint1);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         List<User> model = userModelFromJson(response.body).data;
//
//         return model;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     throw Exception();
//   }
// }

// class PostRepo{
//   Future<PostModel> getPost() async {
//     try {
//       var url = Uri.parse(UrlConstants.baseUrl3 + UrlConstants.endPoint3);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//
//      //print(response.body);
//         return postModelFromJson(response.body) ;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     throw Exception();
//   }
// }

// class NewsRepo{
//   Future<List<NewsModel>> getNewsPost() async {
//     try {
//       var url = Uri.parse(UrlConstants.baseUrl3 + UrlConstants.endPoint4);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//
//         //print(response.body);
//         return newsModelFromJson(response.body);
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     throw Exception();
//   }
// }
// class PhotoRepo {
//   Future<List<PhotosModel>> getPhotos() async {
//     try {
//       var url = Uri.parse(UrlConstants.baseUrl3 + UrlConstants.endPoint5);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         //print(response.body);
//         return photosModelFromJson(response.body);
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     throw Exception();
//   }
// }

class ProductsRepo {
  var dio = Dio();
  Future<List<ProductsModel>> fetchArticle() async {
    Response response = await Dio().get('https://fakestoreapi.com/products');
    try {
      if (response.statusCode == 200) {
        // print(response.data);
        // return productsModelFromJson(response.data);

        return (response.data as List)
            .map((e) => ProductsModel.fromJson(e))
            .toList();
      }
    } catch (e) {
      print(e.toString());
    }
    return [];
  }
}
