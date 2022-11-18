import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details List"),
      ),
        body: Center(child: Image.network(image)));
  }
}
