import 'package:flutter/material.dart';
import 'package:widget_catalog/home_page.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonPage"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Elevated Button")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        );
                  },
                  child: Text("Text Button")),
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                       );
                  },
                  child: Text("Outline Button")),
              FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        );
                  },
                  child: Icon(Icons.accessible_sharp)
              ),

              IconButton(onPressed: () {
                Navigator.of(context).pop(
                  );
              },
                  icon: Icon(Icons.accessible_sharp)
              )
            ],
          ),
        ),
      ),
    );
  }
}
