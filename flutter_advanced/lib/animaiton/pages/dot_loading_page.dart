import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_advanced/animaiton/views/dot_loading_view.dart';

class DotLoadingPage extends StatefulWidget {
  @override
  _DotLoadingPageState createState() => _DotLoadingPageState();
}

class _DotLoadingPageState extends State<DotLoadingPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Dot Loading")),
        body: Center(
          child: DotLoadingView(
              radius: 15.0,
              dotRadius: 6.0,
            )
        )
      );
  }
}