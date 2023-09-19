import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/routes.dart';
import 'package:brain_school_starter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Brain',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
          ),
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                      bodyText1:
                          const TextStyle(
                              color: kTextWhiteColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                      bodyText2: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 28,
                      ),
                      subtitle1:
                          const TextStyle(
                              color: kTextWhiteColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                      subtitle2: const TextStyle(
                          color: kTextWhiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w300)),
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle:
                TextStyle(color: kTextLightColor, fontSize: 15, height: 0.5),
            hintStyle:
                TextStyle(color: kTextBlackColor, fontSize: 16, height: 0.5),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor, width: 0.7)),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor)),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor, width: 0.7)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),
          )),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
