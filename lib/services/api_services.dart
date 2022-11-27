import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/providers/profile_provider.dart';

import '../models/artics_albums_response.dart';
import '../models/category_response.dart';
import '../models/profile_public_playlist_response.dart';
import '../models/profile_response.dart';
import '../providers/category_provider.dart';


Future<CategoriesModel> getCategoryService() async {
  CategoriesModel? data;
  CategoryProvider? categoryProvider;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQDDJm36SNdvn0mJp3hXeVyQERvx4KJ9V7YXJBm39Bm6hq7CPCb0WSgKpjpSxzSz31bY1UlhnB1OeCPa1UZo_gfNyEl9-SC-v9OJbOlQaqRbxkmiTxpLl42ievBoHeG68rhbXJmdfmL0Umzb6lMfEJ_6NzMMwUij4gjZEAGsmYJf8cUQ8Yo2fsrFQWXODvSXuxNxzHWzmqm1DYfbGYbW8bgF5pFbqUwgqt9H88fUxY0YT_OKGy8yTpC4lnASrv2pfLqUfIjiSr1L_UoWh1OfwCW3OuugwU9DAZoaCddR',
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


Future<ProfileModel> getProfileService() async {
  ProfileModel? data1;
  ProfileProvider? profileProvider;

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQDDJm36SNdvn0mJp3hXeVyQERvx4KJ9V7YXJBm39Bm6hq7CPCb0WSgKpjpSxzSz31bY1UlhnB1OeCPa1UZo_gfNyEl9-SC-v9OJbOlQaqRbxkmiTxpLl42ievBoHeG68rhbXJmdfmL0Umzb6lMfEJ_6NzMMwUij4gjZEAGsmYJf8cUQ8Yo2fsrFQWXODvSXuxNxzHWzmqm1DYfbGYbW8bgF5pFbqUwgqt9H88fUxY0YT_OKGy8yTpC4lnASrv2pfLqUfIjiSr1L_UoWh1OfwCW3OuugwU9DAZoaCddR',
  };

  var url = Uri.parse('https://api.spotify.com/v1/me');
  var res = await http.get(url, headers: headers);
  // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data1 = ProfileModel.fromJson(jsonDecode(res.body));
}

// Public Playlist //


Future<PublicPlaylistModel> getPublicPlaylistService() async {
  PublicPlaylistModel? data2;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQDDJm36SNdvn0mJp3hXeVyQERvx4KJ9V7YXJBm39Bm6hq7CPCb0WSgKpjpSxzSz31bY1UlhnB1OeCPa1UZo_gfNyEl9-SC-v9OJbOlQaqRbxkmiTxpLl42ievBoHeG68rhbXJmdfmL0Umzb6lMfEJ_6NzMMwUij4gjZEAGsmYJf8cUQ8Yo2fsrFQWXODvSXuxNxzHWzmqm1DYfbGYbW8bgF5pFbqUwgqt9H88fUxY0YT_OKGy8yTpC4lnASrv2pfLqUfIjiSr1L_UoWh1OfwCW3OuugwU9DAZoaCddR',
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



//    ArticsAlbulModel    //




  Future<ArticsAlbumsModel> getAlbumsService() async {
    ArticsAlbumsModel? data3;
    var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'BQDDJm36SNdvn0mJp3hXeVyQERvx4KJ9V7YXJBm39Bm6hq7CPCb0WSgKpjpSxzSz31bY1UlhnB1OeCPa1UZo_gfNyEl9-SC-v9OJbOlQaqRbxkmiTxpLl42ievBoHeG68rhbXJmdfmL0Umzb6lMfEJ_6NzMMwUij4gjZEAGsmYJf8cUQ8Yo2fsrFQWXODvSXuxNxzHWzmqm1DYfbGYbW8bgF5pFbqUwgqt9H88fUxY0YT_OKGy8yTpC4lnASrv2pfLqUfIjiSr1L_UoWh1OfwCW3OuugwU9DAZoaCddR',
  };

 /*  var params = {
    'market': 'TR',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&'); */

  var url = Uri.parse('https://api.spotify.com/v1/artists/6qqNVTkY8uBg9cP3Jd7DAH/top-tracks? ');
   
  var res = await http.get(url, headers: headers);
 // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
 // print(res.body);
 return data3 = ArticsAlbumsModel.fromJson(jsonDecode(res.body));
  }
  
  


