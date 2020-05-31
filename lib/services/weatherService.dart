import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static Future<LinkedHashMap> fetchWeather() async {
    http.Response weatherRes = await http.get(Uri.encodeFull(
        'https://api.openweathermap.org/data/2.5/weather?q=Karachi&APPID=09d81ce784676459d3211478c3299e75'));
    print('returnibng body');
    return jsonDecode(weatherRes.body);
  }
}
