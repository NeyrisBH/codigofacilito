import 'package:flutter/material.dart';

import '../dialogs/alert_dialog.dart';
import '../dialogs/loader_dialog.dart';
import '../utils/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routePath = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Align(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 320,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextFormField(
                        onChanged: (text) => _email = text,
                        decoration: const InputDecoration(
                          label: Text('email'),
                        ),
                        validator: (text) {
                          if (isValidEmail(text ?? '')) {
                            return null;
                          }
                          return 'Invalid email';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        onChanged: (text) => _password = text,
                        decoration: const InputDecoration(
                          label: Text('password'),
                        ),
                        validator: (text) {
                          final errors = isValidPassword(text ?? '');
                          if (errors.isEmpty) {
                            return null;
                          }
                          return errors.first;
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.blue,
                          ),
                        ),
                        onPressed: () => _submit(context),
                        child: const Text('Send'),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await showLoaderDialog(
        context,
        Future.delayed(
          const Duration(milliseconds: 1000),
        ),
      );

      if (!mounted) {
        return;
      }

      if (_email == 'test@test.com' && _password == 'Test123@') {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LoginScreen.routePath,
          (_) => false,
        );
      } else {
        showAlertDialog(
          context,
          message: 'Invalid email or password',
        );
      }
    }
  }
}
