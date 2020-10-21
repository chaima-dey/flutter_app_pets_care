import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapppetscare/pages/home_pets.dart';
import 'package:flutterapppetscare/rootPage.dart';


class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.maxFinite,
//      height: ScreenUtil.getInstance().setHeight(500),
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),

            TextField(
              decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),

            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),



            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),const SizedBox(height: 10.0),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                width:double.infinity,
                child: RaisedButton(
                  color: Color.fromRGBO(124,62,134, 0.8),
                  textColor: Colors.white,
                  child: Text("Login".toUpperCase()),
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RootPage()),
                  );},




                )
            ),

            const SizedBox(height: 20.0),

          ],
        ),
      ),
    );
  }
}
