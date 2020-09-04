import 'package:flutter/material.dart';
import 'package:flutter_onlineshop/src/model/food.dart';
import 'package:flutter_onlineshop/src/ui/money_helper.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  final Function press;
  const FoodCard ({
    Key key,
    this.food,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var goodWidth = screenWidth/2 - 11*2;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                food.image,
                fit: BoxFit.fitHeight,
              ),
              height: goodWidth,
              width: goodWidth,
            ),
          ),
          Container(
            height: goodWidth/60*36,
            width: goodWidth,
            color: Colors.grey[800],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                  child: Text(
                    '${food.title}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 15.0),
                  child: Text(
                    MoneyHelper.formatMoney(food.price.toDouble()),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}