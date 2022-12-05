import 'package:flutter/material.dart';
import 'package:workshop/model/user.dart';

class UserProvider with ChangeNotifier{

  var changeName ="";
  void setUser(User name){
    changeName = name.user;
    notifyListeners();
  }

}