import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/search_response.dart';
import 'package:spotify_b2_project/services/search_api_services.dart';

class SearchProvider extends ChangeNotifier{
  SearchModels searchList = SearchModels();
  String query = "Berkay";

  getSearchData()async{
    searchList = (await getSearchDataService(query))!;
    notifyListeners();
  }

  getQuery(String querygirilen){
    query = querygirilen;
    getSearchData();
    notifyListeners();
  }
}