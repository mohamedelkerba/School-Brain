import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/Ask%20Screen/ask_screen.dart';
import 'package:brain_school_starter/screens/Change%20Password%20Screen/change_password.dart';
import 'package:brain_school_starter/screens/Gallery%20Screen/gallery_screen.dart';
import 'package:brain_school_starter/screens/Holiday%20Screen/holiday_screen.dart';
import 'package:brain_school_starter/screens/Home_Screen/widgets/student_data.dart';
import 'package:brain_school_starter/screens/Leave%20Screen/leave_screen.dart';
import 'package:brain_school_starter/screens/Quiz%20Screen/quiz_screen.dart';
import 'package:brain_school_starter/screens/TimeTable%20Screen/time_table_screen.dart';
import 'package:brain_school_starter/screens/dataSheet%20Screen/datesheet_screen.dart';
import 'package:brain_school_starter/screens/fee_screen/fee_screen.dart';
import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:brain_school_starter/screens/myprofile_Screen/myprofile_screen.dart';
import 'package:brain_school_starter/screens/result_screen/result_screen.dart';
import 'package:brain_school_starter/screens/events Screen/events_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Attendance Screen/attendance_screen.dart';
import '../assignment screen/assignment_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
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
              height: MediaQuery.of(context).size.height / 2.5,
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StudentName(studentname: ' Aisha',),
                          kHalfSizedBox,
                          StudentClass(studentclass: 'Class x-|| A | Roll no : 12',),
                          kHalfSizedBox,
                          StudentYear(studentyear: '2020-2021',)
                        ],
                      ),
                      kHalfSizedBox,
                      StudentPicture(picAddress: 'assets/images/student_profile.jpeg',
                      onPress: () {
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                      )
                    ],
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StudentData(onPress: () {
                        Navigator.pushNamed(context, AttendanceScreen.routeName);
                        },
                        title: 'Attendance',
                        value: '90.02%',
                      ),
                      const SizedBox(width: kDefaultPadding,),
                      StudentData(onPress: () {
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                        title: 'Fees Data',
                        value: '600\$',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Container(


                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding * 3),
                        topRight: Radius.circular(kDefaultPadding * 3),

                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           HomeCard(
                               onPress: () {
                                 Navigator.pushNamed(context,QuizScreen.routeName);
                               },
                               icon: 'assets/icons/quiz.svg',
                               title: 'Take Quiz'
                           ),
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,AssignmentScreen.routeName);
                                },
                                icon: 'assets/icons/assignment.svg',
                                title: 'Assignments '
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,HolidayScreen.routeName);

                                },
                                icon: 'assets/icons/holiday.svg',
                                title: 'Holidays'
                            ),
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,TimeTableScreen.routeName);
                                  },
                                icon: 'assets/icons/timetable.svg',
                                title: 'Time Table '
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,ResultScreen.routeName);
                                },
                                icon: 'assets/icons/result.svg',
                                title: 'Results'
                            ),
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,DateSheetScreen.routeName);
                                },
                                icon: 'assets/icons/datesheet.svg',
                                title: 'DateSheet '
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,AskScreen.routeName);

                                },
                                icon: 'assets/icons/ask.svg',
                                title: 'Ask'
                            ),
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,GalleryScreen.routeName);

                                },
                                icon: 'assets/icons/gallery.svg',
                                title: 'Gallery '
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,LeaveScreen.routeName);

                                },
                                icon: 'assets/icons/resume.svg',
                                title: 'Leave\nApllication'
                            ),
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,ChangePasswordScreen.routeName);

                                },
                                icon: 'assets/icons/lock.svg',
                                title: 'Change\nPassword '
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCard(
                                onPress: () {
                                  Navigator.pushNamed(context,EventsScreen.routeName);

                                },
                                icon: 'assets/icons/event.svg',
                                title: 'Events'
                            ),
                            HomeCard(
                                onPress: () {
                                  showDialog(context: context,
                                  builder: (_)=>  AlertDialog(
                                    title:const   Text('You Will LogOut',style: TextStyle(color: kTextBlackColor),),
                                    content:const  Text('Accept ?',style: TextStyle(color: kTextBlackColor),) ,
                                    actions: [
                                      TextButton( child: const Text("No",style: TextStyle(color: kTextBlackColor),),
                                          onPressed: () {
                                            Navigator.pop(context,HomeScreen.routeName);

                                          }),
                                      TextButton( child:const  Text("Yes",style: TextStyle(color: kTextBlackColor),),
                                          onPressed: () {
                                            Navigator.pushNamed(context,LoginScreen.routeName);

                                          }),
                                    ],
                                    elevation:24 ,
                                  ) ,
                                );
                                },
                                icon: 'assets/icons/logout.svg',
                                title: 'LogOut '
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.onPress, required this.icon, required this.title});


  final VoidCallback onPress ;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding/2),
        width: MediaQuery.of(context).size.width /2.5,
        height:  MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(

            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(kDefaultPadding/2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(icon,
              height: 40,
              width: 40,
              color: kOtherColor
              ,),
            Text(title,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: kDefaultPadding /3 ,)
          ],
        ),
      ),
    );
  }
}
