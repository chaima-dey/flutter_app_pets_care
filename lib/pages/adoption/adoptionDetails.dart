
import 'package:flutter/material.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class adoptionDetailsPage extends StatefulWidget {

  @override
  _adoptionDetailsState createState() => _adoptionDetailsState();


}


class _adoptionDetailsState extends State<adoptionDetailsPage> {

  final String image = "assets/images/card_dog_2.png";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: <Widget>[

            ],
          ),
          Positioned(
            top: 380,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name :",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                children: <Widget>[
                  Text(
                    "lieu :",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(  "megrine",
                    style: TextStyle(fontSize: 16.0),),
                ],
              ),
                  SizedBox(height: 10.0),

                  Row(
                    children: <Widget>[
                      Text(
                        "Gender :",
                        style: TextStyle(fontSize: 16.0),
                      ),

                      Text(  "female",
                        style: TextStyle(fontSize: 16.0),),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  Row(
                    children: <Widget>[
                      Text(
                        "Description :",
                        style: TextStyle(fontSize: 16.0),
                      ),

                      Text(  "more details",
                        style: TextStyle(fontSize: 16.0),),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: primary,
                        textColor: Colors.white,
                        child: Text("Adopte"),
                        onPressed: () {},
                      )),

                ],
              ),
            ),
          ),
          Positioned(
            top: 365,
            right: 40,
            child: CircleAvatar(
                radius: 20.0,
                foregroundColor: Colors.grey,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.favorite_border)),
          )
        ],
      ),
    );
  }
}
