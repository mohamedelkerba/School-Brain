import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatelessWidget {

  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushNamedAndRemoveUntil(context,LoginScreen.routeName,(route) => false);

    }) ;
    return  Scaffold(

      body: Container(

        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),

        ),

        child: Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('School',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color:kTextWhiteColor,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,


                  )),
                  Text('Brain',style:GoogleFonts.pattaya(
                     fontSize: 50,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700
                  ) )
                ],
              ),
              Image.asset('assets/images/splash.png',
              height:150 ,
              width: 150,
              ),
              ],
          ),
        ),
      ),
    );
  }
}
