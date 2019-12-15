import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
          fontFamily: 'RobotoSlab',
          fontSize: 22.0,
          color: Colors.black,
        ),
        title: base.title.copyWith(
            fontFamily: 'RobotoSlab', fontSize: 15.0, color: Colors.green),
        display1: base.headline.copyWith(
          fontFamily: 'RobotoSlab',
          fontSize: 24.0,
          color: Colors.white,
        ),
        display2: base.headline.copyWith(
          fontFamily: 'RobotoSlab',
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: base.caption.copyWith(
          color: Color(0xFFCCC5AF),
        ),
        body1: base.body1.copyWith(color: Color(0xFF807A6B)));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      //textTheme: Typography().white,
      primaryColor: Color(0xff00446F),
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF97EBDB),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffF8D774),
        unselectedLabelColor: Colors.grey,
      ));
}

/*

<resources>
<color name="mcgpalette0_50">#e8f0f8</color>
<color name="mcgpalette0_100">#c5daee</color>
<color name="mcgpalette0_200">#9ec2e3</color>
<color name="mcgpalette0_300">#77aad7</color>
<color name="mcgpalette0_400">#5a97cf</color>
<color name="mcgpalette0_500">#3d85c6</color>
<color name="mcgpalette0_600">#377dc0</color>
<color name="mcgpalette0_700">#2f72b9</color>
<color name="mcgpalette0_800">#2768b1</color>
<color name="mcgpalette0_900">#1a55a4</color>
<color name="mcgpalette0_A100">#dae9ff</color>
<color name="mcgpalette0_A200">#a7caff</color>
<color name="mcgpalette0_A400">#74abff</color>
<color name="mcgpalette0_A700">#5b9cff</color>
<color name="mcgpalette1_50">#f3f8fc</color>
<color name="mcgpalette1_100">#e2eef8</color>
<color name="mcgpalette1_200">#cfe2f4</color>
<color name="mcgpalette1_300">#bcd6ef</color>
<color name="mcgpalette1_400">#adceeb</color>
<color name="mcgpalette1_500">#9fc5e8</color>
<color name="mcgpalette1_600">#97bfe5</color>
<color name="mcgpalette1_700">#8db8e2</color>
<color name="mcgpalette1_800">#83b0de</color>
<color name="mcgpalette1_900">#72a3d8</color>
<color name="mcgpalette1_A100">#ffffff</color>
<color name="mcgpalette1_A200">#ffffff</color>
<color name="mcgpalette1_A400">#eef6ff</color>
<color name="mcgpalette1_A700">#d4e9ff</color>
<color name="mcgpalette2_50">#e0ebf0</color>
<color name="mcgpalette2_100">#b3ccda</color>
<color name="mcgpalette2_200">#80aac1</color>
<color name="mcgpalette2_300">#4d88a8</color>
<color name="mcgpalette2_400">#266f95</color>
<color name="mcgpalette2_500">#005582</color>
<color name="mcgpalette2_600">#004e7a</color>
<color name="mcgpalette2_700">#00446f</color>
<color name="mcgpalette2_800">#003b65</color>
<color name="mcgpalette2_900">#002a52</color>
<color name="mcgpalette2_A100">#85b9ff</color>
<color name="mcgpalette2_A200">#529bff</color>
<color name="mcgpalette2_A400">#1f7eff</color>
<color name="mcgpalette2_A700">#056fff</color>
<color name="mcgpalette3_50">#e5f4f3</color>
<color name="mcgpalette3_100">#bee4e1</color>
<color name="mcgpalette3_200">#93d3cd</color>
<color name="mcgpalette3_300">#67c1b8</color>
<color name="mcgpalette3_400">#47b3a9</color>
<color name="mcgpalette3_500">#26a69a</color>
<color name="mcgpalette3_600">#229e92</color>
<color name="mcgpalette3_700">#1c9588</color>
<color name="mcgpalette3_800">#178b7e</color>
<color name="mcgpalette3_900">#0d7b6c</color>
<color name="mcgpalette3_A100">#adfff3</color>
<color name="mcgpalette3_A200">#7affec</color>
<color name="mcgpalette3_A400">#47ffe4</color>
<color name="mcgpalette3_A700">#2dffe0</color>
<resources>*/
