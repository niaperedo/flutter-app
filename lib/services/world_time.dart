import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response resp = await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(resp.body);

      DateTime now = DateTime.parse(data['datetime']);
      now = now.add(Duration(hours: int.parse(data['utc_offset'].substring(1,3))));

      time = now.toString();
    } catch (e) {

      time = 'could not get data';
      print(e);
    }
  }
}