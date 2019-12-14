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
