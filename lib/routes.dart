import 'package:brain_school_starter/screens/Ask%20Screen/ask_screen.dart';
import 'package:brain_school_starter/screens/Attendance%20Screen/attendance_screen.dart';
import 'package:brain_school_starter/screens/Change%20Password%20Screen/change_password.dart';
import 'package:brain_school_starter/screens/Gallery%20Screen/gallery_screen.dart';
import 'package:brain_school_starter/screens/Holiday%20Screen/holiday_screen.dart';
import 'package:brain_school_starter/screens/Home_Screen/home_screen.dart';
import 'package:brain_school_starter/screens/Leave%20Screen/leave_screen.dart';
import 'package:brain_school_starter/screens/Quiz%20Screen/quiz_screen.dart';
import 'package:brain_school_starter/screens/TimeTable%20Screen/time_table_screen.dart';
import 'package:brain_school_starter/screens/assignment%20screen/assignment_screen.dart';
import 'package:brain_school_starter/screens/dataSheet%20Screen/datesheet_screen.dart';
import 'package:brain_school_starter/screens/events%20Screen/events_screen.dart';
import 'package:brain_school_starter/screens/fee_screen/fee_screen.dart';
import 'package:brain_school_starter/screens/forget%20Password/forget_password.dart';
import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:brain_school_starter/screens/myprofile_Screen/myprofile_screen.dart';
import 'package:brain_school_starter/screens/result_screen/result_screen.dart';
import 'package:brain_school_starter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

Map <String,WidgetBuilder>  routes ={
  SplashScreen.routeName :(context) => SplashScreen(),
  LoginScreen.routeName :(context) => const LoginScreen(),
  HomeScreen.routeName :(context) => const HomeScreen(),
  MyProfileScreen.routeName :(context) => const MyProfileScreen(),
  FeeScreen.routeName :(context) => const FeeScreen(),
  AssignmentScreen.routeName :(context) => const AssignmentScreen(),
  DateSheetScreen.routeName :(context) => const DateSheetScreen(),
  ResultScreen.routeName :(context) => const ResultScreen(),
  EventsScreen.routeName :(context) => const EventsScreen(),
  AttendanceScreen.routeName :(context) => const AttendanceScreen(),
  QuizScreen.routeName :(context) => const  QuizScreen(),
  HolidayScreen.routeName :(context) => const  HolidayScreen(),
  TimeTableScreen.routeName :(context) => const  TimeTableScreen(),
  LeaveScreen.routeName :(context) => const  LeaveScreen(),
  GalleryScreen.routeName :(context) => const  GalleryScreen(),
  AskScreen.routeName :(context) => const  AskScreen(),
  ChangePasswordScreen.routeName :(context) => const  ChangePasswordScreen(),
  ForgetPassword.routeName :(context) => const  ForgetPassword(),









};