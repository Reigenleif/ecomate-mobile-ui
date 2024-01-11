import 'package:flutter/material.dart';

class ServiceHandler<DataType> extends ChangeNotifier{
  late DataType data;

  bool isError = false;
  String errorMessage = '';
  bool isLoading = false;

  ServiceHandler() {
    fetch();
  }

  static fetch(){
    return;
  };


}