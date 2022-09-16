import 'package:flutter/material.dart';
import 'package:freshnews/pages/newsListPage.dart';

import 'package:freshnews/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fresh News",
     
     home: ChangeNotifierProvider(
      create: (context) => NewsArticleListViewModel(),
      child: NewsListPage()
      )
     
    

    );
  }
}
