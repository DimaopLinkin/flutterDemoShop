import 'dart:async';

import 'package:flutter_onlineshop/src/resource/food/food_data.dart';

enum Events {initial}

class FoodsBloc {

  final _outputStateController = StreamController<List>();
  Stream<List> get outputStateStream => _outputStateController.stream;

  FoodsBloc() {
    _outputStateController.sink.add(foods);
  }

  void dispose() {
    _outputStateController.close();
  }
}