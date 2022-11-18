import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfields"),
      ),
      body: Container(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: "Search",
            icon: Icon(Icons.search),
            fillColor: Colors.green,
            filled: true,
              prefix: Icon(Icons.abc_outlined),
         //     suffix: Icon(Icons.access_alarms_sharp),
            suffixIcon: Icon(Icons.access_time_filled_outlined)
          ),
          keyboardType: TextInputType.name,
        ),
      ),
    );
  }
}
