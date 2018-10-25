import 'package:flutter_advanced/home/model/home_banner_model.dart';
import 'package:flutter_advanced/home/model/home_banner_model_impl.dart';
import 'package:flutter_advanced/home/presenter/home_banner_presenter.dart';

/// 实现获取Banner
class HomeBannerPresenterImpl implements HomeBannerPresenter {

  HomeBannerModelRepository _repository;
  HomeBannerView _view;

  HomeBannerPresenterImpl(this._view) {
    _view.setPresenter(this);
  }
  @override
  init() {
    // TODO: implement init
    _repository = new HomeBannerModelRepositoryImpl();
  }

  @override
  loadData() {
    // TODO: implement loadData
    _repository.fetch().then((datas){
      _view.onLoadBannerComplete(datas);
    }).catchError((error){
      _view.onLoadBannerError();
    });
  }

}