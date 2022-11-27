import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/providers/profile_provider.dart';

import '../models/artics_albums_response.dart';
import '../models/category_response.dart';
import '../models/news_response.dart';
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
        'Bearer BQAXtg0u3ZzNejBmNUoGI2rO_CbTaqJSr15xsaQvYUPjcoYySwWhzAFkUcGFZLQe0R7dpWTvELofaayoXRNQeR8RWCNf09xorsN2XcO95HaXLLfoHkFndllaHHWxvRPiFI8CMIcXNa9WgOR4vsOI9trW8n6meit-W7g7vYiRJawnGdidaKNTveirNXsC85dksqEpTS4mxLE6cS1wMDo1WOw9WB52CHp6tk-W7Z037p7_KbEQMZapKGl1j9giI9va3DdT7e--rZpMLAVuIJxgX6JIPqoA28T3grR_uvPW',
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
        'Bearer BQAXtg0u3ZzNejBmNUoGI2rO_CbTaqJSr15xsaQvYUPjcoYySwWhzAFkUcGFZLQe0R7dpWTvELofaayoXRNQeR8RWCNf09xorsN2XcO95HaXLLfoHkFndllaHHWxvRPiFI8CMIcXNa9WgOR4vsOI9trW8n6meit-W7g7vYiRJawnGdidaKNTveirNXsC85dksqEpTS4mxLE6cS1wMDo1WOw9WB52CHp6tk-W7Z037p7_KbEQMZapKGl1j9giI9va3DdT7e--rZpMLAVuIJxgX6JIPqoA28T3grR_uvPW',
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
        'Bearer BQAXtg0u3ZzNejBmNUoGI2rO_CbTaqJSr15xsaQvYUPjcoYySwWhzAFkUcGFZLQe0R7dpWTvELofaayoXRNQeR8RWCNf09xorsN2XcO95HaXLLfoHkFndllaHHWxvRPiFI8CMIcXNa9WgOR4vsOI9trW8n6meit-W7g7vYiRJawnGdidaKNTveirNXsC85dksqEpTS4mxLE6cS1wMDo1WOw9WB52CHp6tk-W7Z037p7_KbEQMZapKGl1j9giI9va3DdT7e--rZpMLAVuIJxgX6JIPqoA28T3grR_uvPW',
  };

  /*  var params = {
    'market': 'TR',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&'); */

  var url =
      Uri.parse('https://api.spotify.com/v1/playlists/18B0AF3fSq4ySyvd67BL2t?');
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
    'Authorization':
        'Bearer BQAXtg0u3ZzNejBmNUoGI2rO_CbTaqJSr15xsaQvYUPjcoYySwWhzAFkUcGFZLQe0R7dpWTvELofaayoXRNQeR8RWCNf09xorsN2XcO95HaXLLfoHkFndllaHHWxvRPiFI8CMIcXNa9WgOR4vsOI9trW8n6meit-W7g7vYiRJawnGdidaKNTveirNXsC85dksqEpTS4mxLE6cS1wMDo1WOw9WB52CHp6tk-W7Z037p7_KbEQMZapKGl1j9giI9va3DdT7e--rZpMLAVuIJxgX6JIPqoA28T3grR_uvPW',
  };

  var params = {
    'market': 'TR',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse(
      'https://api.spotify.com/v1/artists/26VFTg2z8YR0cCuwLzESi2/top-tracks?$query');
  var res = await http.get(url, headers: headers);

  return data3 = ArticsAlbumsModel.fromJson(jsonDecode(res.body));
}

//    NewsModel    //

Future<NewsModel> getNewsService() async {
  NewsModel? data4;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer BQAXtg0u3ZzNejBmNUoGI2rO_CbTaqJSr15xsaQvYUPjcoYySwWhzAFkUcGFZLQe0R7dpWTvELofaayoXRNQeR8RWCNf09xorsN2XcO95HaXLLfoHkFndllaHHWxvRPiFI8CMIcXNa9WgOR4vsOI9trW8n6meit-W7g7vYiRJawnGdidaKNTveirNXsC85dksqEpTS4mxLE6cS1wMDo1WOw9WB52CHp6tk-W7Z037p7_KbEQMZapKGl1j9giI9va3DdT7e--rZpMLAVuIJxgX6JIPqoA28T3grR_uvPW',
  };

  var params = {
    'market': 'TR',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse(
      'https://api.spotify.com/v1/artists/6M2wZ9GZgrQXHCFfjv46we/top-tracks?$query');
  var res = await http.get(url, headers: headers);

  return data4 = NewsModel.fromJson(jsonDecode(res.body));
}
