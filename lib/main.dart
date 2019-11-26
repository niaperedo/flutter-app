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
          // child: Image(
            // image: NetworkImage('https://images.unsplash.com/photo-1574542740052-bcd05b996e82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
            // image: AssetImage('assets/01.jfif'),
          // ),
          child: Image.asset('assets/01.jfif'),
          //child: Image.network('https://images.unsplash.com/photo-1574542740052-bcd05b996e82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
