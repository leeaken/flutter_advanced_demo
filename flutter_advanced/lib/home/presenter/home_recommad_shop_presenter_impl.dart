
import 'package:flutter_advanced/home/model/home_recommad_shop_model.dart';
import 'package:flutter_advanced/home/model/home_recommad_shop_model_impl.dart';
import 'package:flutter_advanced/home/presenter/home_recommad_shop_presenter.dart';

class HomeRecommandProductPresenterImpl implements HomeRecommandProductPresenter {

  HomeRecommadProductModelRespository _respository;
  HomeRecommandProductView _view;

  HomeRecommandProductPresenterImpl(this._view){
    _view.setPresenter(this);
  }

  @override
  init() {
    // TODO: implement init
    _respository = new HomeRecommadProductModelRespositoryImpl();
  }

  @override
  loadData() {
    // TODO: implement loadData
    _respository.fetch().then((datas){
      _view.onLoadProductSuccess(datas);
    }).catchError((error){
      _view.onLoadProductFailure();
    });
  }

}