import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.all(12.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 2.0),
  ),
);

final now = new DateTime.now();

final String currDate = (new DateFormat("dd-MM-yyyy").format(now)).toString();

/*String animatedSplash = '../screen/splashScreen',
        profilePage = '../screen/profile',*/
