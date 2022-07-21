import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_13_07_2022/login.dart';
import 'package:project_13_07_2022/profile.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.teal,
        elevation: 15,
        title: const Text('heelo niggga'),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.teal,
          elevation: 10,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back!'),
                  ),
                  const InkWell(
                    child: Icon(Icons.access_alarm, size: 40),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back nigaaaaa!'),
                  ),
                  const InkWell(
                    child: Icon(Icons.access_alarm, size: 40),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back!'),
                  ),
                  const InkWell(
                    child: Icon(Icons.access_alarm, size: 40),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  int _counter = 0;
  void _pause() {
    radiuss = !radiuss;
    setState(() {
      print("11");
      player.pause();
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _end() {
    setState(() {
      if (!radiuss) radiuss = true;
      player.stop();
      player.release();
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Login(
                title: 'Profile',
              )),
    );
  }

  void _end1() {
    setState(() {
      if (!radiuss) radiuss = true;
      player.stop();
      player.release();
    });
  }

  void _incrementCounter() {
    setState(() {
      radiuss = !radiuss;
      player.play(AssetSource('1.mp3'));
    });
  }

  bool radiuss = true;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // this will create a instance object of a class
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.teal,

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
        elevation: 30,
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal,
        elevation: 10,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic wolf',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
            ],
          ),
        ),
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Card(
          color: Colors.black12,
          shadowColor: Colors.teal,
          elevation: 10,
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '',
              ),
              Text(
                '',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 94, 94),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                          height: 1,
                          width: 1,
                          margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 0, 0, 0),
                              shape: BoxShape.circle),
                          child: Container(
                              height: 1,
                              width: 1,
                              margin: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 148, 146, 146),
                                  shape: BoxShape.circle),
                              child: Container(
                                  height: 1,
                                  width: 1,
                                  margin: const EdgeInsets.all(10.0),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      shape: BoxShape.circle),
                                  child: Container(
                                      height: 1,
                                      width: 1,
                                      margin: const EdgeInsets.all(50.0),
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: BoxShape.circle),
                                      child: const CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMLWxU_5XvcwasPnNpJmUhW_8dO5MoxM3pGkfSpryNGW89GKIyrXnF3mLcj6dEQdWi9RU&usqp=CAU'),
                                      ))))),
                    ),
                  ]), //Current Playin
              Card(
                  shadowColor: Colors.teal,
                  elevation: 30,
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Arabella',
                            textScaleFactor: 2,
                          ),
                          Text(
                            'Artic Monkee',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                  )),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 75,
              child: InkWell(
                //isExtended: false,
                //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                hoverColor: const Color.fromARGB(255, 21, 201, 159),
                focusColor: Colors.green,
                splashColor: const Color.fromARGB(255, 7, 67, 55),

                onTap: () => {_end()},
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                  bottom: Radius.circular(0),
                ),
                child: const Icon(Icons.person_rounded, size: 40),
              ),
            ),
            SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width / 3,
              child: InkWell(
                //isExtended: false,
                //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                hoverColor: const Color.fromARGB(255, 21, 201, 159),
                focusColor: Colors.green,
                splashColor: const Color.fromARGB(255, 7, 67, 55),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                  bottom: Radius.circular(0),
                ),
                onTap: () => radiuss ? {_incrementCounter()} : {_pause()},

                child: radiuss
                    ? const Icon(Icons.play_arrow_rounded, size: 60)
                    : const Icon(Icons.pause_rounded, size: 60),
              ),
            ),
            SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width / 3,
              child: InkWell(
                //isExtended: false,
                //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                  bottom: Radius.circular(0),
                ),
                hoverColor: const Color.fromARGB(255, 21, 201, 159),
                focusColor: Colors.green,
                splashColor: const Color.fromARGB(255, 7, 67, 55),

                onTap: () => {_end1()},

                child: const Icon(Icons.stop_rounded, size: 40),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
