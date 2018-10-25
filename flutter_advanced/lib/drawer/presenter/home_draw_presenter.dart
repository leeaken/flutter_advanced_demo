import 'package:flutter_advanced/mvp/mvp.dart';
import 'package:flutter_advanced/drawer/bean/home_draw_data.dart';

/// 约束 Presenter 和 View
abstract class Presenter implements IPresenter{
  loadContacts();
}

abstract class View implements IView<Presenter>{
  void onLoadContactsComplete(List<HomeDrawData> items);
  void onLoadContactsError();
}
