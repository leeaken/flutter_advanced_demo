import 'package:flutter/material.dart';
import 'package:flutter_advanced/home/bean/home_desboard_data.dart';
import 'package:flutter_advanced/movies/blocs/bloc_provider.dart';
import 'package:flutter_advanced/movies/blocs/movie_list_bloc.dart';
import 'package:flutter_advanced/movies/pages/movie_bloc_page.dart';
import 'package:flutter_advanced/utils/uidata.dart';

/// 功能菜单列表
class HomeDesboardView extends StatefulWidget {
  @override
  _HomeDesboardViewState createState() => _HomeDesboardViewState();
}

class _HomeDesboardViewState extends State<HomeDesboardView> {
  final List<HomeDesboardData> recomData = new List();
  BuildContext _context;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    recomData.add(HomeDesboardData(
        iconName: Icons.text_fields, title: "登录", color: Colors.blue));
    recomData.add(HomeDesboardData(
        iconName: Icons.text_format, title: "用户中心", color: Colors.brown));
    recomData.add(HomeDesboardData(
        iconName: Icons.shopping_cart, title: "购物", color: Colors.lightBlueAccent));
    recomData.add(HomeDesboardData(
        iconName: Icons.timer, title: "时间轴", color: Colors.redAccent));
    recomData.add(HomeDesboardData(
        iconName: Icons.dashboard,
        title: "仪表盘",
        color: Colors.lightGreenAccent));
    recomData.add(HomeDesboardData(
        iconName: Icons.details,
        title: "Bloc",
        color: Colors.greenAccent));
    recomData.add(HomeDesboardData(
        iconName: Icons.rotate_left,
        title: "动画",
        color: Colors.purpleAccent));
    recomData.add(HomeDesboardData(
        iconName: Icons.show_chart, title: "图表", color: Colors.pinkAccent));
  }

  void pagePush(int index) {
    if(index == 0) {
      Navigator.pushNamed(_context, UIData.loginRoute);
    }else if(index == 1) {
      Navigator.pushNamed(_context, UIData.profileRoute);
    }else if(index == 2) {
      Navigator.pushNamed(_context, UIData.shopRoute);
    }else if(index == 4) {
      Navigator.pushNamed(_context, UIData.dashboardRoute);
    }else if(index == 5) {
      // Navigator.pushNamed(_context, UIData.movieRoute);
      Navigator
        .of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
          return BlocProvider<MovieListBloc>(
              bloc: MovieListBloc(),
              child: MovieListPage(),
            );
      }));
    }else if(index == 6) {
      Navigator.pushNamed(_context, UIData.animationRoute);
    }
    print("$index");
  }
  // 创建按钮
  Widget _buildButtonItem(String title, Icon icon, Color backgroundColor,int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: FlatButton(
          color: Colors.white,
          onPressed: () {
              pagePush(index);
          },
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: CircleAvatar(
                    radius: 20.0,
                    child: icon,
                    backgroundColor: backgroundColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: new Text(
                    title,
                    style: new TextStyle(color: Colors.black87, fontSize: 13.0),
                  ),
                )
              ],
            ),
          )),
    );
  }

  // 菜单中心
  Widget _buildService() {
    return new Container(
        margin: const EdgeInsets.only(top: 2.0, bottom: 2.0),
        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
        height: 150.0,
        color: Colors.white,
        child: ListView.builder(
            itemCount: (recomData.length ~/ 2).toInt(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: <Widget>[
                // 上排
                Container(
                    child: Row(
                      children: <Widget>[
                        _buildButtonItem(recomData[index].title, 
                          Icon(recomData[index].iconName, color: Colors.white),
                          recomData[index].color,
                          index
                        )]
                      )
                ),
                // 下排
                Container(
                    margin: const EdgeInsets.only(top:10.0),
                    child: Row(
                      children: <Widget>[
                        _buildButtonItem(recomData[index + 4].title, 
                          Icon(recomData[index + 4].iconName, color: Colors.white),
                          recomData[index + 4].color,
                          index + 4
                        )]
                      )
                )
                
              ]);
            })

        );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return _buildService();
  }
}
