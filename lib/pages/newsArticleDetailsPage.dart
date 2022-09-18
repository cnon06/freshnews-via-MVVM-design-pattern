import 'package:flutter/material.dart';
import 'package:freshnews/viewmodels/newsArticleViewModel.dart';

class NewsArticleDetailsPage extends StatelessWidget {
  final NewsArticleViewModel article;

  const NewsArticleDetailsPage({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(article.title),),


    );

    //Container(child: const Text("hi"),);
  }
}
