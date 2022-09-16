import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/newsArticleListViewModel.dart';
import '../viewmodels/newsArticleViewModel.dart';

class NewsList extends StatelessWidget {
  final List<NewsArticleViewModel> articles;

  const NewsList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final vm = Provider.of<NewsArticleListViewModel>(context);
    return Flexible(
      child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = vm.articles[index];
            
            return ListTile(
              leading: CachedNetworkImage(
                width: 70,
                imageUrl: article.imageURL ,//article.imageURL,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              title: Text(article.title),
            );
          }),
    );
  }
}
