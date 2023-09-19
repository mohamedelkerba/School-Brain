
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../constants.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static String routeName = 'ChangePasswordScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:const  Text('Change Password'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding),
            topRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              sizedBox,
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Enter Old Password',
                  labelText: 'Old Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  isDense: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Correct Name ';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Enter New Password',

                  labelText: 'New Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  isDense: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Correct Name ';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: ' Enter New Password Again',

                  labelText: 'Rtype New Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  isDense: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Correct Name ';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              DefaultButton(
                title: 'CHANGE PASSWORD ',
                iconData: Icons.lock_outline,
                onPress: () {},
              ),

            ],
          ),
        )
        ,
      ),
    );
  }
}