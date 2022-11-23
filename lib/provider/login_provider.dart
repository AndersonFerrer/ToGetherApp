import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool _isloading = false;

  bool get isloading => _isloading;
  set isloading(bool value) {
    _isloading = value;
    notifyListeners();
  }

  bool isvalidForm() {
    return formkey.currentState?.validate() ?? false;
  }
}
