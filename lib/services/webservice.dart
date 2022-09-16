import 'dart:convert';

import 'package:freshnews/utils/constants.dart';
import 'package:http/http.dart' as htTp;

import '../models/newsArticle.dart';

class WEbService {
  Future<List<NewsArticle>> fetchTopHeadLines() async {
    // String url =
    //     "https://newsapi.org/v2/top-headlines?country=us&apiKey=36a4a9085ade49afa5f6578a6ad66164";

    final response = await htTp.get(Uri.parse(Constants.TOP_HEADLINES_URL));




    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];

      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
     // print("gfgghg");
        throw Exception("Failed to get top news");
    }
  }

  Future<List<NewsArticle>> fetchTopHeadLinesByKeyword(String keyword) async {
    // String url =
    //     "https://newsapi.org/v2/everything?q=bitcoin&apiKey=36a4a9085ade49afa5f6578a6ad66164";

    final response = await htTp.get(Uri.parse(Constants.headLinesFor(keyword)));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];

      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Failed to get top news");
    }
  }
}
