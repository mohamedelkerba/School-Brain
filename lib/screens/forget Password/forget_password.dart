import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../constants.dart';
import '../Home_Screen/home_screen.dart';


class ForgetPassword extends StatefulWidget {
  static String routeName = 'ForgetPassword';

  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(

          body: Container(
            decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'),
                fit: BoxFit.fill,
              ),

            ),
            child: ListView(
              physics:  const AlwaysScrollableScrollPhysics(),
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background.jpg'),
                      fit: BoxFit.fill,
                    ),


                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/splash.png',
                        height: 230,
                        width: 170,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Now!',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: kTextWhiteColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w100)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('You Can',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                letterSpacing: 1.0,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 6,
                      ),
                      Text(
                        'Reset Password',
                        style: Theme.of(context).textTheme.subtitle1,

                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding * 3),
                      topRight: Radius.circular(kDefaultPadding * 3),
                    ),
                    color: kOtherColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      children: [
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                sizedBox,
                                buildEmailField(),
                                sizedBox,
                                DefaultButton(
                                  title: 'Send To Email ',
                                  iconData: Icons.arrow_forward_outlined,
                                  onPress: () {
                                    showDialog(context: context,
                                      builder: (_)=>  AlertDialog(
                                        title:const   Text('Check Your Email !',style: TextStyle(color: kTextBlackColor),),
                                        content:const  Text('',style: TextStyle(color: kTextBlackColor),) ,
                                        actions: [
                                          TextButton( child: const Text("Ok",style: TextStyle(color: kTextBlackColor),),
                                              onPressed: () {
                                                Navigator.pushNamed(context,LoginScreen.routeName);

                                              }),
                                        ],
                                        elevation:24 ,
                                      ) ,
                                    );
                                  },
                                ),
                                sizedBox,
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
          fontWeight: FontWeight.w300, color: kTextBlackColor, fontSize: 17),
      decoration: const InputDecoration(
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp =  RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text ';
        } else if (!regExp.hasMatch(value)) {
          return 'please enter a valid email address';
        }
        return null;
      },
    );
  }

}
