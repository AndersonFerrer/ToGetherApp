import 'dart:convert';

import 'package:http/http.dart' as http;

class ImageService {
  final String _baseURL = 'api.pexels.com';
  final String _apiKey =
      '563492ad6f9170000100000115da3a187f6146aca9406f06275d3aa3';

  Future getImageByName(String name) async {
    try {
      final url = Uri.https(_baseURL, '/v1/search', {'query': name});
      final response =
          await http.get(url, headers: {'Authorization': 'Bearer $_apiKey'});
      final List<dynamic> imagesList = json.decode(response.body)['photos'];

      return imagesList;
    } catch (e) {
      return null;
    }
  }
}
