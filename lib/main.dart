/*
import 'package:flutter/material.dart';
import 'package:haanzi_main/services/auth.dart';
import 'package:haanzi_main/models/user.dart';
import 'package:provider/provider.dart';
import 'package:haanzi_main/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:haanzi_main/screens/home.dart';
import 'package:haanzi_main/screens/loading.dart';
import 'package:haanzi_main/screens/authScreen.dart';
import 'package:haanzi_main/screens/initial.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Color(0xff005582),
          accentColor: Color(0xff00C2C7),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => MyApp(),
        }));
