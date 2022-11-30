import 'package:flutter/material.dart';

import '../models/album_inside_response.dart';
import '../models/albums_response.dart';
import '../services/albums_inside_service.dart';

class AlbumsInsideProvider extends ChangeNotifier {
  AlbumInsideModel albumInsideList = AlbumInsideModel();
  dynamic id = "Albumlerin id'leri";

  getAlbumData() async {
    albumInsideList = (await getAlbumDataService(id))!;
    notifyListeners();
  }

  getId(dynamic girilenId){
    id = girilenId;
    getAlbumData();
    notifyListeners();

  }
}