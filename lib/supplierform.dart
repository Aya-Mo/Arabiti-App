import 'package:flutter/material.dart';
class SupplierForm extends StatefulWidget {
  @override
  _SupplierFormState createState() => _SupplierFormState();
}

class _SupplierFormState extends State<SupplierForm> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,color: Colors.white);
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
          hintText: "your name",hintStyle:style ,
          prefixIcon: Icon(Icons.person_pin,color: Colors.white,),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final phoneField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "phone",hintStyle:style ,
          prefixIcon: Icon(Icons.phone,color: Colors.white,),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",hintStyle:style ,
          prefixIcon: Icon(Icons.email,color: Colors.white,),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",hintStyle:style ,
          prefixIcon: Icon(Icons.lock,color: Colors.white,),
        suffixIcon: IconButton(
          onPressed: _toggleVisibility,
        icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      ) ,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      obscureText: true,
    );
    final addressField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "your address",hintStyle:style ,
          prefixIcon: Icon(Icons.location_on,color: Colors.white,),
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
          Navigator.pushNamed(context, '/fifth');
        },
        child: Text("sign in",
            textAlign: TextAlign.center,
            style: style.copyWith(fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/blackcar.jpeg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.fill,
            ),
          ),
        child:ListView(
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
                  emailField,
                  SizedBox(height: 25.0),
                  phoneField,
                  SizedBox(height: 25.0),
                  addressField,
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
    ],  ),),
    );
  }
}

