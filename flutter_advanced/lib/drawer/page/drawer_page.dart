import 'package:flutter/material.dart';
import 'package:flutter_advanced/drawer/bean/home_draw_data.dart';
import 'package:flutter_advanced/drawer/presenter/home_draw_presenter.dart';
import 'package:flutter_advanced/drawer/presenter/home_draw_presenter_impl.dart';

/// 左边菜单
class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() {
    _DrawerPageState view = _DrawerPageState();

    HomeDrawPresenterImpl impl = HomeDrawPresenterImpl(view);
    impl.init();

    return view;
  }
}

class _DrawerPageState extends State<DrawerPage> implements View {
  List<HomeDrawData> drawDatas = [];

  // 获取数据的prenter
  HomeDrawPresenterImpl _presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presenter.loadContacts();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text("aken"),
                  accountEmail: Text("xxxxxx"),
                  currentAccountPicture: new CircleAvatar(
                    child: Text("A"),
              )),
              ListView.builder(
                padding: const EdgeInsets.only(top: 0.0),
                itemCount: drawDatas.length,
                // physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                      leading: drawDatas[index].icon,
                      title: Text(drawDatas[index].name),
                      // trailing: drawDatas[index].icon,
                      onTap: () {}),
                      Divider()
                    ],
                  );
                },
              ),
            ],
          ));
        });
  }

  @override
  void onLoadContactsComplete(List<HomeDrawData> items) {
    // TODO: implement onLoadContactsComplete
    setState(() {
      drawDatas = items;
      print(items);
    });
  }

  @override
  void onLoadContactsError() {
    // TODO: implement onLoadContactsError
  }

  @override
  setPresenter(Presenter presenter) {
    // TODO: implement setPresenter
    _presenter = presenter;
  }
}
