import 'package:clase_dos/reactive/model/account_model.dart';
import 'package:mobx/mobx.dart';

part 'account_state.g.dart';

// ignore: library_private_types_in_public_api
class Account = _Account with _$Account;

abstract class _Account with Store {

  @observable
  Observable<AccountModel>? accountModel;

  @observable
  Observable<bool>isLoading = Observable(false);


  @action
  addAccount(AccountModel accountModel)async{
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 4), (){
      this.accountModel = Observable(accountModel);
    });

    isLoading.value = false;
  }
}