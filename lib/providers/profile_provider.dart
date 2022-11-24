import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/profile_response.dart';

import '../services/api_services.dart';

class ProfileProvider extends ChangeNotifier{
 ProfileModel profileList = ProfileModel();
 bool categoryListLoaded = false;


  getProfile() async {
    categoryListLoaded = false;
    profileList = await getProfileService();
    categoryListLoaded = true;

    notifyListeners();
  }
}