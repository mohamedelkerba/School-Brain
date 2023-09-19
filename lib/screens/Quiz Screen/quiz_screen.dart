import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/Quiz%20Screen/Widgets/quiz_screen_widget.dart';
import 'package:brain_school_starter/screens/Quiz%20Screen/data/quiz_data.dart';
import 'package:flutter/material.dart';
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  static String routeName = 'QuizScreen';

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title:const  Text(
          'Take Quiz'
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 15,right: 5),
            child: Text('Skip',
            style: TextStyle(
              fontSize: 18
            ),
            ),
          )
        ],
      ),
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Stack(
                children: [
                  Container(
                    width: 370,
                    height: 28,
                    decoration: BoxDecoration(


                      color:const  Color(0xff15296E),
                      borderRadius:  BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                      height: 28,
                      width: 200,
                      decoration: BoxDecoration(

                        color:const  Color(0xff46d9bf),
                        borderRadius:  BorderRadius.circular(15  ),
                      )
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('18 Sec',style: TextStyle(
                           fontSize: 17,
                        ),),
                        Icon(Icons.access_time_rounded,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const      Text('Qusetion 5/10'),
                    Container(
                      width: 60,
                     height: 30,
                    decoration: BoxDecoration(
                     color:Colors.white30,
                   borderRadius: BorderRadius.circular(kDefaultPadding),

                    ),
                      child:const  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.groups,color: kOtherColor),
                           Text('256',style:  TextStyle(
                          fontSize: 12,
                              color: kTextWhiteColor,
                              fontWeight: FontWeight.w200
                               ),),
                        ],
                      ),

    )
                ],
              ),
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child:
              Container(
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height/2 ,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.circular(kDefaultPadding),

                ),
                child:const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Text('In 2017 ,which player became the'
                            'leading run  Scorer of all tie in'
                            ' women\'s ODI cricket ?',
                        style: TextStyle(color: Colors.black,
                        fontSize:20,
                          fontWeight: FontWeight.bold
                        ),

                        ),
                      ),
                   Column(
                     children: [
                     ChooseField(title: 'A. Stefanie Taylor'),
                     ChooseField(title: 'B. Mithali Raj'),
                     ChooseField(title: 'C. Suzia Betes'),
                     ChooseField(title: 'D. Harmanpreet Kaur'),
                   ],),



                    ],
                  ),


              ),
            ),


          ],
        ),
      ),

    );
  }
}

class ChooseField extends StatelessWidget {
  const ChooseField({super.key, required this.title});
 static Color? color ;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return                     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.only(bottom: kDefaultPadding),
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(kDefaultPadding),
                boxShadow: const [BoxShadow(
                    color: kTextLightColor,
                    blurRadius: 2.0
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                  IconButton(onPressed: () {
                    color == Colors.green;
                  },
                      icon: Icon(Icons.circle_outlined,color: color, ))
                ],
              ),
            )
          ]
      ),
    );

  }
}
