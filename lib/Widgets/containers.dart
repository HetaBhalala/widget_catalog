import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //margin: EdgeInsets.all(150),
              height: 100,
              width: 80,

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //   image: AssetImage("assets/img.png"),
                  //    fit: BoxFit.fill,

                  // ),
                  color: Colors.green,
                ),
                child: Image.asset("assets/img.png", fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
