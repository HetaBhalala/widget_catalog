import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows"),
      ),
        body:

         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.add_a_photo_outlined,size:150 ,),
                  SizedBox(width:300,child: Text("Search For secure cloud cyber security protection management platform hiring In India. Latest Vacancies Near You. High Paying Jobs For Freshers And Experienced. Apply Now. Find Your Dream Job. Top MNCs Are Hiring. Latest Jobs In 2022. Fresher Jobs. Free Job Alerts. Amenities: Job Search Ads Platform, Full Time & Part Time, Work From Home Options, Apply To Get Hired Fast.")),
                  Image.asset("assets/img_1.png"
                  ,height: 150
                    ,width: 50,),
                  Container(


    ),
              ],
            ),
         ),

    );
  }
}
