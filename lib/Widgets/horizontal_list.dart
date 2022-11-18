import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_details.dart';
List<String> entries = <String>["https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
  "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
  "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__480.jpg"];
List<int> colorcodes = <int>[400, 300, 200, 100];
class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List"),
      ),
        body: SizedBox(
          height: 100,

          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 100,
                  width: 400,
                  child: Card(
                    elevation: 5,

                    color: Colors.amber[colorcodes[index]],
                    child: ListTile(

                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ListDetails(image: entries[index])));
                      },
                      leading: Icon(Icons.ac_unit_outlined),
                      title: Text("Index ${index}"),
                      trailing: Icon(Icons.accessibility_new_outlined),
                      dense: false,
                      subtitle: Text("Open"),
                    ),
                  ),
                );
              }),
        ),


        );
  }
}
