import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/search_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  "Authorization":
      "Bearer BQBK4EM6AjXkOhW6wDRSVMgxwzkJmi3_57FuK9EMutQmDVYHeVbPDLf_gxR4m26yxiPefEFtdBUXMk4kHfD2x83rHY6kYPbkWJwmhW4DTcfDYsu8kQJKNG3DHQeyiwSVspbEw4msWvZgBRe70b_u1Ont1Ow0HtIVBhRTLy65Br2eY9icE3ujVpVfiMc9RJEtuxUKWQrrDVomL8EM-1MMBnWKRf5ClsVxB9vaqPOdbuzcG8eHyhQSqN3c6fZrUske_EqTpMJWFmBdvaNABWBVwrKF-JwdL2-rSTw_aqZD"
}));

Future<SearchModels?> getSearchDataService(String query) async {
  SearchModels searchlist = SearchModels();
  try {
    try {
      final response = await _dio.get(
          "search?q=$query&type=track%2Cartist&market=TR&limit=10&offset=5");

      searchlist = SearchModels.fromJson(response.data);
      print(searchlist.artists);
      if (response.statusCode == 200) {
        print("Veri geliyor.");
      } else {
        print("Veri gelmiyor.");
      }
      return searchlist;
    } catch (e) {
      print(e);
    }
  } catch (e) {
    log(e.toString());
  }
  return null;
}