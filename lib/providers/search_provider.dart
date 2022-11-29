import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/search_response.dart';
import 'package:spotify_b2_project/services/search_api_services.dart';

class SearchProvider extends ChangeNotifier{
  SearchModels searchList = SearchModels();
  String query = "Berkay Karanfil";

  getSearchData()async{
    searchList = (await getSearchDataService(query))!;
    notifyListeners();
  }
// querygirilen yerine daha anlaşılır olması için başka ifade de yazılabilir. //
  getQuery(String querygirilen){
    query = querygirilen;
    getSearchData();
    notifyListeners();
  }
}