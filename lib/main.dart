 import 'package:flutter/material.dart';
import 'package:trans_test/userfeature/ui/home.dart';
// import 'package:easy_localization/easy_localization.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//
//   runApp(
//     EasyLocalization(
//         supportedLocales: [Locale('en'), Locale('ar')],
//         path: 'assets/translations',
//         fallbackLocale: Locale('en'),
//         child: MyApp()),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         localizationsDelegates: context.localizationDelegates,
//         supportedLocales: context.supportedLocales,
//         locale: context.locale,
//         home: MyHomePage());
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(''),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             child: Column(
//               children: [
//                 Text(
//                   "description".tr(),
//                   style: TextStyle(fontSize: 25.0),
//                 ),
//                 Text('start'.tr(), style: TextStyle(fontSize: 20.0)),
//                 Text('last'.tr(), style: TextStyle(fontSize: 20.0)),
//                 Row(
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           context.setLocale(Locale('ar'));
//                         },
//                         child: Text('العربيه')),
//                     TextButton(
//                         onPressed: () {
//                           context.setLocale(Locale('en'));
//                         },
//                         child: Text('English')),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )
//         //
//         );
//   }
// }
void main(){
  runApp(MyUserApp());

}
class MyUserApp extends StatelessWidget {
  const MyUserApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
