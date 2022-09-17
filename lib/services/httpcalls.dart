import '../env/envprod.dart' as env;
import 'package:http/http.dart' as http;

const api = env.Apikey;

getcurrentweather(locationkey) async {
  final querypram = {'apikey': api, 'details': 'true'};
  final url = Uri.https(
      'http://dataservice.accuweather.com/currentconditions/v1/',
      locationkey,
      querypram);
  final result = await http.get(url);

  if (result.statusCode == 200) {
    print('passed');
    return result;
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
  final querypram = {'apikey': api, 'q': city};
  final url = Uri.https('http://dataservice.accuweather.com',
      'locations/v1/cities/search', querypram);
  final result = await http.get(url);

  if (result.statusCode == 200) {
    print('passed');
    return result;
  }
}
