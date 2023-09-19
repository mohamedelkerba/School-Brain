import 'package:flutter/material.dart';
import '../../../constants.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentname});
final String studentname;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'Hi',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
        Text(
          studentname,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
    
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({super.key, required this.studentclass});
  final String studentclass;

  @override
  Widget build(BuildContext context) {
    return    Text(
      studentclass,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 14
      ),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.studentyear});
  final String studentyear;
  @override
  Widget build(BuildContext context) {
    return    Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color:Color (0xFF00a400),
        borderRadius: BorderRadius.circular(kDefaultPadding),

      ),
      child: Center(
        child: Text(studentyear,style: const TextStyle(
            fontSize: 12,
            color: kTextWhiteColor,
            fontWeight: FontWeight.w200
        ),),
      ),

    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture({super.key, required this.picAddress, required this.onPress});
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 55,
        maxRadius: 55,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAddress),
      ),
    );

  }
}

class StudentData extends StatelessWidget {
  const StudentData({super.key, required this.onPress, required this.title, required this.value});
  final VoidCallback onPress;
  final String title ;
  final String value ;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child:
      Container(
        width: MediaQuery.of(context).size.width /2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
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


              Text( value,style: const TextStyle(
                  fontSize: 30,
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w500
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
