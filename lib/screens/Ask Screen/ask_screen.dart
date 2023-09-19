import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../constants.dart';
class AskScreen extends StatelessWidget {
  const AskScreen({super.key});
  static String routeName = 'AskScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
             title:const  Text('Ask Doubts'),
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
           labelText: 'To Lecturer',
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
               hintText: 'Math',

               labelText: 'Write Subject',
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
             decoration: const InputDecoration(
               hintText: 'Enter Doubt Description',

               labelText: 'Description',
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
             title: 'SEND ',
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
