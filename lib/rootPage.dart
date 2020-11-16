import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutterapppetscare/pages/Annonces/annonces.dart';
import 'package:flutterapppetscare/pages/Reglage/settings_screen.dart';
import 'package:flutterapppetscare/pages/adoption/adoptionHome.dart';
import 'package:flutterapppetscare/pages/myPets/container_transition.dart';
import 'package:flutterapppetscare/theme/constant.dart';




class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),

  );

  ShapeBorder bottomBarShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.pinned;
  EdgeInsets padding = EdgeInsets.zero;

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.rectangle;


  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor =  Color.fromRGBO(124,62,134, 0.8);

  Color unselectedColor = primary;
  List <Widget> pages = [
    OpenContainerTransformDemo(),
adoptionHome(),
    annonces(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),


      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape:  BeveledRectangleBorder(borderRadius: _borderRadius),
        padding: padding,
        elevation: 8,
        shadowColor: Colors.grey,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor:primary,

        ///configuration for SnakeNavigationBar.gradient
        // snakeViewGradient: selectedGradient,
        // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        // unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,


        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index
        ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Pets'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Adoption'),
          BottomNavigationBarItem(icon: Icon(Icons.announcement), label: 'Annonces'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],

      ),
    );
  }
  Widget getBody() {
    return pages.elementAt(_selectedItemPosition);
  }
}




