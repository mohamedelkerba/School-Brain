import 'package:flutter/material.dart';
import '../../constants.dart';
import 'Widgets/timetable_widgets.dart';
import 'data/timetable_data.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});
  static String routeName = 'TimeTableScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white,
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
             SliverAppBar(
              title:const  Text('Time Table'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Creates border
                    color: kSecondaryColor),
                isScrollable: true,
                tabs: const [
                  Tab(child: Text('Sun')),
                  Tab(child: Text('Mon')),
                  Tab(child: Text('Tue')),
                  Tab(child: Text('Wed')),
                  Tab(child: Text('Thu')),
                  Tab(child: Text('Fri')),
                  Tab(child: Text('Sat')),
                ],
              ),
            ),
          ];
        },
        body:  const TabBarView(
          children: <Widget>[
            TimeTableWidget(),
            TimeTableWidget(),
            TimeTableWidget(),
            TimeTableWidget(),
            TimeTableWidget(),
            TimeTableWidget(),
            TimeTableWidget(),
          ],
        ),
      )),
    );
  }
}

class TimeTableWidget extends StatefulWidget {
  const TimeTableWidget({super.key});

  @override
  State<TimeTableWidget> createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: time.length,
        itemBuilder: (context, int index) {
          return
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TimeTable(
                          lecturer: time[index].lecturer ,
                          period: time[index].period ,
                          subjectName:  time[index].subjectName,
                          time:  time[index].time,

                        ),
                      ],
                    ),

                ],
              ),
            );
        });
  }
}


