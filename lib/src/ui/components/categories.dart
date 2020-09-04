import 'package:flutter/material.dart';
import 'package:flutter_onlineshop/src/bloc/categories_bloc.dart';
import 'package:flutter_onlineshop/src/resource/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  CategoriesBloc _bloc = CategoriesBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: StreamBuilder(
        stream: _bloc.outputStateStream,
        initialData: ['Комбо'],
        builder: (context, snapshot) {
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) => buildCategory(index, snapshot),
          );
        }
      )
    );
  }

  Widget buildCategory(int index, snapshot) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 15/4, 0, 0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: selectedIndex == index ? bgDecorationColor : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            child: Container(
              height: 40,
              child: Center(
                child: Text(
                  snapshot.data[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.black : Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}