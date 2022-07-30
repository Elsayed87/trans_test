import 'package:flutter/material.dart';
import 'package:trans_test/userfeature/data/user_repository.dart';
import 'package:trans_test/userfeature/data/usermodel.dart';

import '../data/news.dart';
import '../data/photo.dart';
import '../data/post.dart';
import '../data/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductsRepo _productsRepo = ProductsRepo();

  List<ProductsModel> posts = [];
  //late var model;

  Future<void> getUserPost() async {
    posts = await _productsRepo.fetchArticle();
    //print(posts);

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState() {
    getUserPost();
    //model=  _postRepo.getPost() as PostModel ;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) => Container(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height ,
            child: ListTile(
              title:
                  Image.network("${posts[index].image}", fit: BoxFit.contain),
              subtitle: Text(
                '${posts[index].description}',
                style: TextStyle(fontSize: 22),
              ),
              leading:
                  Text('${posts[index].price}', style: TextStyle(fontSize: 22)),
              trailing:
                  Text('${posts[index].id}', style: TextStyle(fontSize: 22)),
            ),
          ),
        ));
  }
}
