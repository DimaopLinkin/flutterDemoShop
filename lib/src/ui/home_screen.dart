import 'package:flutter/material.dart';
import 'package:flutter_onlineshop/src/ui/components/app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}


