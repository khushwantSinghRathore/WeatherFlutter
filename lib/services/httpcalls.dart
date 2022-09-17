import '../env/envprod.dart' as env;
import 'package:http/http.dart' as http;

const api = env.Apikey;

getcurrentweather(locationkey) async {
  final result = await http.get(
    Uri.parse('http://dataservice.accuweather.com/locations/v1/cities/search'),
  );

  if (result.statusCode == 200) {
    print('passed');
    return result;
  }
}

getforecast(locationkey) async {
  final result = await http.get(
    Uri.parse('http://dataservice.accuweather.com/locations/v1/cities/search'),
  );

  if (result.statusCode == 200) {
    print('passed');
    return result;
  }
}

getcitydata(city) async {
  final result = await http.get(
    Uri.parse('http://dataservice.accuweather.com/locations/v1/cities/search'),
  );

  if (result.statusCode == 200) {
    print('passed');
    return result;
  }
}
