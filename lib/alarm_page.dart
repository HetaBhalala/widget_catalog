import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  var isList = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purpleAccent.withOpacity(0),
          title: Text("Alarms"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  onTap: () {
                    isList = !isList;
                    setState(() {});
                  },
                  child: Icon(Icons.account_circle_rounded)),
            )
          ],
        ),
        body: Container(
            child: isList
                ? ListView.separated(
                    itemBuilder: (context, index) => Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Items ${index + 1}",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                index % 2 == 0
                                    ? Colors.green
                                    : Colors.orangeAccent,
                                index % 2 == 0 ? Colors.black : Colors.white
                              ]),
                        )),
                    separatorBuilder:
                      (context, index) => SizedBox(
                            height: 10,
                          )
                    ,
                    itemCount: 100,
                  )
                : GridView.builder(
                    padding: EdgeInsets.all(15),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: 100,
                    itemBuilder: (context, index) => Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Items ${index + 1}",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                index % 2 == 0
                                    ? Colors.green
                                    : Colors.orangeAccent,
                                index % 2 == 0 ? Colors.black : Colors.white
                              ]),
                        )),
                  )));
  }
}
