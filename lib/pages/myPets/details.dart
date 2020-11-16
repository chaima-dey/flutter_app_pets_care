

import 'package:flutter/material.dart';
import 'package:flutterapppetscare/theme/constant.dart';

class MyPetsDetailsPage extends  StatefulWidget {

  @override
  _MyPetsDetailsState createState() => _MyPetsDetailsState();


}


class _MyPetsDetailsState extends State<MyPetsDetailsPage> {
  final String image = "assets/images2.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: BoxDecoration(
              color: Colors.black26
            ),
            height: 400,
            child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    "Name of Pet",
                    style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 14.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 14.0,
                      ),

                      child: Text(
                        "date Birth",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  color: Colors.white,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      ExpansionTile(
                        title: Text("Show Details",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(16.0),


                            alignment: Alignment.topLeft,
                            child: Text("This is the details widget. Here you can see more details of the product"),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                            children: <Widget>[

                              Row(


                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("My Tasks", style: TextStyle(
                                            color: primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0
                                        ),),


                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.calendar_today,
                                        color: primary,
                                      ),
                                    ],
                                  )
                                ],
                              ),


                              const SizedBox(height: 30.0),
                              Text("Description".toUpperCase(), style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0
                              ),),
                              const SizedBox(height: 10.0),
                              Text(
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.0
                              ),),
                              const SizedBox(height: 10.0),
                              Text(
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.0
                              ),),
                            ],

                        ),

                      ),




                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,

              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
