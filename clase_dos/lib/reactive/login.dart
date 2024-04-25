import 'package:clase_dos/reactive/model/account_model.dart';
import 'package:clase_dos/reactive/state/account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Account account = Account();
    return Container(
      width: 200,
      height: 200,
      color: Colors.grey,
      child:
        Column(
          children: [
            Observer(builder: (_){
              if (account.accountModel!=null) {
                return Text(
                  "Bienvenido ${account.accountModel!.value.name}"
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
            ElevatedButton(
              onPressed: (){
                AccountModel(id: 1, name: "Neyris", email: "ejempla@mail.com", password: "12345");
              },
              child: const Text(
                "Iniciar Sesion"
              )
            )
        ],
      ),
    );
  }
}