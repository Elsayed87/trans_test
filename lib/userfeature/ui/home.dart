import 'package:flutter/material.dart';

import '../../diofeature/data/post_dio.dart';
import '../../diofeature/data/repository_dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserRepoDio _userRepoDio = UserRepoDio();

 List <dynamic> list=[] ;

  Future<void> getUserPost() async {
  list= (await _userRepoDio.fetchUser()) ;
  print(list.length);

    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  @override
  void initState() {
    getUserPost();
setState(() {

});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, int index) => Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: ListTile(
              // title: Image.network("${posts?.email}", fit: BoxFit.contain),
              subtitle: Text(
                '${list[index]['username']} ',
                style: TextStyle(fontSize: 22),
              ),
              leading: Text("${list[index]['id']}", style: TextStyle(fontSize: 22)),
              //0.address.street//0.company.name
              title: Text("${list[index]['company']['name']} ", style: TextStyle(fontSize: 22))),
        ),
      ),
    );
  }
}
