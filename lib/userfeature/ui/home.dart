import 'package:flutter/material.dart';
import 'package:trans_test/userfeature/data/user_repository.dart';
import 'package:trans_test/userfeature/data/usermodel.dart';

import '../data/news.dart';
import '../data/photo.dart';
import '../data/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PhotoRepo _postRepo = PhotoRepo();

  List<PhotosModel> posts = [];
  //late var model;

  Future<void> getUserPost() async {
    posts = await _postRepo.getPhotos();

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
          itemBuilder: (context, index) => ListTile(
            //"${}"
            subtitle: Text('${posts[index].title}'),
            title: Image.network("${posts[index].thumbnailUrl}"),
          ),
        ));
  }
}
