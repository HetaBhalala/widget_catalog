import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewImage extends StatefulWidget {
  const NewImage({Key? key}) : super(key: key);

  @override
  State<NewImage> createState() => _NewImageState();
}

class _NewImageState extends State<NewImage> {
  List<String> image = <String>[
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Your Images"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: image.length,
            padding: EdgeInsets.all(20),
            itemBuilder: (context,index) =>Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.network(image[index].toString(),fit: BoxFit.cover,
                height: 100,
                width: 100,),
            ),

          ),

          ),
        );
  }
}
