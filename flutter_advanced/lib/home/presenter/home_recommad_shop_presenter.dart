

import 'package:flutter_advanced/home/bean/home_recommad_shop_data.dart';
import 'package:flutter_advanced/mvp/mvp.dart';

abstract class  HomeRecommandProductPresenter implements IPresenter{
  loadData();
}

abstract class  HomeRecommandProductView implements IView<HomeRecommandProductPresenter> {
  void onLoadProductSuccess(List<HomeProductData> items);
  void onLoadProductFailure();
}