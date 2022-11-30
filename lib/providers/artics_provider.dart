import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/artics_albums_response.dart';
import 'package:spotify_b2_project/services/api_services.dart';

class ArticsProvider extends ChangeNotifier {
  ArticsAlbumsModel articsAlbumList = ArticsAlbumsModel();
  bool categoryListLoaded = false;

  getAlbumsPlaylist() async {
    categoryListLoaded = false;
    articsAlbumList = await getAlbumsService();
    categoryListLoaded = true;
    notifyListeners();
  }
}
