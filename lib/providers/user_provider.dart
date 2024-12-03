import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  String _name = "";

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  String getName() => _name;
}
