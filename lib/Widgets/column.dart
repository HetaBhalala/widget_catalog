import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          textBaseline: TextBaseline.alphabetic,
          children: [
            SizedBox(height: 10),
            Text(
              "Mary enjoys cooking.She likes bananas.",
            ),
            Text(
                "They speak English at work.The train does not leave at 12 AM."),
            Text("I have no money at the moment.Do they talk a lot ?"),
            Text("I want to be a computer engineer."),
            Text("He likes to paint by himself.I can run faster than him."),
            Text("I'm not sure about the universe.I lost my watch yesterday."),
            Container(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('17:59', style: TextStyle(fontSize: 32)), // <-- first child
                    Icon(Icons.timer),
                  ],
                ),
                Text('mm:ss'),
              ],
            )
          ],
        ));
  }
}
