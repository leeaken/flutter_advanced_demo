import 'package:flutter/material.dart';

class UIData {

  //routes
  static const String loginRoute = "/login";
  static const String shopRoute = "/shop";
  static const String profileRoute = "/profile";
  static const String movieRoute = "/movielist";
  static const String dashboardRoute = "/dashboardPage";
  static const String animationRoute = "/animationPage";
  static const String dotLoadingRoute = "/dotLoadingPage";

  //主题
  static ThemeData theme = new ThemeData(primarySwatch: Colors.amber);
}

// Future<List> getCurentData() async{

//   String url = "https://api.coinmarketcap.com/v1/ticker?limit=50";
//   http.Response response = await http.get(url);
//   // var body = JSON.de
//   final body = json.decode(response.body);

//   return body;
// }