import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/Widgets/button_page.dart';
import 'package:widget_catalog/Widgets/containers.dart';
import 'package:widget_catalog/Widgets/horizontal_list.dart';
import 'package:widget_catalog/Widgets/image_demo.dart';
import 'package:widget_catalog/Widgets/register_page.dart';
import 'package:widget_catalog/Widgets/rows.dart';
import 'package:widget_catalog/Widgets/text_fields.dart';
import 'package:widget_catalog/Widgets/vertical_list.dart';

import 'Widgets/column.dart';
import 'Widgets/form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
        body: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

              ElevatedButton(
              style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ButtonPage()));
            },
            child: Text("BUTTON")
        ),
        ElevatedButton(
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ImageDemo()));
            },
            child: Text("IMAGES")
        ),
        ElevatedButton(
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => VerticalList()));
            },
            child: Text("VERTICAL LISTS")
        ),
        ElevatedButton(
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HorizontalList()));
            },
            child: Text("Horizontal LISTS")
        ),
        ElevatedButton(
    style: ButtonStyle(
    foregroundColor:
    MaterialStateProperty.all<Color>(Colors.black),
    ),
    onPressed: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Columns()));
    },
    child: Text("Column")


        ),
                    ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Rows()));
                        },
                        child: Text("Rows")


                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Containers()));
                        },
                        child: Text("Container")


                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => TextFields()));
                        },
                        child: Text("TextField")


                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => FormPage()));
                        },
                        child: Text("Form")


                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: Text("Register")


                    ),
                  ],
    )
    ,
    )
    ,
    )
    );
  }
}



