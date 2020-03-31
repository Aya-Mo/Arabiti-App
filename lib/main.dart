import 'package:flutter/material.dart';
import 'package:untitled/cards.dart';
import 'package:untitled/screen0.dart';
import 'package:untitled/supplierform.dart';
import 'userregisteration.dart';
import 'Screen1.dart';
import 'userpage.dart';
import 'viewprofile.dart';
import 'SplashScreen.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/zero' : (context) => App(),
        '/first' : (context) => Screen1(),
        '/second' : (context) => UserForm(),
        '/third' : (context) => UserPage(),
        '/fourth' : (context) => SupplierForm(),
        '/fifth' : (context) => Cards(),
        '/sixth' : (context) => ViewProfile(),
      }
    );
  }
}