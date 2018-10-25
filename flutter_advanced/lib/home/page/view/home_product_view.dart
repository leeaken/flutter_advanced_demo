import 'package:flutter/material.dart';
import 'package:flutter_advanced/home/bean/home_recommad_shop_data.dart';
import 'package:flutter_advanced/home/presenter/home_recommad_shop_presenter.dart';
import 'package:flutter_advanced/home/presenter/home_recommad_shop_presenter_impl.dart';

class HomeProductView extends StatefulWidget {
  @override
  _HomeProductViewState createState() {
    _HomeProductViewState view = new _HomeProductViewState();
    HomeRecommandProductPresenterImpl presenter =
        HomeRecommandProductPresenterImpl(view);
    presenter.init();

    return view;
  }
}

class _HomeProductViewState extends State<HomeProductView>
    with HomeRecommandProductView {
  List<HomeProductData> productDatas = [];
  HomeRecommandProductPresenterImpl _presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presenter.loadData();
  }

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
  //
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.width / 2 + 8) * 3,
        child: GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
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
                .toList()));
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
      // print("products:$productDatas");
    });
  }

  @override
  setPresenter(HomeRecommandProductPresenter presenter) {
    // TODO: implement setPresenter
    _presenter = presenter;
  }
}
