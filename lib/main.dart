// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:village/widgets/needCard.dart';
import './widgets/talkCard.dart';
import './widgets/moodCard.dart';
import './widgets/needCard.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  
  @override
  _MyStatefulWidgetState createState() => new _MyStatefulWidgetState();
}

/// This is the stateless widget that the main application instantiates.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _elevation = 10.0;

  void _setElevation() {
    setState(() {
      if (_elevation > 0) {
        _elevation = 0;
      } else {
        _elevation = 10.0;
      }
    });
  }

  Widget getRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Divider(color: Colors.black),
              Text("Hello"),
              Divider(color: Colors.black)
            ],
          )
        )
      ],
    );
  }

  Widget talkPosts() {
    return new TalkCard();
  }

  Widget needPost() {
    return new NeedCard();
  }

  Widget moodCard() {
    return new MoodCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: const Text('Welcome', style: TextStyle(color: Color(0xFF535353), fontSize: 30),),
          titleSpacing: 20.0,
          backgroundColor: Colors.white,
          elevation: _elevation,
          centerTitle: false,
          actions: <Widget>[
            // IconButton(
            //   icon: const Icon(Icons.add_alert),
            //   tooltip: 'Show Snackbar',
            //   onPressed: () {
            //     scaffoldKey.currentState.showSnackBar(snackBar);
            //   },
            //   color: Colors.black,
            // ),
            // IconButton(
            //   icon: const Icon(Icons.navigate_next),
            //   color: Colors.black,
            //   tooltip: 'Next page',
            //   onPressed: () {
            //     openPage(context);
            //   },
            // ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              color: Color(0xFF535353),
              onPressed: () {
                _setElevation();
              }
              )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
          ),
        ),
      ), 
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: <Widget> [
              Row(
                children: <Widget>[
                  Container(height: 1, width: 80, padding: EdgeInsets.fromLTRB(0, 0, 0, 0), color: Colors.black,),
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text("Complete Your Daily Tasks!")),
                  Container(height: 1, width: 80, padding: EdgeInsets.fromLTRB(0, 0, 0, 0), color: Colors.black,),
                ],
              ),
              Container(
                height: 120.0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0,20,0,0),
                  child: this.moodCard()
                )
              ),
              // Padding(padding: EdgeInsets.fromLTRB(0,20,0,0), child: DotsIndicator(dotsCount: 1, position: 1,)),
              new DotsIndicator(dotsCount: 3, position: 0, decorator: DotsDecorator(color: Colors.grey, activeColor: Color(0xFFFFB7A7)),),
              Padding(padding: EdgeInsets.fromLTRB(0,60,0,0)),
              Padding(child: Align(child: Text("Talk Of The Village", style: TextStyle(color: Color(0xFF535353), fontSize: 20)), alignment: Alignment.centerLeft), padding: EdgeInsets.fromLTRB(20,0,0,0),),
              Container(
                height: 320.0,
                child: new ListView(
                  padding: EdgeInsets.fromLTRB(0,10,0,10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    talkPosts(),
                    talkPosts(),
                    talkPosts(),
                    talkPosts(),
                  ],
                ),
              ),
              Padding(child: Align(child: Text("In Need", style: TextStyle(color: Color(0xFF535353), fontSize: 20)), alignment: Alignment.centerLeft), padding: EdgeInsets.fromLTRB(20,20,0,0),),
              Column(
                children: <Widget>[
                  Container(
                    height: 180.0,
                    child: new ListView(
                      padding: EdgeInsets.fromLTRB(0,10,0,10),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        needPost(),
                        needPost()
                      ],
                    ),
                  ),
                  Container(
                    height: 180.0,
                    child: new ListView(
                      padding: EdgeInsets.fromLTRB(0,10,0,10),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        needPost(),
                        needPost()
                      ],
                    ),
                  )
                ],
              ),
            ]
          )
        )
      ),
      backgroundColor: Colors.white,
      // bottomNavigationBar: ,
    );
  }
}


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }