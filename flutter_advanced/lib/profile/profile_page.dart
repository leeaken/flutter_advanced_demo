import 'package:flutter/material.dart';

// 我的
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // 创建按钮
  Widget _buildButtonItem(String title,Icon icon,Color backgroundColor) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: FlatButton(
          onPressed: () {},
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 6.0),
                  child: CircleAvatar(
                    radius: 20.0,
                    child: icon,
                    backgroundColor: backgroundColor,
                  ),
                ),
                Container(
                  child: new Text(
                    title,
                    style: new TextStyle(color: Colors.black87, fontSize: 14.0),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget _buildService() {
    return new Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // 上排
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildButtonItem("我的收藏", Icon(Icons.book, color: Colors.white),Colors.green),
                _buildButtonItem("我的生活", Icon(Icons.flash_on, color: Colors.white),Colors.blue),
                _buildButtonItem("学习课堂", Icon(Icons.subject, color: Colors.white),Color(0xFFA68F52)),
                _buildButtonItem("咨询", Icon(Icons.attach_money, color: Colors.white),Color(0xFF355A9B))
              ],
            ),
          ),
          // 下排
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildButtonItem("已购", Icon(Icons.shopping_basket, color: Colors.white),Colors.pink),
                _buildButtonItem("优惠券", Icon(Icons.shop, color: Colors.white),Colors.red),
                _buildButtonItem("服务", Icon(Icons.wifi_tethering, color: Colors.white),Colors.brown),
                _buildButtonItem("订单", Icon(Icons.shopping_cart, color: Colors.white),Colors.cyan),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildWallet() {
    return new Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // 上排
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildButtonItem("线包", Icon(Icons.photo_size_select_large, color: Colors.white),Colors.orange),
                _buildButtonItem("充值", Icon(Icons.monetization_on, color: Colors.white),Colors.blue),
                _buildButtonItem("电影", Icon(Icons.movie, color: Colors.white),Color(0xFFA68F52)),
                _buildButtonItem("支付", Icon(Icons.payment, color: Colors.white),Color(0xFF355A9B))
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Setting',
                onPressed: () {},
              )
            ],
          
            flexibleSpace: FlexibleSpaceBar(
              title: Text("aken"),
              background: DecoratedBox(
                child: Center(
                  child: ClipOval(
                    //这个一般可以作为圆形的裁剪哦。
                    child: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: Container(
                        child: Image.asset("images/user_icon.png", fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ), 
                decoration: BoxDecoration(
                    color: Colors.amber
                ),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: ExactAssetImage('images/kebi.jpg'),
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
          )
        ];
      },
      body: Container(
          color: Color.fromRGBO(235, 235, 235, 1.0),
          child: Column(
            children: <Widget>[
              _buildService(),
              _buildWallet()
            ],
          )),
    ));
  }
}
