import 'package:flutter/material.dart';
import 'package:flutter_advanced/dashboard/beans/dashboard_data.dart';
import 'package:flutter_advanced/dashboard/presenters/dashboard_presenter.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() {
    _DashboardPageState view = _DashboardPageState();

    DashboardPresenterImpl _presenter = DashboardPresenterImpl(view);
    _presenter.init();

    return view;
  }
}

class _DashboardPageState extends State<DashboardPage> with DashboardView {
  List<DashboardData> boardDatas = [];
  DashboardPresenterImpl _presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presenter.loadData();
  }

  Widget _itemMenu(DashboardData model) {
    return Container(
      color: model.color,
      margin: EdgeInsets.only(bottom:1.0),
      height: (MediaQuery.of(context).size.height - 64) / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // 标题
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          // 数量
          Text(
            model.count,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                color: Colors.white),
          ),
          // 描述
          Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("DashBoard")),
        body: ListView.builder(
          itemCount: boardDatas.length,
          itemBuilder: (BuildContext context, int index) {
            return _itemMenu(boardDatas[index]);
          },
        ));
  }

  @override
  void onLoadDashboardComplete(List<DashboardData> items) {
    // TODO: implement onLoadDashboardComplete
    setState(() {
      boardDatas = items;
    });
  }

  @override
  void onLoadDashboardError() {
    // TODO: implement onLoadDashboardError
  }

  @override
  setPresenter(presenter) {
    // TODO: implement setPresenter
    _presenter = presenter;
  }
}
