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
        'Bearer BQA4oX1rzq3x5u5ZQ29EzT7r4slGUjwlm8IFrrnA1IfV4So-McJFsn1z84t5QvV0RIWqFFUELvQds02_ZUfJ3zIbs5FVxssj0-6CZsNsBLji7s05qaq93NbzMH-nw3Qvy3y9H7QIT26FNf4KHS4e9iSlnDMFceF_K9p88UoqttahotxDRjxEfnbJnICKrw9v40GPAqH7gl1KTBKkwKHj44gwwIoR-ZEElYi9cH9qOVdqcV98wB7-68sLTzZIar3BwmENsmjQ-QVSmrvrTu8l83QYWl93mtmrjS5Tu_0c',
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
        'Bearer BQA4oX1rzq3x5u5ZQ29EzT7r4slGUjwlm8IFrrnA1IfV4So-McJFsn1z84t5QvV0RIWqFFUELvQds02_ZUfJ3zIbs5FVxssj0-6CZsNsBLji7s05qaq93NbzMH-nw3Qvy3y9H7QIT26FNf4KHS4e9iSlnDMFceF_K9p88UoqttahotxDRjxEfnbJnICKrw9v40GPAqH7gl1KTBKkwKHj44gwwIoR-ZEElYi9cH9qOVdqcV98wB7-68sLTzZIar3BwmENsmjQ-QVSmrvrTu8l83QYWl93mtmrjS5Tu_0c',
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
        'Bearer BQA4oX1rzq3x5u5ZQ29EzT7r4slGUjwlm8IFrrnA1IfV4So-McJFsn1z84t5QvV0RIWqFFUELvQds02_ZUfJ3zIbs5FVxssj0-6CZsNsBLji7s05qaq93NbzMH-nw3Qvy3y9H7QIT26FNf4KHS4e9iSlnDMFceF_K9p88UoqttahotxDRjxEfnbJnICKrw9v40GPAqH7gl1KTBKkwKHj44gwwIoR-ZEElYi9cH9qOVdqcV98wB7-68sLTzZIar3BwmENsmjQ-QVSmrvrTu8l83QYWl93mtmrjS5Tu_0c',
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
