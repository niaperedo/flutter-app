import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response resp = await get('https://worldtimeapi.org/api/timezone/Asia/Manila');
    Map data = jsonDecode(resp.body);

    DateTime now = DateTime.parse(data['datetime']);
    now = now.add(Duration(hours: int.parse(data['utc_offset'].substring(1,3))));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
