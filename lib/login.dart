import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // int _counter = 0;
  final userNameController = TextEditingController();
  final eMailController = TextEditingController();
  final passWordController = TextEditingController();

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("widget.title"),
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextFormField(
                controller: userNameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextFormField(
                controller: eMailController,
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextFormField(
                controller: passWordController,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              // padding: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                child: Text("ログイン"),
                onPressed: () {
                  //TextFormFieldの取得
                  //console
                  print(userNameController.text);
                  print(eMailController.text);
                  print(passWordController.text);
                },
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     Text("ログインしてください"),
            //     Text("ログアウトしてください"),
            //   ],
            // ),
          ],
        ),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.display1,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
