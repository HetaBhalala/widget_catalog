import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewGrid extends StatefulWidget {
  const NewGrid({Key? key}) : super(key: key);

  @override
  State<NewGrid> createState() => _NewGridState();
}

class _NewGridState extends State<NewGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid"),
          backgroundColor: Colors.black,
        ),
        body: Container());
  }
}
