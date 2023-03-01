import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';
import 'infra_releases/infra_releases.dart';

Future<InfraReleases> fetchReleases(String platform) async {
  final response =
      await http.get(Uri.parse('$flutterInfraReleaseUrl$platform.json'));
  if (response.statusCode == 200) {
    return InfraReleases.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load releases');
  }
}
