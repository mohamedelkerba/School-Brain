import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../constants.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});
  static String routeName = 'LeaveScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:const  Text('Leave Application'),
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
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Dr-Arabi Keshk',
                  labelText: 'Class Teacher',
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
              sizedBox,
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Fever',

                  labelText: 'Application Title',
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
              sizedBox,
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const InputDecoration(
                  hintText: 'Enter Title',

                  labelText: 'Title',
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
              sizedBox,
              TextFormField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,

                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: kTextBlackColor, fontSize: 17),
                decoration: const  InputDecoration(
                  hintText: 'Dear Sir , I will not be able to attend the classes',

                  labelText: 'Description',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  isDense: true,
                ),

              ),
              const SizedBox(
                height: 50,
              ),
              DefaultButton(
                title: 'SEND  REQUEST',
                iconData: Icons.arrow_forward_outlined,
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
