import 'package:flutter_advanced/dashboard/beans/dashboard_data.dart';
import 'package:flutter_advanced/dashboard/models/dashboard_model.dart';
import 'package:flutter_advanced/mvp/mvp.dart';

abstract class DashboardPresenter implements IPresenter {
  loadData();
}

abstract class DashboardView implements IView {
  void onLoadDashboardComplete(List<DashboardData> items);
  void onLoadDashboardError();

}

class DashboardPresenterImpl implements DashboardPresenter {

  DashboardModelRepositoryImpl _impl;
  DashboardView _view;

  DashboardPresenterImpl(this._view){
    _view.setPresenter(this);
  }
  @override
  init() {
    // TODO: implement init
    _impl = new DashboardModelRepositoryImpl();
  }

  @override
  loadData() {
    // TODO: implement loadData
    _impl.fetch().then((datas){
      _view.onLoadDashboardComplete(datas);
    }).catchError((error){
      _view.onLoadDashboardError();
    });
  }


}