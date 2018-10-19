
import 'package:flutter_mvp_demo/contact_model.dart';
import 'package:flutter_mvp_demo/mvp.dart';

// 约束 Presenter 和 View
abstract class Presenter implements IPresenter{
  loadContacts();
}

abstract class View implements IView<Presenter>{
  void onLoadContactsComplete(List<Contact> items);
  void onLoadContactsError();
}
