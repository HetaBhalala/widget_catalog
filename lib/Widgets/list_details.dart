import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDetails extends StatelessWidget {
  const ListDetails({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Details"),
        ),
        body:Center(child: Image.network(image)));
  }
}
