import 'package:flutter/material.dart';

import '../../constants.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});
  static String routeName = 'EventsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Events',
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration:const  BoxDecoration(

            color: kPrimaryColor,

        ),
        child:const  Center(
          child:
          Text('No Events Yet !'),
        ),
      ),

    );
  }
}
