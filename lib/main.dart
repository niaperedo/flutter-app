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
      body: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/02.jfif')
          ),
          Expanded(
            flex: 1 ,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Text('2')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amber,
                child: Text('3')
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
