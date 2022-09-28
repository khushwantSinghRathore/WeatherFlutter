// ignore_for_file: avoid_print

import '../env/envprod.dart' as env;
import 'package:http/http.dart' as http;

class HttpCalls {
  static const api = env.Apikey;

  static var res = '';

  getcurrentweather(locationkey) async {
    final querypram = {'apikey': api, 'details': 'true'};
    final url = Uri.https(
        'http://dataservice.accuweather.com/currentconditions/v1/',
        locationkey,
        querypram);
    final result = await http.get(url);
    print(result.body);

    if (result.statusCode == 200) {
      print('passed');
      // return result;
    }
  }

  getforecast(locationkey) async {
    final querypram = {'apikey': api, 'details': 'true'};
    final url = Uri.https(
        'http://dataservice.accuweather.com/forecasts/v1/daily/5day/',
        locationkey,
        querypram);
    final result = await http.get(url);

    if (result.statusCode == 200) {
      print('passed');
      return result;
    }
  }

  getcitydata(city) async {
    print(city);
    final querypram = {'apikey': api, 'q': city};
    final url = Uri.http(
        'dataservice.accuweather.com', 'locations/v1/cities/search', querypram);
    final result = await http.get(url);
    print(result.body);
    res = result.body;

    if (result.statusCode == 200) {
      print('passed');

      print(result.body);
      // return result;
    }
  }
}
