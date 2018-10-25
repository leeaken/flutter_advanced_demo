import 'package:flutter_advanced/drawer/model/home_draw_model.dart';
import 'package:flutter_advanced/drawer/model/home_draw_model_impl.dart';
import 'package:flutter_advanced/drawer/presenter/home_draw_presenter.dart';

/// 使用Presenter作为中间层去加载数据
class HomeDrawPresenterImpl implements Presenter {

  View _view;
  HomeDrawModelRepository _repository;

  HomeDrawPresenterImpl(this._view) {
    _view.setPresenter(this);
  }
  @override
  init() {
    // TODO: implement init
    _repository =  new HomeDrawModelRepositoryImpl();
  }

  @override
  loadContacts() {
    // TODO: implement loadContacts

    _repository.fetch().then((models){
      _view.onLoadContactsComplete(models);
    }).catchError((error){
      _view.onLoadContactsError();
      print(error);
    });
  }


}