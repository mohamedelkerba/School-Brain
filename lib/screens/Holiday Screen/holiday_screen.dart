import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({super.key});
  static String routeName = 'HolidaySchool';

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
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
      backgroundColor:Colors.white ,

      body:
      Column(
        children: [
          Container(
              width: double.infinity,
              height: 100,
              decoration:const  BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kDefaultPadding * 2),
                    bottomRight: Radius.circular(kDefaultPadding * 2),

                  )),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Holiday'),
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
       const    SizedBox(
            height: 40,
          ) ,
          const Text('List of Holiday',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
          ),
          const  HolidayData(title:'Diwali' ,dayName:'Saturday' ,monthName:'17 Th November' ,),
          const   HolidayData(title:'Eid Fetr' ,dayName:'Sunday' ,monthName:'17 Th Augst' ,),
          const    HolidayData(title:'Eid Adha' ,dayName:'Monday' ,monthName:'17 Th December' ,),


          ],
      )

    );
  }
}

class HolidayData extends StatelessWidget {
  const HolidayData({super.key, required this.title, required this.monthName, required this.dayName});
  final String title ;
  final String monthName ;
  final String dayName ;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: kDefaultPadding,
              child: Divider(
                thickness: 1,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( title,
                      style: const TextStyle(
                          color: kTextBlackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    kHalfSizedBox,
                    Text( monthName,
                      style: const TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,                              children: [
                  Text(dayName,
                    style: const TextStyle(
                        color: kTextLightColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
                ),



              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
              child: Divider(
                thickness: 1,
              ),
            ),
          ]
      ),
    );
  }
}
