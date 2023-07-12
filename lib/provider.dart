import 'package:http/http.dart' as http;

String baseUrl =
    "https://sde-007.api.assignment.theinternetfolks.works/v1/event";

Future<String> getEvents() async {
  final response = await http.get(Uri.parse(baseUrl));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to fetch events!');
  }
}

Future<String> searchEvents(String searchText) async {
  final response = await http
      .get(Uri.parse(baseUrl).replace(queryParameters: {'search': searchText}));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to search events!');
  }
}

Future<String> getDetails(int id) async {
  final response = await http.get(Uri.parse('$baseUrl/$id'));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to fetch event details!');
  }
}
