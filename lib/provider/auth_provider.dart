import 'package:flutter/material.dart';

enum Status{
  NotRegistered,
  Registering,
  Registered,
}
class AuthProvider with ChangeNotifier{

  Status _registeredStatus = Status.NotRegistered;
  

}