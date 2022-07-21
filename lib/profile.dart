import 'package:flutter/material.dart';
import 'package:project_13_07_2022/login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      Navigator.pop(context);

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.teal,
        backgroundColor: Colors.teal,

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
          elevation: 18,
          backgroundColor: const Color.fromARGB(139, 87, 203, 239),
          child: Container(
            color: Colors.black45,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Card(
                  shadowColor: Colors.black12,
                  elevation: 10,
                  //photu
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: SizedBox(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 85,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMLWxU_5XvcwasPnNpJmUhW_8dO5MoxM3pGkfSpryNGW89GKIyrXnF3mLcj6dEQdWi9RU&usqp=CAU'),
                          )
                          //name
                          ,
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Cheems',
                            textScaleFactor: 1.4,
                            style: TextStyle(color: Colors.white),
                          ),
                          //room
                          SizedBox(
                            height: 20,
                          ),
                          Text("BD 1125",
                              textScaleFactor: 0.7,
                              style: TextStyle(color: Colors.white))
                          //password
                        ]),
                  ),
                ),
                Card(
                    elevation: 10,
                    shadowColor: Colors.black12,
                    color: const Color.fromARGB(0, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: (() => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login(
                                            title: 'Profile',
                                          )),
                                )
                              }),
                          hoverColor: Colors.pinkAccent,
                          focusColor: Colors.pinkAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: const <Widget>[
                              Icon(Icons.login_rounded, size: 30),
                            ]),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: (() => {}),
                          hoverColor: Colors.pinkAccent,
                          focusColor: Colors.pinkAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: const <Widget>[
                              Icon(Icons.music_note_rounded, size: 30),
                            ]),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
      body: Container(
        color: Colors.black12,
        child: Card(
          shadowColor: Colors.teal,
          elevation: 10,
          color: Colors.black12,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                shadowColor: Colors.black12,
                elevation: 10,
                //photu
                color: const Color.fromARGB(0, 255, 255, 255),
                child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 85,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMLWxU_5XvcwasPnNpJmUhW_8dO5MoxM3pGkfSpryNGW89GKIyrXnF3mLcj6dEQdWi9RU&usqp=CAU'),
                        )
                        //name
                        ,
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Cheems',
                          textScaleFactor: 1.4,
                          style: TextStyle(color: Colors.white),
                        ),
                        //room
                        SizedBox(
                          height: 20,
                        ),
                        Text("BD 1125",
                            textScaleFactor: 0.7,
                            style: TextStyle(color: Colors.white))
                        //password
                      ]),
                ),
              ),
              Card(
                  elevation: 10,
                  shadowColor: Colors.black12,
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: (() => {}),
                        hoverColor: Colors.pinkAccent,
                        focusColor: Colors.pinkAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: const <Widget>[
                            Icon(Icons.wallet, size: 30),
                          ]),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: (() => {}),
                        hoverColor: Colors.pinkAccent,
                        focusColor: Colors.pinkAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: const <Widget>[
                            Icon(Icons.local_movies_rounded, size: 30),
                          ]),
                        ),
                      )
                    ],
                  )),
              InkWell(
                onTap: () => {Navigator.pop(context)},
                child: Material(
                  color: const Color.fromARGB(139, 87, 203, 239),
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: (() => {Navigator.pop(context)}),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.3,
                            height: 40,
                            child: const Center(
                                child: Text('Musicc',
                                    style: TextStyle(color: Colors.white)))),
                      ),
                      const Icon(Icons.arrow_forward, size: 30)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.black45,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("he"),
        centerTitle: true,
      ),
      drawer: Drawer(
          elevation: 18,
          backgroundColor: const Color.fromARGB(139, 87, 203, 239),
          child: Container(
            color: Colors.black45,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Card(
                  shadowColor: Colors.black12,
                  elevation: 10,
                  //photu
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: SizedBox(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 85,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMLWxU_5XvcwasPnNpJmUhW_8dO5MoxM3pGkfSpryNGW89GKIyrXnF3mLcj6dEQdWi9RU&usqp=CAU'),
                          )
                          //name
                          ,
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Cheems',
                            textScaleFactor: 1.4,
                            style: TextStyle(color: Colors.white),
                          ),
                          //room
                          SizedBox(
                            height: 20,
                          ),
                          Text("BD 1125",
                              textScaleFactor: 0.7,
                              style: TextStyle(color: Colors.white))
                          //password
                        ]),
                  ),
                ),
                Card(
                    elevation: 10,
                    shadowColor: Colors.black12,
                    color: const Color.fromARGB(0, 255, 255, 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: (() => {}),
                          hoverColor: Colors.pinkAccent,
                          focusColor: Colors.pinkAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: const <Widget>[
                              Icon(Icons.wallet, size: 30),
                            ]),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: (() => {}),
                          hoverColor: Colors.pinkAccent,
                          focusColor: Colors.pinkAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(children: const <Widget>[
                              Icon(Icons.local_movies_rounded, size: 30),
                            ]),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
