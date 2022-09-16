import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freshnews/utils/checkurl.dart';

import 'package:freshnews/viewmodels/newsArticleListViewModel.dart';
import 'package:freshnews/viewmodels/newsArticleViewModel.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as htTp;

import '../widgets/newslist.dart';

class NewsListPage extends StatefulWidget {
  @override
  State<NewsListPage> createState() => _NewsListPage();
}

class _NewsListPage extends State<NewsListPage> {
  final _controller = TextEditingController();

  @override
  void initState() {
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadLines();
    // TODO: implement initState
    super.initState();
  }

  // var _newsArticleListViewModel = NewsArticleListViewModel();
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Top News"),
      ),

      body: Column(
        children: [
          TextField(
            controller: _controller,
            // onSubmitted: (value) {
            //   vm.search(value);
            // },
            onChanged: (value) 
            {
              vm.search(value);
            },
            decoration: InputDecoration(
              labelText: "Enter search here",
              icon: const Padding(
                  padding: EdgeInsets.all(8.0), child: Icon(Icons.search)),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                },
              ),
            ),
          ),
         // vm.articles.isEmpty ? const Text("No results found.") : NewsList(articles: vm.articles) ,
           NewsList(articles: vm.articles) ,
        ],
      ),

      // body: ListView.builder(
      //     itemCount: vm.articles.length,
      //     itemBuilder: (context, index) {
      //       final article = vm.articles[index];

      //       return ListTile(
      //         leading:

      //             CachedNetworkImage(
      //               width: 70,

      //             imageUrl: article.imageURL,
      //             placeholder: (context, url) => CircularProgressIndicator(),
      //             errorWidget: (context, url, error) => Icon(Icons.error),
      //             ),

      //         title: Text(vm.articles[index].title),
      //       );
      //     })

      // const Text("Hello World."),
    );
  }
}
