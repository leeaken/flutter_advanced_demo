import 'package:flutter/material.dart';
import 'package:flutter_advanced/drawer/page/drawer_page.dart';
import 'package:flutter_advanced/home/bean/home_banner_data.dart';
import 'package:flutter_advanced/home/page/view/home_banner_view.dart';
import 'package:flutter_advanced/home/page/view/home_desboard_view.dart';
import 'package:flutter_advanced/home/page/view/home_product_view.dart';
import 'package:flutter_advanced/home/presenter/home_banner_presenter.dart';
import 'package:flutter_advanced/home/presenter/home_banner_presenter_impl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    _HomePageState view = new _HomePageState();
    HomeBannerPresenterImpl presenter = new HomeBannerPresenterImpl(view);
    presenter.init();

    return view;
  }
}

class _HomePageState extends State<HomePage> implements HomeBannerView {
  List<HomeBannerData> bannerDatas = [];
  HomeBannerPresenterImpl _presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presenter.loadData();
  }
  // // banner start

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页")),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: Container(
        color: Color.fromRGBO(235, 235, 235, 1.0),
        child: ListView(
          children: <Widget>[
            // 广告
            // _buildBannerCard()
            HomeBannerCard(bannerDatas: bannerDatas),
            HomeDesboardView(),
            HomeProductView()
          ],
        ),
      ),
    );
  }

  @override
  void onLoadBannerComplete(List<HomeBannerData> items) {
    // TODO: implement onLoadBannerComplete
    setState(() {
      bannerDatas = items;
      // print("bannerData:$bannerDatas");
    });
  }

  @override
  void onLoadBannerError() {
    // TODO: implement onLoadBannerError
  }

  @override
  setPresenter(HomeBannerPresenter presenter) {
    // TODO: implement setPresenter
    _presenter = presenter;
  }
}
