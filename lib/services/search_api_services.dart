import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/search_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  "Authorization":
      "Bearer BQC0MJQ-bZO2ecgT6Kavu6yNdBgsCx_ZwoW7ayxDHox31VmwvA_nL2EnJDhsRDz_wWvLcIJ7QauCsisudxJlYdBJSx1X80vwjn3WmQRH1qTmQI2bhNFPFYvhaBtSNy1dcoSOuRauNYgIseFivJThlH9LVrZl3x_HJGL-pF-0XjpjiN7hQvr3pX0rQLK648MXWSmC1jCFl0FHn5Nc2neRgVKafn_jvT73WxdMm0ED2KBSuD7XqaqDVZFuwqoUi39Sf6SZGFuvLSBa0PqPpQ2yfzQYK39e1bvjBQfcG1oQ"
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