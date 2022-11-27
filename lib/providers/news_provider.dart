import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/news_response.dart';

import '../services/api_services.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel newsList = NewsModel();

  getNews()async{
    newsList = await getNewsService();
    notifyListeners();
  }
}