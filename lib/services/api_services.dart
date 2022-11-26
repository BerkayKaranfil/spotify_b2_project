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
        'Bearer BQDUFr6aVcHdAZ0ffVM2flymhjT_ZvoT66wYubRaJ7I9aNcx9hm7Y_Z9JhwCB7YMHI_hKFxK2Ha0zo2lKfNyO4jLpD0NNSUsJ0kvkEPjSNLGOJ5zOBAYEhQQHHEtb1lqU16_shW5daKLrQcR4gvZVCGh54Pp4wD32aoc9_4rpW2jUkG4Bly6r4la1RGoOKjz7XKHby0NEZdF3eS_DgICjwppDVS1Mb7srMQv_lpsgzQfF5I_qeMPE1pInJRb7aYHgcFYpCge89Q-jqyeUVSYkxlAl3fKkbi-1moePs5J',
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
        'Bearer BQDUFr6aVcHdAZ0ffVM2flymhjT_ZvoT66wYubRaJ7I9aNcx9hm7Y_Z9JhwCB7YMHI_hKFxK2Ha0zo2lKfNyO4jLpD0NNSUsJ0kvkEPjSNLGOJ5zOBAYEhQQHHEtb1lqU16_shW5daKLrQcR4gvZVCGh54Pp4wD32aoc9_4rpW2jUkG4Bly6r4la1RGoOKjz7XKHby0NEZdF3eS_DgICjwppDVS1Mb7srMQv_lpsgzQfF5I_qeMPE1pInJRb7aYHgcFYpCge89Q-jqyeUVSYkxlAl3fKkbi-1moePs5J',
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
        'Bearer BQDUFr6aVcHdAZ0ffVM2flymhjT_ZvoT66wYubRaJ7I9aNcx9hm7Y_Z9JhwCB7YMHI_hKFxK2Ha0zo2lKfNyO4jLpD0NNSUsJ0kvkEPjSNLGOJ5zOBAYEhQQHHEtb1lqU16_shW5daKLrQcR4gvZVCGh54Pp4wD32aoc9_4rpW2jUkG4Bly6r4la1RGoOKjz7XKHby0NEZdF3eS_DgICjwppDVS1Mb7srMQv_lpsgzQfF5I_qeMPE1pInJRb7aYHgcFYpCge89Q-jqyeUVSYkxlAl3fKkbi-1moePs5J',
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
