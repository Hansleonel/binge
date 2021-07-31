import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKeyUnique = new GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool _isLoading = false;

  get getIsLoading {
    return _isLoading;
  }

  set setIsLoading(bool valorIsLoading) {
    _isLoading = valorIsLoading;
    notifyListeners();
  }

  bool isValidForm() {
    bool? valor = formKeyUnique.currentState?.validate();
    print('valor : $valor, email : $email, password : $password');
    return valor ?? false;
  }
}
