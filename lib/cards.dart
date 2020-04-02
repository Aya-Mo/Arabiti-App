import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'userpage.dart';
class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  String currentProfilePic = "https://www.cartoonnetworkasia.com/";
  String otherProfilePic =
      "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  final dio = new Dio(); // for http requests
  Widget _appBarTitle = new Text('Search...');
  Icon _searchIcon = new Icon(Icons.search);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(this.context ,this.context),
                          ),
                        ),

                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  ""),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer4(this.context ,this.context),
                          ),
                        ),

                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  ""),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child:myDetailsContainer3(this.context ,this.context),
                          ),
                        ),

                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  ""),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child:myDetailsContainer2(this.context ,this.context),
                          ),
                        ),

                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  ""),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),


        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("mariemmoahammed974@gmail.com"),
              accountName: new Text("mariem mohamed"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(currentProfilePic),
                ),
                onTap: () => print("This is your current account."),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfilePic),
                  ),
                  onTap: () => switchAccounts(),
                ),
              ],
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                      fit: BoxFit.fill)),
            ),
            new ListTile(
                title: new Text(
                  "My Profile",
                ),
                trailing: new Icon(Icons.account_circle),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/sixth');
                }),
            new ListTile(
                title: new Text(
                  "Home",
                ),
                trailing: new Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/third');
                }),
            new ListTile(
                title: new Text("About US"),
                trailing: new Icon(Icons.label_important),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new Page("About US","Our App gives you two types of services \n Cleaning & maintenance ", Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/prologo.jpg"), // <-- BACKGROUND IMAGE
                            fit: BoxFit.fill,
                          ),
                        ),),)));
                }),
            new ListTile(
                title: new Text("help"),
                trailing: new Icon(Icons.help_outline),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new Page("help","", Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/prologo.jpg"), // <-- BACKGROUND IMAGE
                            fit: BoxFit.fill,
                          ),
                        ),),)));
                }),
            new Divider(),
            new ListTile(
              title: new Text("log out"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
  Widget myDetailsContainer1(btn1,btn2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Ahmed",
            style: TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Container(child: Text("nasr city \u00B7 abdalla elaraby street",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text('Accept'),
              onPressed: (){  Navigator.pushNamed(btn1,'/fifth');},
            ),
            FlatButton(
              child: Text('refuse'),
              onPressed: (){ Navigator.pushNamed(btn2, '/fifth');},
            ),
          ],
        ),
      ],);
  }

  Widget myDetailsContainer2(btn1,btn2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Mostafa",
            style: TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Container(child: Text("nasr city \u00B7 abdalla elaraby street",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
    Row(
    children: <Widget>[
    FlatButton(
    child: Text('Accept'),
    onPressed: (){ Navigator.pushNamed(btn1, '/sixth');},
    ),
    FlatButton(
    child: Text('refuse'),
    onPressed: (){ Navigator.pushNamed(btn2, '/sixth');},
    ),
    ],
    ),
    ],);
  }

  Widget myDetailsContainer3(btn1,btn2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Amr",
            style: TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Container(child: Text("nasr city \u00B7 abdalla elaraby street",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
    Row(
    children: <Widget>[
    FlatButton(
    child: Text('Accept'),
    onPressed: (){ Navigator.pushNamed(btn1, '/sixth');},
    ),
    FlatButton(
    child: Text('refuse'),
    onPressed: (){ Navigator.pushNamed(btn2, '/sixth');},
    ),]),
      ],
    );
  }

  Widget myDetailsContainer4(btn1,btn2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Mohamed",
            style: TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Container(child: Text("nasr city \u00B7 abdalla elaraby street",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text('Accept'),
              onPressed: (){ Navigator.pushNamed(btn1, '/sixth');},
            ),
            FlatButton(
              child: Text('refuse'),
              onPressed: (){ Navigator.pushNamed(btn2, '/sixth');},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: new Text("Home "),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: _searchPressed,
        ),
      ],
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              hintText: 'Search...'
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search Example');
      }
    });
  }
}
