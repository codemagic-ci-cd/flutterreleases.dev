import 'dart:convert';

import 'package:flutter_releases/flutter_infra_releases/flutter_infra_releases.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

Future<FlutterInfraReleases?> fetchReleases(String platform) async {
  final response =
      await http.get(Uri.parse('$infraReleaseBaseUrl$platform.json'));
  if (response.statusCode == 200) {
    return FlutterInfraReleases.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load releases');
  }
}
