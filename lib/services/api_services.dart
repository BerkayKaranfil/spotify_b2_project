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
        'Bearer BQDAW9KVcuiZaO5em1BngthJYVh_uJRwol2lPLw_fwiKqO01yHAG5ULYRR4nJwehNVUsv5E6QBe_u_S35dtvC12r3Fzt0HRzD_1NvMzDWC6kg2vdTiV7rUP158aQs4f590_j8U10g7uT5M5pYakKEDWEx23oyX6zN7yHd42JucXMhhF6rl5ybXHoigvQCtPDkXRUDNrdDAHwCADSmffXWk0UGutGZepTYFTEx_SdUi3kNk44IhzYKN4tsVDMtYbPdAkW85PN8hCe7aHMImbtv-whkloja-9Y517h3j6t',
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
        'Bearer BQDAW9KVcuiZaO5em1BngthJYVh_uJRwol2lPLw_fwiKqO01yHAG5ULYRR4nJwehNVUsv5E6QBe_u_S35dtvC12r3Fzt0HRzD_1NvMzDWC6kg2vdTiV7rUP158aQs4f590_j8U10g7uT5M5pYakKEDWEx23oyX6zN7yHd42JucXMhhF6rl5ybXHoigvQCtPDkXRUDNrdDAHwCADSmffXWk0UGutGZepTYFTEx_SdUi3kNk44IhzYKN4tsVDMtYbPdAkW85PN8hCe7aHMImbtv-whkloja-9Y517h3j6t',
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
        'Bearer BQDAW9KVcuiZaO5em1BngthJYVh_uJRwol2lPLw_fwiKqO01yHAG5ULYRR4nJwehNVUsv5E6QBe_u_S35dtvC12r3Fzt0HRzD_1NvMzDWC6kg2vdTiV7rUP158aQs4f590_j8U10g7uT5M5pYakKEDWEx23oyX6zN7yHd42JucXMhhF6rl5ybXHoigvQCtPDkXRUDNrdDAHwCADSmffXWk0UGutGZepTYFTEx_SdUi3kNk44IhzYKN4tsVDMtYbPdAkW85PN8hCe7aHMImbtv-whkloja-9Y517h3j6t',
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
