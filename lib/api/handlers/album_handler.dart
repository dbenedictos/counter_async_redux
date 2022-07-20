import 'dart:convert';

import 'package:counter_async_redux/api/models/album_model.dart';
import 'package:counter_async_redux/utilities/constants.dart';
import 'package:http/http.dart' as http;

class AlbumHandler {
  static Future<AlbumModel?> getAlbum() async {
    var response = http.Response('', 100);

    try {
      response = await http.get(Uri.tryParse(albumURL) ?? Uri());
    } catch (e) {
      print(e);
    }

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AlbumModel.fromJson(data);
    } else {
      print("Can't get hatdog. Status Code: ${response.statusCode}");
      return null;
    }
  }
}
