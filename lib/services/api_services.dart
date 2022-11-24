import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_b2_project/providers/profile_provider.dart';

import '../models/category_response.dart';
import '../models/profile_response.dart';
import '../providers/category_provider.dart';

//void main() async {
  Future<CategoriesModel> getCategoryService() async {
  CategoriesModel? data;
  CategoryProvider? categoryProvider;
  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQBGHGQvkRb5TvzfkwVhclnuCNqM9gjh0oPGQiB7W0NQuDMJpdLdC2ZCuY1Eh3a7lLAcWBoQoKnBvvLQo9G_eTHFRgah8A8_YkhYdExIZMMwXarqeQmCrhmpDz1S4Lk4KyZarYjUyt1EW7nFJmCyI41a-eAZ8I5AZYkXX9nLUbQz69PbVos7CiHZIp9ehgOG8-2dPlyFWR8_cdKbQXHAClkSpuOnwDw8DuX7Ex3a_K7o5RjW0zFhrhhkC9QyUpC4JDLxC7F_oZyA4v-WVH2C-exAApqYBKpooILzK6dN',
  };

  /* var params = {
    'country': 'TR',
    'locale': 'tr_TR',
    'limit': '10',
    'offset': '5',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&'); */

  var url = Uri.parse('https://api.spotify.com/v1/browse/categories');
  var res = await http.get(url, headers: headers);
 // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data = CategoriesModel.fromJson(jsonDecode(res.body));
  
}





//void main() async {
  Future<ProfileModel> getProfileService() async {
     ProfileModel? data1;
     ProfileProvider? profileProvider;

var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQCa2j01pO_Nbiq4IgrMoERRAyxHyFt_qAkQc-iq_yBLP7umULvmoXJZ2EOb-JNs9MtDNuVAMYXM26hR6rtXwPOLJP7UDfJ8FzRkEhorqlcviEU7EzdcaFMScMZPJV_UTzH66IqYwutW4CqCS6g3gAT3lpKwzgiiYtnnmuvb4GVlHGhhU45mJbFhbRnIVjtGLIxsIa3pVJGM6wUJur2EF_LtiG1vEf2W7VlkbAfTt2vF72AfaUvizxyoE7AoEWaitp_VFlwioAbPp9efyCP4c_WMx8rD06KaBaN8L5nK2mH6ub43D-8ViXAZwa2ZRsCrs-kuZw',
  };

  var url = Uri.parse('https://api.spotify.com/v1/me');
  var res = await http.get(url, headers: headers);
 // if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  //print(res.body);
  return data1 = ProfileModel.fromJson(jsonDecode(res.body));
  }
  





