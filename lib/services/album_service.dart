import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/models/albums_response.dart';


Future<AlbumModel> getSingerAlbumService() async {
  AlbumModel? data7;
  
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQDgG0hYMZuHjlPj6f0Tgf6LpdK-B2IzjGhCd4S51tzOLzI88fekOMK28Xw5aYnu97_6Mm717Njq_p3_1nZ3WUmxk_FPK_-Iu_EgwMcAXqDM4iKf-DBIdzfACG-3_oqLrjvp45Wqpz1Mix2UfH_i2GyV5JilSGmMehLlgSGh4wXgPNMrlWSXfYlA2AFuccr-sDDX-H7emhnHV1X8PU9MmpgI9seUzgNlvVtIsSagOjoDOVRZLERxIZ_w-Ok3xKLCdCnGkm_dRtGIaOCBnpqg5xlwxh_XOKGvdkhCpSUa',
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