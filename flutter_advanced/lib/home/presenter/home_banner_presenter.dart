import 'package:flutter_advanced/home/bean/home_banner_data.dart';
import 'package:flutter_advanced/mvp/mvp.dart';

abstract class HomeBannerPresenter implements IPresenter {
    loadData();
}

abstract class HomeBannerView implements IView<HomeBannerPresenter> {

  void onLoadBannerComplete(List<HomeBannerData> items);
  void onLoadBannerError();
}