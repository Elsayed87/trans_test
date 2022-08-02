import 'package:flutter/material.dart';

import '../../newdiofolder/diomodels/user_model.dart';
import '../../newdiofolder/diorepository/user_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //UserRepoDio userRepoDio=UserRepoDio();
  // RepoTest repoTest = RepoTest();
  // ChallengeAhmed challengeAhmed = ChallengeAhmed();
  // ChallengeAhmedaa challengeAhmedaa= ChallengeAhmedaa();
  //late Meta meta;
  UserApiRepository userApiRepository = UserApiRepository();

  // List<Datum> list=[];
    late Data data;

  Future<void> getUserPost() async {
    data = await userApiRepository.fetchUserData();
    print(data.lastName);
   // setState(() {});
    // print(list.length);

     Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState() {
    getUserPost();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body:data.id==0 ? const CircularProgressIndicator(): ListView.builder(
        itemCount: 1,
        itemBuilder: (context, int index) => Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: ListTile(
              // title: Image.network("${posts?.email}", fit: BoxFit.contain),
              //${list[index]['username']}
              subtitle: Text(
                //0.email
                '${data.email} ',
                style: TextStyle(fontSize: 22),
              ),
              leading: Text(" ${data.id}", style: TextStyle(fontSize: 22)),
              //0.address.street//0.company.name
              title: Image.network(data.avatar,height: 200,width: 200,)),
        ),
      ),
    );
  }
}
