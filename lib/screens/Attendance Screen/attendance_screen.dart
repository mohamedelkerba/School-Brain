import 'package:brain_school_starter/screens/Attendance%20Screen/widgets/attenendance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});
  static String routeName = 'AttendanceScreen';

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
CalendarFormat _calendarFormat = CalendarFormat.month ;
  DateTime _focusedDay =DateTime.now() ;
  DateTime? _selectedDay ;

  @override
void initState() {
    super.initState();
    _selectedDay = _focusedDay ;
  }
@override
void dispose() {
    super.dispose();
}
void _onDaySelected(DateTime selectedDay , DateTime focusedDay){
    if (!isSameDay(_selectedDay, selectedDay)){
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        systemOverlayStyle:const  SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,

        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                  bottomRight: Radius.circular(kDefaultPadding * 2),

                )),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Attendance'),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 ),
            child: TableCalendar(

              weekendDays: const [DateTime.sunday, 6],
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekHeight: 20.0,
              rowHeight: 50.0,
              firstDay: DateTime.utc(2022,3,14),
              lastDay: DateTime.utc(2030,3,14),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day)=> isSameDay(_selectedDay,day),
              calendarFormat: _calendarFormat,
              onDaySelected: _onDaySelected,
              headerStyle: const HeaderStyle(
                titleTextStyle:
                TextStyle(color: Colors.black, fontSize: 15.0),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                formatButtonTextStyle:
                TextStyle(color: Colors.black, fontSize: 15.0),
                formatButtonDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ), ),
                leftChevronIcon: Icon(

                  Icons.chevron_left,
                  color: Colors.black,
                  size: 28,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              daysOfWeekStyle:   const DaysOfWeekStyle(
                weekdayStyle:  TextStyle(color:kPrimaryColor, fontSize: 15.0),
                weekendStyle:  TextStyle(color:kPrimaryColor, fontSize: 15.0),
              ),
              calendarStyle: const CalendarStyle(
                outsideTextStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
                weekendTextStyle:  TextStyle(color: Colors.black, fontSize: 15.0),
                defaultTextStyle:  TextStyle(color: Colors.black, fontSize: 15.0),
                todayTextStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                rangeStartTextStyle:  TextStyle(color: Colors.black, fontSize: 15.0),
                outsideDaysVisible: false,
              ),
              onFormatChanged: (format){
                if(_calendarFormat != format){
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay){
                _focusedDay =focusedDay;
              },
            ),
          ),
        const   SizedBox(
            height: 70,
          ) ,
         const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AttendanceIcon(
                color: Color(0xff3ecd98),
                title: 'Total Present',
                value: '9',
              ),
               SizedBox(width: kDefaultPadding,),
              AttendanceIcon(
                color: Color(0xfffe696e),
                title: 'Total Absent',
                value: '4',
              ),
            ],
          ),
        ],
      )
    );
  }
}
