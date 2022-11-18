import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Images"),
    ),
    body:

    Center(child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    GestureDetector(
    onTap: ()
      {
      Navigator.of(context).pop(
      );
      },
    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVeXmmgy4UHViI1nvK0X5Mddk3b_Kx9hkEug&usqp=CAU",
    height: 450, width: 300, fit: BoxFit.cover,
    ),
    ),
    SizedBox(width: 30),
    GestureDetector(
      onTap: () {
        Navigator.of(context).pop(
           );

      },
        child: Image.asset("assets/img.png",height: 450, width: 300, fit: BoxFit.cover)),
    ],
    ),
    ))

    );
    }
  }
