import 'package:flutter/material.dart';
class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
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
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          prefixIcon:Icon(Icons.email),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: _toggleVisibility,
            icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          ) ,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      obscureText: true,
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[800],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width/2,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/third');
        },
        child: Text("sign in",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return  Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nameField,
                SizedBox(height: 25.0),
                emailField,
                SizedBox(height: 25.0),
                phoneField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
