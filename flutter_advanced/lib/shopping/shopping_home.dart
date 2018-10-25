import 'package:flutter/material.dart';
import 'package:flutter_advanced/home/bean/home_recommad_shop_data.dart';
import 'package:flutter_advanced/home/presenter/home_recommad_shop_presenter.dart';
import 'package:flutter_advanced/home/presenter/home_recommad_shop_presenter_impl.dart';

class ShoppingHomePage extends StatefulWidget {
  @override
  _ShoppingHomePageState createState(){

    _ShoppingHomePageState view = _ShoppingHomePageState();
    
    HomeRecommandProductPresenter presenter = HomeRecommandProductPresenterImpl(view);
    presenter.init();

    return view;
  }
}

class _ShoppingHomePageState extends State<ShoppingHomePage> with HomeRecommandProductView {

  List<HomeProductData> productDatas = [];
  HomeRecommandProductPresenterImpl _presenter;

   Widget imageCard(String img) {
    return Image.network(
      img,
      fit: BoxFit.cover,
    );
  }

  Widget descCard(HomeProductData product) => Positioned(
        bottom: 0.0,
        left: 0.0,
        right: 0.0,
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    product.name,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text(product.price,
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      );

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _presenter.loadData();
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("购物中心")
      ),
      body: Container(
        color: Colors.white,
        child: GridView.count(
            crossAxisCount: 2,
            children: productDatas
                .map((model) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 1.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          imageCard(model.image),
                          descCard(model)
                        ],
                      ),
                    )))
                .toList()))
    );
  }

  @override
  void onLoadProductFailure() {
    // TODO: implement onLoadProductFailure
  }

  @override
  void onLoadProductSuccess(List<HomeProductData> items) {
    // TODO: implement onLoadProductSuccess
    setState(() {
      productDatas = items;      
    });
  }

  @override
  setPresenter(HomeRecommandProductPresenter presenter) {
    // TODO: implement setPresenter
    _presenter = presenter;
  }
}