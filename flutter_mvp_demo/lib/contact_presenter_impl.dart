import 'package:flutter_mvp_demo/contract_presenter.dart';
import 'package:flutter_mvp_demo/contact_model.dart';
import 'package:flutter_mvp_demo/contact_model_impl.dart';

class ContractPresenter implements Presenter {

  View _view;

  ContactRepository _repository;

  ContractPresenter(this._view){
    _view.setPresenter(this);
  }

  @override
  init() {
    // TODO: implement init
    _repository = new MockContactRepository();
  }

  @override
  loadContacts() {
    // TODO: implement loadContacts

    _repository.fetch().then((contacts){
      _view.onLoadContactsComplete(contacts);
    }).catchError((error){
      print(error);
      _view.onLoadContactsError();
    });

  }


}