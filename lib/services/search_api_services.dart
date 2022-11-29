import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/search_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  "Authorization":
      "Bearer BQC2IOgSXuMlsa4D3HDPAivSSQmoUqVxyP0FmWz8kY4EDKqtS9SG6fbOBqbXUrvenKlw4tfeB66zRm3K0DaiuXFP4l_xMp9ZanlxrGOXv6H7XcDi6RGGi8JzWVWss_TB1TBA28aobSBQ-boCTBYMvEVGn2jjW2CTc6D67a622dHuk_NmoRGTjd6wHxKKi60rup1XlBDzebbogdEYruliFv_dt4oLY-dX5iLWF3wLR2pt5d2-6lBrRZpUBnRVUbK4I4sma51lpVeReapRyWmZAZaEdmzS7IOpocwBeRHr"
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