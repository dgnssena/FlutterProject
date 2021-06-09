

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesCart extends StatelessWidget{
  final String CategoriesCart1;
  String name;

  CategoriesCart(this.CategoriesCart1);




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),

      child: Container(
        height: 120.0,
        color: Colors.purple,
        margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
        child: Center(
          child: Text(
            CategoriesCart1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize :22.0,
              fontWeight: FontWeight.bold,
            ),
          ),


        ),

      ),
    );
  }
}