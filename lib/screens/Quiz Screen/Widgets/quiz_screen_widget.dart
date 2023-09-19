import 'package:flutter/material.dart';

import '../../../constants.dart';
class QuizWidget extends StatelessWidget {
  const QuizWidget ({super.key, required this.statusValue});
  final String statusValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(statusValue,
            textAlign:TextAlign.start ,

            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: kTextBlackColor,


            ),),

      ],
    );
  }
}
