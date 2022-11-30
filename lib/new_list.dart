import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewList extends StatefulWidget {
  const NewList({Key? key}) : super(key: key);

  @override
  State<NewList> createState() => _NewListState();
}

class _NewListState extends State<NewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your List"),
        ),
        body: Container());
  }
}
