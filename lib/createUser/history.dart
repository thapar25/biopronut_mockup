import 'package:biopronut/HomePage.dart';
import 'package:flutter/material.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Additional Info"),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: (SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text('Enter allergies/prior medical history'),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(style: TextStyle(
      height: 10),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: '(optional)'),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text(
                      'Complete',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
