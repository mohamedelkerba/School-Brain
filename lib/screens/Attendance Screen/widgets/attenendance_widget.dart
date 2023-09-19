import 'package:flutter/material.dart';

import '../../../constants.dart';
class AttendanceIcon extends StatelessWidget {
  const AttendanceIcon({super.key,  required this.title, required this.value, required this.color});
  final String title ;
  final String value ;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width /2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kDefaultPadding),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text( title,style: const TextStyle(
                  fontSize: 20,
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w800
              ),),


              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text( value,style: const TextStyle(
                    fontSize: 30,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w500
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
