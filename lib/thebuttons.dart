import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final userButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(70.0),
        color: Color(0xFF0D47A1),
        child: MaterialButton(
          minWidth:270 ,
          padding: EdgeInsets.fromLTRB(20.0, 25.0, 40.0, 25.0),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('USER',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ));
    final cleanerButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(70.0),
        color: Color(0xFF0D47A1),
        child: MaterialButton(
          minWidth:270 ,
          padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
          onPressed: () {
            Navigator.pushNamed(context, '/fourth' );
          },
          child: Text('Cleaner',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ));
    final mechanicButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(70.0),
        color: Color(0xFF0D47A1),
        child: MaterialButton(
          minWidth:270 ,
          padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
          onPressed: () {
            Navigator.pushNamed(context,'/fourth' );
          },
          child: Text('Mechanic',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ));
    return  Padding(
      padding: const EdgeInsets.all(0.0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body:  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/blackcar.jpeg"), // <-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
            ),
              child:SafeArea(
                child:Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        userButon,
                        SizedBox(
                          height:45,
                        ),
                        cleanerButon,
                        SizedBox(
                          height:45,
                        ),
                        mechanicButon,
                        SizedBox(
                          height:45,
                        ),
                      ],)
                ),
              )
          ),
        ),
      ),
    );

  }
}


