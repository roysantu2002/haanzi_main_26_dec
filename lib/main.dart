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
import 'package:haanzi_main/screens/loading.dart';
import 'package:haanzi_main/screens/initial.dart';

void main() => runApp(MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.purple[800],
            accentColor: Colors.amber,
            accentColorBrightness: Brightness.dark),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => MyApp(),
        }));

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.purple[800],
            accentColor: Colors.amber,
            accentColorBrightness: Brightness.dark),
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => MyApp(),
        });
  }
}*/
