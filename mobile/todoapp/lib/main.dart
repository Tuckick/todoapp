import 'package:flutter/material.dart';
import 'package:todoapp/styles/text_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                TabBarView(
                  children: <Widget>[
                    Container(
                      color: Colors.grey.shade900,
                    ),
                    Container(
                      color: Colors.grey.shade900,
                    ),
                    Container(
                      color: Colors.grey.shade900,
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Intray',
                        style: intrayTitleText,
                      ),
                      Container(
                        color: Colors.orange.shade700,
                        height: 30,
                        width: 30,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.33,
                    left: MediaQuery.of(context).size.width * 0.43,
                  ),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 45,
                    ),
                    backgroundColor: Colors.orange.shade700,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            appBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: Icon(Icons.perm_identity),
                ),
              ],
              labelColor: Colors.grey.shade900,
              unselectedLabelColor: Colors.grey.shade300,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
