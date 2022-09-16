import 'package:flutter/material.dart';

class CheckUrl extends StatelessWidget {
  String url;

  CheckUrl({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return Image.network(
        url,
        width: 70,
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Image.asset("lib/images/placeholder.webp"); //Text('😢');
        },
      );
    } catch (e) {
      return Text("img error");
    }
  }
}
