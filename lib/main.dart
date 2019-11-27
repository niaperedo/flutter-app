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
      body: Center(
//        child: FlatButton(
//          onPressed: () {print('clicked'); },
//          child: Text('Click me', style: TextStyle(
//            color: Colors.white,
//          ),),
//          color: Colors.redAccent,
//        )
//        child: RaisedButton.icon(
//            onPressed: () {},
//            icon: Icon(Icons.mail),
//            label: Text('Mail Me'),
//            textColor: Colors.red,
//            color: Colors.amber,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.alternate_email),
            color: Colors.amber,
          )
//        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
