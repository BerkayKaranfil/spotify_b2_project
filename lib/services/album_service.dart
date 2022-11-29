import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/models/albums_response.dart';


Future<AlbumModel> getSingerAlbumService() async {
  AlbumModel? data7;
  
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'BQC0MJQ-bZO2ecgT6Kavu6yNdBgsCx_ZwoW7ayxDHox31VmwvA_nL2EnJDhsRDz_wWvLcIJ7QauCsisudxJlYdBJSx1X80vwjn3WmQRH1qTmQI2bhNFPFYvhaBtSNy1dcoSOuRauNYgIseFivJThlH9LVrZl3x_HJGL-pF-0XjpjiN7hQvr3pX0rQLK648MXWSmC1jCFl0FHn5Nc2neRgVKafn_jvT73WxdMm0ED2KBSuD7XqaqDVZFuwqoUi39Sf6SZGFuvLSBa0PqPpQ2yfzQYK39e1bvjBQfcG1oQ',
  };

   /* var params = {
    'market': 'TR',
    'limit': '15',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');  */

  var url = Uri.parse('https://api.spotify.com/v1/artists/26VFTg2z8YR0cCuwLzESi2/albums?');
  var res = await http.get(url, headers: headers);
  /* if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  print(res.body); */
  return data7 = AlbumModel.fromJson(jsonDecode(res.body));
}