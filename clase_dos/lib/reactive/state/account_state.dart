import 'package:clase_dos/reactive/model/account_model.dart';
import 'package:mobx/mobx.dart';

part 'account_state.g.dart';

class Account = _Account with _$Account;

abstract class _Account with Store {

  @observable
  Observable<AccountModel>? accountModel;

  @action
  addAccount(AccountModel accountModel)async{
    await Future.delayed(const Duration(seconds: 4), (){
      this.accountModel = Observable(accountModel);
    });
  }
}