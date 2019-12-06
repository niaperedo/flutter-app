import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String display = 'loading';

  void setupWorldTime () async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Asia/Manila');
    await instance.getTime();
    setState(() {
      display = instance.time;
    });


  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(display),
      ),
    );
  }
}
