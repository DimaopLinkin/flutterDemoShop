import 'package:flutter/material.dart';
import 'package:flutter_onlineshop/src/bloc/foods_bloc.dart';
import 'package:flutter_onlineshop/src/ui/components/food_card.dart';
import 'categories.dart';

class Body extends StatelessWidget {

  FoodsBloc _bloc = FoodsBloc();

  @override
  void dispose() {
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Categories(),
        StreamBuilder(
          stream: _bloc.outputStateStream,
          initialData: [0],
          builder: (context, snapshot) {
            return Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                itemCount: snapshot.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 450 ? 3 : 2,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 0.625,
                ),
                itemBuilder: (context, index) =>
                    FoodCard(food: snapshot.data[index]),
              ),
            );
          }
        ),
      ],
    );
  }
}






