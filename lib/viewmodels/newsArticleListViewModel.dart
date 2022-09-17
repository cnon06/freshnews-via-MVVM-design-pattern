import 'package:flutter/foundation.dart';
import 'package:freshnews/models/newsArticle.dart';
import 'package:freshnews/services/webservice.dart';
import 'package:freshnews/viewmodels/newsArticleViewModel.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class NewsArticleListViewModel extends ChangeNotifier {
  var loadingStatus = LoadingStatus.completed;

  List<NewsArticleViewModel> articles = [];

  void populateTopHeadLines() async {
    loadingStatus = LoadingStatus.searching;
    // notifyListeners();
    List<NewsArticle> newsArticles = await WEbService().fetchTopHeadLines();
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    articles.isEmpty
        ? loadingStatus = LoadingStatus.empty
        : loadingStatus = LoadingStatus.completed;
    notifyListeners();
  }

  void search(String keyword) async {
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    List<NewsArticle> newsArticles =
        await WEbService().fetchTopHeadLinesByKeyword(keyword);
    articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    articles.isEmpty
        ? loadingStatus = LoadingStatus.empty
        : loadingStatus = LoadingStatus.completed;

    notifyListeners();
  }
}
