import 'package:flutter/material.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/prologo.jpg"), // <-- BACKGROUND IMAGE
                  fit: BoxFit.fill,
                ),
              ),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30.0,),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontFamily: "Ubuntu"
                  ),
                ),
                SizedBox(height: 35.0,),
                buildTextField("Email"),
                SizedBox(height: 20.0,),
                buildTextField("Password"),
                SizedBox(height: 15.0,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue[900],
                            fontFamily: "Ubuntu"
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                buildButtonContainer(),
                SizedBox(height: 10.0,),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        SizedBox(width: 5.0,),
                      FlatButton(
                        onPressed:(){
                          Navigator.pushNamed(context, '/first');
                          },
                        child:Text("SIGN UP",
                            style:TextStyle(
                              color: Colors.blue[900],
                                fontFamily: "Ubuntu"
                            ),
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
            colors: [
              Colors.blue[900],
              Colors.blue[800]
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }
}