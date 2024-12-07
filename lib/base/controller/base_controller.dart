import 'package:flutter/material.dart';

enum Status { none, loading, success, error }

class BaseController with ChangeNotifier{

  Status statusApi = Status.none;
  void onLoading(){
    statusApi = Status.loading;
    notifyListeners();
  }
  void onSuccess(){
    statusApi = Status.success;
    notifyListeners();
  }
  void onError(){
    statusApi = Status.error;
    notifyListeners();
  }
}
