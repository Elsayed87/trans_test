import 'package:flutter/material.dart';

import '../../diofeature/data/post_dio.dart';
import '../../diofeature/data/repository_dio.dart';
import '../data/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //UserRepoDio userRepoDio=UserRepoDio();
  // RepoTest repoTest = RepoTest();
  ChallengeAhmed challengeAhmed = ChallengeAhmed();
  ChallengeAhmedaa challengeAhmedaa= ChallengeAhmedaa();
  late Meta meta;

  List<Datum> list=[];

  Future<void> getUserPost() async {
    meta = await challengeAhmedaa.fetchUser();
    setState(() {

    });
    // print(list.length);

   // Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState() {
    getUserPost();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: meta.pagination.pages ==0
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: meta.pagination.pages,
              itemBuilder: (context, int index) => Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: ListTile(
                    // title: Image.network("${posts?.email}", fit: BoxFit.contain),
                    //${list[index]['username']}
                    subtitle: Text(
                      //0.email
                      '${meta.pagination.links.next} ',
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Text("}",
                        style: TextStyle(fontSize: 22)),
                    //0.address.street//0.company.name
                    title: Text(" ",
                        style: TextStyle(fontSize: 22))),
              ),
            ),
    );
  }
}
