import 'package:flutter/material.dart';
import 'dart:collection';

class WeatherDisplayCard extends StatelessWidget {
  WeatherDisplayCard(this.myWeatherData);

  LinkedHashMap myWeatherData;

  Widget _sampleWidget(data) {
    print('printing in sample widget');
    print(data['weather'][0]['main']);
    return Text(data['main'].temp);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Text(myWeatherData['main']['temp']),
            // Text(
            //     '${myWeatherData['main']['temp_min']} - ${myWeatherData['main']['temp_max']}'),
            // Text('${myWeatherData[0].weather[0].main}'),
            // Text('${myWeatherData[0].name}'),
            // Text('${myWeatherData[0].sys.country}')
            _sampleWidget(myWeatherData)
          ],
        ),
      ),
    );
  }
}
