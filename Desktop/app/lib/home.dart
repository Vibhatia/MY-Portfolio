import 'package:flutter/material.dart';
import 'package:flutter/src/material/tab_controller.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: new ThemeData(primaryColor: Color(0xff075E54)),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("SociAls"),
        elevation: 1.0,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Tab(
              child: Text("STATUS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Tab(
              child: Text("CALLS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: Image.asset("images/logo-facebookpng-32204.png"),
                 
              ),),
              // child: Text(
              //   "Facebook",
              // ),
            ),
          
        ],
      ),
    );
  }
}
