import 'package:flutter/material.dart';
import 'package:flutterapppetscare/pages/home_pets.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:line_icons/line_icons.dart';

import 'Reglage/settings_screen.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List <BottomNavigationBarItem>items = [
    BottomNavigationBarItem(icon: Icon(Icons.pets,size: 27,),title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Pets",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
    )
    ),
    BottomNavigationBarItem(icon: Icon(LineIcons.home,size: 27,),title:Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Adoptions",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
    )
    ),
    BottomNavigationBarItem(icon: Icon(LineIcons.book,size: 27),title:Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Annonces",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
    )),
    BottomNavigationBarItem(icon: Icon(LineIcons.bell,size: 27),title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Notification",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
    )),
    BottomNavigationBarItem(icon: Icon(Icons.settings,size: 27),title: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Reglages",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
    ))
  ];
  int selectedIndex = 0;
  List <Widget> pages = [
    Center(child: Text("Mes Animaux",style: TextStyle(fontSize: 40),),),
    Homepage(),
    Center(child: Text("Annonces",style: TextStyle(fontSize: 40),),),
    Center(child: Image.asset("assets/Messages-rafiki.png"),),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(

          items: items,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          selectedItemColor: primary,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
}

