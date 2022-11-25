import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/providers/profile_provider.dart';

import '../models/category_response.dart';
import '../models/profile_response.dart';
import '../providers/category_provider.dart';

//void main() async {
  Future<CategoriesModel> getCategoryService() async {
  CategoriesModel? data;
  CategoryProvider? categoryProvider;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQAlBfizH6bCDw-5ofG5vhi2tnOF7WYoOsxIWjuhojY29eOSXxPB-olYtUEh-iTxf9Wpkq6OCkodx6eL4o4ZyRyYKyGULiepEDqRID17hfTQ8LCuNYqU-cPE9xF_WsL6ItgYP2F1HfxdR0u9rlPgunBgl5MsY9h1imRMqrUPPoI8ZREoW8AV22e_Hm7WcCRLDKhYKNa_M8lAXKJGIjfsAUEthD0knLxASRpwJefoaP5YlPF-VL7QQdk-HlPFrfqzoMhq3Rq8neXyM2yD701CU7Br1-f4tA-2HajsmELL',
  };

  /* var params = {
    'country': 'TR',
    'locale': 'tr_TR',
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&'); */

  var url = Uri.parse('https://api.spotify.com/v1/browse/categories');
  var res = await http.get(url, headers: headers);
 // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data = CategoriesModel.fromJson(jsonDecode(res.body));
  
}





//void main() async {
  Future<ProfileModel> getProfileService() async {
     ProfileModel? data1;
     ProfileProvider? profileProvider;

var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQAlBfizH6bCDw-5ofG5vhi2tnOF7WYoOsxIWjuhojY29eOSXxPB-olYtUEh-iTxf9Wpkq6OCkodx6eL4o4ZyRyYKyGULiepEDqRID17hfTQ8LCuNYqU-cPE9xF_WsL6ItgYP2F1HfxdR0u9rlPgunBgl5MsY9h1imRMqrUPPoI8ZREoW8AV22e_Hm7WcCRLDKhYKNa_M8lAXKJGIjfsAUEthD0knLxASRpwJefoaP5YlPF-VL7QQdk-HlPFrfqzoMhq3Rq8neXyM2yD701CU7Br1-f4tA-2HajsmELL',
  };

  var url = Uri.parse('https://api.spotify.com/v1/me');
  var res = await http.get(url, headers: headers);
 // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data1 = ProfileModel.fromJson(jsonDecode(res.body));
  }
  





