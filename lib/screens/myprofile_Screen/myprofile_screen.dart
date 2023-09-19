import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';
import '../Home_Screen/widgets/student_data.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOtherColor,
      appBar: AppBar(

        title: const Text('MyProfile',),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding/2),
              child: Row(
                children: [
                  const Icon(Icons.report_gmailerrorred_outlined),
                  kHalfSizedBox,
                  Text('Report',style: Theme.of(context).textTheme.subtitle2,)
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Container(
            width: double.infinity,
            height: 180,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background.jpg'),
                      fit: BoxFit.fitWidth,
                    ),

                    gradient:  LinearGradient(
                      colors: [kSecondaryColor, kPrimaryColor],
                      begin:  FractionalOffset(0, 0),
                      end:  FractionalOffset(2.5, 1),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                    color: kPrimaryColor,
            borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultPadding * 3),
            bottomRight: Radius.circular(kDefaultPadding * 3),

            )),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StudentPicture(picAddress: 'assets/images/student_profile.jpeg',
                    onPress: () {

                    },
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Aisha Mirza', style: Theme.of(context).textTheme.subtitle1,),
                      Text('Class x-II A | Roll no: 12 ', style: Theme.of(context).textTheme.subtitle2,),

                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            const Row(

              children: [
                ProfileDetailRow(title:'Registration Number' ,value: '2020-ASDF-2021'),
                ProfileDetailRow(title:'Academic Year' ,value: '2020-2021')

              ],
            ),
            const Row(
              children: [
                ProfileDetailRow(title:'Admission Class' ,value: 'x-II'),
                ProfileDetailRow(title:'Admission Number' ,value: '000129')

              ],
            ),
            const Row(
              children: [
                ProfileDetailRow(title:'Date Of Admission' ,value: '1,Aug,2020'),
                ProfileDetailRow(title:'Date Of Birth' ,value: '3 May 1998'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ProfileDetailColumn( value: 'aishamiraz@gmail.com', title: 'Email'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ProfileDetailColumn(value: 'John Mirza', title: 'Father Name'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ProfileDetailColumn(value: 'Angleica Mirza', title: 'Mother Name'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ProfileDetailColumn(value: '+923066666666', title: 'PhoneNumber'),
              ],
            ),




          ],

      ),


    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right:kDefaultPadding/4 ,
        top: kDefaultPadding/2,
        left: kDefaultPadding/4,),
      width: MediaQuery.of(context).size.width/2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextLightColor,
                fontWeight:FontWeight.w600,
                fontSize: 15.0,

              ),),
              kHalfSizedBox,
              Text(value,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextBlackColor,
                fontWeight:FontWeight.w700,
                fontSize: 15.0,

              ),),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width/3,
                child: const Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          const Icon(Icons.lock_outline,size: 20,)
        ],
      ),
    );
  }
}
class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn({super.key, required this.value, required this.title});
  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:kDefaultPadding/4 ,
        top: kDefaultPadding/2,
        left: kDefaultPadding/4,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,            children: [
              Text(title,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextLightColor,
                fontSize: 15.0,

              ),),
              kHalfSizedBox,
              Text(value,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: kTextBlackColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,

              ),),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: const Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
         const   Icon(Icons.lock_outline,size: 20,),

        ],
      ),
    );
  }
}

