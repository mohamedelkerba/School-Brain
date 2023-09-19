import 'package:brain_school_starter/screens/Home_Screen/home_screen.dart';
import 'package:brain_school_starter/screens/forget%20Password/forget_password.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../constants.dart';

late bool _passwordVisiable;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisiable = true;
  }

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
              physics: ClampingScrollPhysics(),

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
                        Text('Hi',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: kTextWhiteColor,
                                fontSize: 40,
                                fontWeight: FontWeight.w100)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Student',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  letterSpacing: 1.0,
                                )),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    Text(
                      'Sign in to continue ',
                      style: Theme.of(context).textTheme.subtitle2,
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
                              buildPasswordField(),
                              sizedBox,
                              DefaultButton(
                                title: 'SIGN IN ',
                                iconData: Icons.arrow_forward_outlined,
                                onPress: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        HomeScreen.routeName, (route) => false);
                                  }
                                },
                              ),
                              sizedBox,
                               Align(
                                alignment: Alignment.bottomRight,
                                child:  TextButton
                                  (onPressed: () {
                                    Navigator.pushNamed(context,ForgetPassword.routeName);
                                },

                                    child: const  Text(
                                      'Forget Password ?',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 15.0),
                                    ),
                                )
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
        ],
      ),
            ),
          ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
          fontWeight: FontWeight.w300, color: kTextBlackColor, fontSize: 17),
      decoration: const InputDecoration(
        labelText: 'Mobile Number/Email',
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

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisiable,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      style: const TextStyle(
          fontWeight: FontWeight.w300, color: kTextBlackColor, fontSize: 17),
      decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisiable = !_passwordVisiable;
              });
            },
            icon: Icon(_passwordVisiable
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined),
            iconSize: kDefaultPadding,
          )),
      validator: (value) {
        if (value!.length < 8) {
          return 'Must be more than 8 ';
        }
        return null;
      },
    );
  }
}
