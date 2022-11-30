import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/album_inside_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  'Authorization':
      'Bearer BQBgZ4R1OUrjHQUe9nuStIsJ4SKCVgeKL406TqQYLcu8h39_396P80ircTISqnEWhM0EC5PDEVp8NGnsehWjAEYAZlYn2PwQdgnlMuZp7I8eUfvojQqeqpFbgZR-nlIWn01vw3fyaplkFLpoICmNjAF3Nb7sa6E7Wa5q1qJgX_JVyg-q6Tiyi6fiqedZ9xH2DWAMRmQqi95OambC_hzvEZ9itINf8T2TSmAe_CxeGDdmmyF85letSp5PI1tE9llYfgPk-mcHXVDP9pDveqTzoqTPt5gBsVGJkyiSDm_2',
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
