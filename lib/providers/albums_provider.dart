import 'package:flutter/cupertino.dart';
import 'package:spotify_b2_project/models/albums_response.dart';

import '../services/album_service.dart';

class AlbumsProvider extends ChangeNotifier {
  AlbumModel albumList = AlbumModel();

  getSingerAlbumPlaylist() async {
    albumList = await getSingerAlbumService();
    notifyListeners();
  }
}
