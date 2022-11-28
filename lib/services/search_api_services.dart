import 'dart:developer';
import 'package:dio/dio.dart';

import '../models/search_response.dart';


final Dio _dio =
    Dio(BaseOptions(baseUrl: "https://api.spotify.com/v1/", headers: {
  "Authorization":
      "Bearer BQCqh-sY7SsojnSsSANaCxrPsEiwm33vukjH8aZ0A6WI2JzjKntlpPSoea5pbwNF_kRX5haXAZaE__WAyxcdMC6YERO_QaeeUjgBK8r9dyaQqTXxN0jW_NPr0WjV21jiPw29znAG68_bBbQUl7gUdW4WOVEC5zInKg0nktMVaYbWGBj7ZphNvbRkQIKCn8Fmh6PqNn99fpK2Y2Kze0SFnuu0eX_4BELy84G1HRiOJu7K0WYWVHrrtuDnokw6c5tKZZIxk7xdD2gFHrI-ED1ZlPhF8cj_MY5jfAojGKcq"
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