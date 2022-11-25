import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/providers/profile_provider.dart';

import '../models/category_response.dart';
import '../models/profile_public_playlist_response.dart';
import '../models/profile_response.dart';
import '../providers/category_provider.dart';

//void main() async {
Future<CategoriesModel> getCategoryService() async {
  CategoriesModel? data;
  CategoryProvider? categoryProvider;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQB59ZA1UOKtCtJVg1hFueKyN9oLWvjq34l67TWlRJL2knXWS2d04Tzh_jU_CdPqxKlR-fyXMk7fAieC2Q34JyouR7l7Ol1gQbZn5eicz6jIq-Y01-fgB5AzfoYVjhckQt2dNVNihsbokuyNc508m-bCEM73SDlPJXcAo5hFGVmLnN73KkkF-mws3K8HKUTkw2DtruEs4fKN5D1r4j_4Bb3qP58KKLcyZQT5SYSv47yRHsZwLy7y2J9kpSmEAVGh25ncwppp-0kwvy9gnTh3faXaT90Xsld35V8dy9m0U-miU_F-BW_lKv49MMW5S3iuIeFYhA',
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
    'Authorization':
        'Bearer BQB59ZA1UOKtCtJVg1hFueKyN9oLWvjq34l67TWlRJL2knXWS2d04Tzh_jU_CdPqxKlR-fyXMk7fAieC2Q34JyouR7l7Ol1gQbZn5eicz6jIq-Y01-fgB5AzfoYVjhckQt2dNVNihsbokuyNc508m-bCEM73SDlPJXcAo5hFGVmLnN73KkkF-mws3K8HKUTkw2DtruEs4fKN5D1r4j_4Bb3qP58KKLcyZQT5SYSv47yRHsZwLy7y2J9kpSmEAVGh25ncwppp-0kwvy9gnTh3faXaT90Xsld35V8dy9m0U-miU_F-BW_lKv49MMW5S3iuIeFYhA',
  };

  var url = Uri.parse('https://api.spotify.com/v1/me');
  var res = await http.get(url, headers: headers);
  // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data1 = ProfileModel.fromJson(jsonDecode(res.body));
}

// Public Playlist //

//void main() async {
Future<PublicPlaylistModel> getPublicPlaylistService() async {
  PublicPlaylistModel? data2;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQB59ZA1UOKtCtJVg1hFueKyN9oLWvjq34l67TWlRJL2knXWS2d04Tzh_jU_CdPqxKlR-fyXMk7fAieC2Q34JyouR7l7Ol1gQbZn5eicz6jIq-Y01-fgB5AzfoYVjhckQt2dNVNihsbokuyNc508m-bCEM73SDlPJXcAo5hFGVmLnN73KkkF-mws3K8HKUTkw2DtruEs4fKN5D1r4j_4Bb3qP58KKLcyZQT5SYSv47yRHsZwLy7y2J9kpSmEAVGh25ncwppp-0kwvy9gnTh3faXaT90Xsld35V8dy9m0U-miU_F-BW_lKv49MMW5S3iuIeFYhA',
  };

  /*  var params = {
    'market': 'TR',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&'); */

  var url = Uri.parse(
      'https://api.spotify.com/v1/playlists/18B0AF3fSq4ySyvd67BL2t?');
  var res = await http.get(url, headers: headers);
  // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  // print(res.body);
  return data2 = PublicPlaylistModel.fromJson(jsonDecode(res.body));
}
