import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<String> names = <String>[
    "Kai"
    "Zion",
    "Jayden",
    "Eliana",
    "Luca",
    " Ezra",
    " Maeve",
    "Aaliyah",
    "Kai",
    "Zion",
    "Jayden",
    "Eliana",
    "Luca",
    " Ezra",
    " Maeve",
    "Zion",
    "Jayden",
    "Eliana",
    "Luca",
    " Ezra",
    " Maeve",
    "Aaliyah",
    "Kai",
    "Zion",
    "Jayden",
    "Eliana",
    "Luca",
    " Ezra",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Grid View'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: GridView.builder(
              padding: EdgeInsets.all(15),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 10),
              itemCount: names.length,
              itemBuilder: (context, index) => Container(
                    child: Center(
                        child: Text(
                      names[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            index % 2 == 0 ? Colors.green : Colors.orange,
                            Colors.black
                          ]),
                    ),
                  )),
        ));
  }
}
