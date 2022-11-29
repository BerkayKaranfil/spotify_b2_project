import 'package:flutter/cupertino.dart';

import '../models/category_response.dart';
import '../services/api_services.dart';

class CategoryProvider extends ChangeNotifier {
  CategoriesModel categoriesList = CategoriesModel();
  bool categoryListLoaded = false;

  getCategory() async {
    categoryListLoaded = false;
    categoriesList = await getCategoryService();
    categoryListLoaded = true;
    notifyListeners();
  }
}
