import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/models/albums_response.dart';


Future<AlbumModel> getSingerAlbumService() async {
  AlbumModel? data7;
  
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'BQBgZ4R1OUrjHQUe9nuStIsJ4SKCVgeKL406TqQYLcu8h39_396P80ircTISqnEWhM0EC5PDEVp8NGnsehWjAEYAZlYn2PwQdgnlMuZp7I8eUfvojQqeqpFbgZR-nlIWn01vw3fyaplkFLpoICmNjAF3Nb7sa6E7Wa5q1qJgX_JVyg-q6Tiyi6fiqedZ9xH2DWAMRmQqi95OambC_hzvEZ9itINf8T2TSmAe_CxeGDdmmyF85letSp5PI1tE9llYfgPk-mcHXVDP9pDveqTzoqTPt5gBsVGJkyiSDm_2',
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