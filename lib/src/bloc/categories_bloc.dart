import 'dart:async';

import 'package:flutter_onlineshop/src/resource/categories/categories_data.dart';

enum Events {initial}

class CategoriesBloc {
  
  final _outputStateController = StreamController<List>();
  Stream<List> get outputStateStream => _outputStateController.stream;

  CategoriesBloc() {
    _outputStateController.sink.add(categories);
  }

  void dispose() {
    _outputStateController.close();
  }
}