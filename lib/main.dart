import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'my first app',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'IndieFlower'
            )
          ),
          centerTitle: true,
          backgroundColor: Colors.red[600]
      ),
      body: Container(
        color: Colors.grey[600],
        child: Text('hello'),
//        padding: EdgeInsets.all(20.0),
//        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
          margin: EdgeInsets.all(30.0),
      ),
//      body: Padding(
//        padding: EdgeInsets.all(20),
//        child: Text('Hello')
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
