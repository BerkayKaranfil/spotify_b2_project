import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/news_response.dart';

import '../services/api_services.dart';

class NewsProvider extends ChangeNotifier {
  NewsModel newsList = NewsModel();
  bool newsListLoaded = false;

  getNews() async {
    newsListLoaded = false;
    newsList = await getNewsService();
    newsListLoaded = false;
    notifyListeners();
  }
}
