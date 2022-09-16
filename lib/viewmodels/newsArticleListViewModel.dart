import 'package:flutter/foundation.dart';
import 'package:freshnews/models/newsArticle.dart';
import 'package:freshnews/services/webservice.dart';
import 'package:freshnews/viewmodels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  // NewsArticleListViewModel() {
  //   _populateTopHeadLines();
  // }

  List<NewsArticleViewModel> articles = [];

  void populateTopHeadLines() async {
    List<NewsArticle> newsArticles = await WEbService().fetchTopHeadLines();
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    notifyListeners();
  }

  void search(String keyword) async {
    List<NewsArticle> newsArticles =
        await WEbService().fetchTopHeadLinesByKeyword(keyword);
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    notifyListeners();
  }
}
