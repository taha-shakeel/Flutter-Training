import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:collection';
import '../services/weatherService.dart';
import './weatherDisplayCard.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LinkedHashMap weatherData;
  bool isLoading = false;

  void getWeatherData() async {
    this.setState(() {
      isLoading = true;
    });
    var data = await WeatherService.fetchWeather();
    print('loaded data');
    print(weatherData == null ? 'it is null' : 'not null');
    this.setState(() {
      weatherData = data;
      isLoading = false;
    });
  }

  Widget _buildMainWidgetBody(weatherData) {
    if (weatherData == null) {
      return Container(
        child: Center(
          child: RaisedButton(
            child: Text("Get my weather Data"),
            onPressed: getWeatherData,
          ),
        ),
      );
    } else {
      print(weatherData.length);
      return WeatherDisplayCard(weatherData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Week 3 assignment'),
        ),
        body: _buildMainWidgetBody(weatherData));
  }
}
