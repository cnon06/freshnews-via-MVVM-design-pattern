import 'package:freshnews/models/newsArticle.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;

  NewsArticleViewModel({required NewsArticle article}) : _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description!;
  }

  String get imageURL {
    return  _newsArticle.urlToImage ?? "https://en.wikipedia.org/wiki/Elizabeth_II#/media/File:Queen_Elizabeth_II_in_March_2015.jpg";
  }

  String get url {
    return _newsArticle.url;
  }
}
