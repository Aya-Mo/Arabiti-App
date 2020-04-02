import 'package:flutter/material.dart';
class BookingForm extends StatefulWidget {
  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "your name",
          prefixIcon: Icon(Icons.person_pin),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final phoneField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "phone",
          prefixIcon: Icon(Icons.phone),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final addressField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "your address",
          prefixIcon: Icon(Icons.location_on),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(70.0),
      color: Colors.blue[800],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width/2,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: Text("booking",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body:ListView(
        children :<Widget>[
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 65.0,),
                nameField,
                SizedBox(height: 25.0),
                phoneField,
                SizedBox(height: 25.0),
                addressField,
                SizedBox(height: 25.0),
                loginButon,
                SizedBox(
                  height: 15.0,),
              ],
            ),
          ),
        ],  ),
    );
  }
}

