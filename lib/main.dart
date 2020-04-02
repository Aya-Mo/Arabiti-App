import 'package:flutter/material.dart';
import 'cards.dart';
import 'loginPage.dart';
import 'supplierform.dart';
import 'userregisteration.dart';
import 'thebuttons.dart';
import 'userpage.dart';
import 'viewprofile.dart';
import 'SplashScreen.dart';
import 'bookingForm.dart';
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
        '/seventh' : (context) => BookingForm(),
      }
    );
  }
}