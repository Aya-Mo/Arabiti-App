import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dio/dio.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
  final dio = new Dio();
  Widget _appBarTitle = new Text('Search...');
  Icon _searchIcon = new Icon(Icons.search);
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child:new Scaffold(appBar: _buildBar(context),
       /* appBar: new AppBar(
          title: new Text("Home "),
          backgroundColor: Colors.blue,
          bottom:TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.local_car_wash,size: 40,)),
              Tab(icon: Icon(Icons.build,size: 40,)),
            ],
          ),
        ),*/
        body: new TabBarDemo(),
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
                    Navigator.pushNamed(context, '/myprofile');
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
        ),),
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
    backgroundColor: Colors.blue,
    bottom:TabBar(
      isScrollable: true,
      tabs: [
        Tab(icon: Icon(Icons.local_car_wash,size: 40,)),
        Tab(icon: Icon(Icons.build,size: 40,)),
      ],
    ),
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
      this._appBarTitle = new Text('Home');
    }
  });
}
}

class Page extends StatelessWidget {
  final String title;
  final String bodytext;
  Widget packground;
  Page(this.title,this.bodytext, this.packground);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: Column(
        children: <Widget>[
          packground,
          new Center(
            child: new Text(bodytext),
          ),
        ],
      ),
    );
  }
}
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         /* appBar:  AppBar(
            title: Text('\t \t \t \t choose service provider',),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.local_car_wash,size: 40,)),
                Tab(icon: Icon(Icons.build,size: 40,)),
              ],
            ),
          ),
*/
          body: TabBarView(
              children: <Widget>[
                page1(),
                page2(),
          ],
        ),

    //),
    );

  }
}
class ContainerDetails extends StatelessWidget {
  String text;
  String address;
  double rate;
  ContainerDetails(this.text,this.address,this.rate);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text(text,
            style: TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text(rate.toString(),
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStar, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Icon(
                    FontAwesomeIcons.solidStarHalf, color: Colors.amber,
                    size: 15.0,),),
                  Container(child: Text("(321) \u00B7 0.9 mi",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                ],)),
        ),
        Container(child: Text(address,
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('view profile'),
              onPressed:(){
                Navigator.pushNamed(context, '/sixth');},),
            RaisedButton(
              child: Text('Booking'),
              onPressed:(){
                Navigator.pushNamed(context, '/seventh');
              },
            ),
          ],
        ),
      ],
    );
  }
}

class page1 extends StatefulWidget {
  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/washing.jpeg"), // <-- BACKGROUND IMAGE
    fit: BoxFit.fill,
    ),
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Ahmed',"nasr city \u00B7 abdalla elaraby street",4.8),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Mostafa',"nasr city \u00B7 abdalla elaraby street",4.3),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Amr',"nasr city \u00B7 abdalla elaraby street",4.0),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Mohamed',"nasr city \u00B7 abdalla elaraby street",3.5),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
        ],
      ),),
    );
  }
}
class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/repearing.jpeg"), // <-- BACKGROUND IMAGE
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding:EdgeInsets.all(10.0),
        child: ListView(
        children: <Widget>[
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Ahmed',"nasr city \u00B7 abdalla elaraby street",4.8),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Mostafa',"nasr city \u00B7 abdalla elaraby street",4.3),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Amr',"nasr city \u00B7 abdalla elaraby street",4.0),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
          SizedBox(height: 15,),
          Container(
            child: new FittedBox(
              child: Material(

                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: ContainerDetails('Mohamed',"nasr city \u00B7 abdalla elaraby street",3.5),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
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
        ],
      ),),
    );
  }
}
