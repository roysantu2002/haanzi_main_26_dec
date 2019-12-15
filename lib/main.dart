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
import 'package:haanzi_main/theme/haanziTheme.dart';

void main() =>
    runApp(MaterialApp(theme: basicTheme(), initialRoute: '/', routes: {
      '/': (context) => Loading(),
      '/home': (context) => MyApp(),
    }));
