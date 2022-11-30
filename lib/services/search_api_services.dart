import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/search_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  "Authorization":
      "Bearer BQBgZ4R1OUrjHQUe9nuStIsJ4SKCVgeKL406TqQYLcu8h39_396P80ircTISqnEWhM0EC5PDEVp8NGnsehWjAEYAZlYn2PwQdgnlMuZp7I8eUfvojQqeqpFbgZR-nlIWn01vw3fyaplkFLpoICmNjAF3Nb7sa6E7Wa5q1qJgX_JVyg-q6Tiyi6fiqedZ9xH2DWAMRmQqi95OambC_hzvEZ9itINf8T2TSmAe_CxeGDdmmyF85letSp5PI1tE9llYfgPk-mcHXVDP9pDveqTzoqTPt5gBsVGJkyiSDm_2"
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