import 'package:flutter/material.dart';
import 'package:flutter_advanced/animaiton/pages/animation_page.dart';
import 'package:flutter_advanced/animaiton/pages/dot_loading_page.dart';
import 'package:flutter_advanced/dashboard/pages/dashboard_page.dart';
import 'package:flutter_advanced/home/page/home_page.dart';
import 'package:flutter_advanced/login/login_page.dart';
import 'package:flutter_advanced/movies/pages/movie_bloc_page.dart';
import 'package:flutter_advanced/profile/profile_page.dart';
import 'package:flutter_advanced/shopping/shopping_home.dart';
import 'package:flutter_advanced/utils/uidata.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: UIData.theme,
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        UIData.loginRoute: (BuildContext context) => LoginPage(),
        UIData.shopRoute: (BuildContext context) => ShoppingHomePage(),
        UIData.profileRoute: (BuildContext context) => ProfilePage(),
        UIData.movieRoute: (BuildContext context) => MovieListPage(),
        UIData.dashboardRoute: (BuildContext context) => DashboardPage(),
        UIData.animationRoute: (BuildContext context) => AnimationPage(),
        UIData.dotLoadingRoute: (BuildContext context) => DotLoadingPage()
      }
    );
  }
}
