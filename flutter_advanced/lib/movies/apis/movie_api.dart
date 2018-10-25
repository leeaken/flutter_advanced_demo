import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_advanced/movies/models/movie_mode.dart';

/// 网络请求数据
class MovieApi {

  static const String _apiKey = '802b2c4b88ea1183e50e6b285a27696e';
  static const String _baseUrl = 'api.themoviedb.org';
  final _httpClient = new HttpClient();
  
  Future<MovieResult> pagedList({String type: "movie", int pageIndex: 1}) async {
    var uri = Uri.https(
      _baseUrl,
      '3/discover/$type',
      <String, String>{
        'api_key': _apiKey,
        'language': 'en-US',
        'sort_by': 'popularity.desc',
        'include_adult': 'false',
        'include_video': 'false',
        'page': '$pageIndex',
      },
    );

    var response = await _getRequest(uri);
    MovieResult list = MovieResult.fromJSON(json.decode(response));
    await Future.delayed(const Duration(seconds: 1));

    return list;
  }


  // 处理url
  Future<String> _getRequest(Uri uri) async {
    var request = await _httpClient.getUrl(uri);
    var response = await request.close();

    return response.transform(utf8.decoder).join();
  }

}