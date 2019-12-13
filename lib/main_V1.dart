import 'package:flutter/material.dart';
import 'package:haanzi_main/screens/home/wrapper.dart';
import 'package:flutter/services.dart';

Future main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

/*void main() => runApp(MyApp());*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'LilitaOne'),
      home: Wrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}
