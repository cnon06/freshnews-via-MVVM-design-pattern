import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fresh News",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latest News"),
        ),
        body: const Text("Latest News will be displayed here."),
      ),
      


    );
  }
}
