import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/album_inside_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  'Authorization':
      'Bearer BQC0MJQ-bZO2ecgT6Kavu6yNdBgsCx_ZwoW7ayxDHox31VmwvA_nL2EnJDhsRDz_wWvLcIJ7QauCsisudxJlYdBJSx1X80vwjn3WmQRH1qTmQI2bhNFPFYvhaBtSNy1dcoSOuRauNYgIseFivJThlH9LVrZl3x_HJGL-pF-0XjpjiN7hQvr3pX0rQLK648MXWSmC1jCFl0FHn5Nc2neRgVKafn_jvT73WxdMm0ED2KBSuD7XqaqDVZFuwqoUi39Sf6SZGFuvLSBa0PqPpQ2yfzQYK39e1bvjBQfcG1oQ',
}));

Future<AlbumInsideModel?>getAlbumDataService(dynamic id)async{
  AlbumInsideModel albumInsideList = AlbumInsideModel();
  // Album id: 26VFTg2z8YR0cCuwLzESi2
  final response = await _dio.get(
    "artists/$id/albums?"
  );
   albumInsideList = AlbumInsideModel.fromJson(jsonDecode(response.data));
   return albumInsideList;
}





/* void main() async {
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQDgG0hYMZuHjlPj6f0Tgf6LpdK-B2IzjGhCd4S51tzOLzI88fekOMK28Xw5aYnu97_6Mm717Njq_p3_1nZ3WUmxk_FPK_-Iu_EgwMcAXqDM4iKf-DBIdzfACG-3_oqLrjvp45Wqpz1Mix2UfH_i2GyV5JilSGmMehLlgSGh4wXgPNMrlWSXfYlA2AFuccr-sDDX-H7emhnHV1X8PU9MmpgI9seUzgNlvVtIsSagOjoDOVRZLERxIZ_w-Ok3xKLCdCnGkm_dRtGIaOCBnpqg5xlwxh_XOKGvdkhCpSUa',
  };

  var params = {
    'market': 'TR',
    'limit': '15',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse(
      'https://api.spotify.com/v1/artists/26VFTg2z8YR0cCuwLzESi2/albums?$query');
  var res = await http.get(url, headers: headers);
  if (res.statusCode != 200)
    throw Exception('http.get error: statusCode= ${res.statusCode}');
  print(res.body);
} */
