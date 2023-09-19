import 'package:flutter/material.dart';
import '../../../constants.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key, required this.subjectName, required this.time, required this.lecturer, required this.period});
  final String subjectName;
  final String time;
  final String lecturer;
  final String period;


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const  BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kDefaultPadding),
          bottom: Radius.circular(kDefaultPadding),
        ),
        color: kOtherColor,
        boxShadow: [
          BoxShadow(
            color: kTextLightColor,
            blurRadius: 2.0,
          ),
        ],
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( subjectName,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          kHalfSizedBox,
          Text( time ,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
            child: Divider(
              thickness: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( lecturer,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Text( period,
                style:const  TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          )
        ],
      ),
    );
  }
}
