import 'package:flutter/material.dart';

import 'package:trans_test/userfeature/data/usermodel.dart';

import '../../diofeature/data/post_dio.dart';
import '../../diofeature/data/repository_dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserRepoDio _userRepoDio = UserRepoDio();

 //List<PostModelDio> list=[];
  List<dynamic> list=[];


  Future<void> getUserPost() async {
    list = (await _userRepoDio.fetchUser())!;
    print(list);

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
          itemCount:list.length,
          itemBuilder: (context, index) => Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListTile(
             // title: Image.network("${posts?.email}", fit: BoxFit.contain),
              subtitle: Text(
                '"',
                style: TextStyle(fontSize: 22),
              ),
              leading: Text("", style: TextStyle(fontSize: 22)),
              trailing: Text('"}', style: TextStyle(fontSize: 22)),
            ),
          ),
        ));
  }
}
