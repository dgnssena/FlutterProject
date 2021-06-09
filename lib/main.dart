import 'package:flutter/material.dart';
import 'package:tez1/models/CategoriesCart.dart';
import 'package:tez1/models/categories.dart';
import 'secondscreen.dart';


void main() {
  runApp(MaterialApp(home: MyApp()));


}

class MyApp extends StatelessWidget {

  List<CategoriesCart> shop=[]
  ..add(CategoriesCart('Mağaza1'));





  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("MARKALAR."),
          centerTitle: true,
          leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SecondScreen()),
            );

          },
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.greenAccent],
                begin: Alignment.bottomRight,
                end:Alignment.bottomLeft,
              ),
            ),
          ),


        ),

        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(children: <Widget>[

            Container(

             

              height: 120.0,
              color: Colors.greenAccent,
              margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
              child: Center(
                child: Text(
                  'Mağaza1',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),


              ),



            ),
            Container(
              height: 120.0,
              color: Colors.blueAccent,
              margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
              child: Center(
                child: Text(
                  'Mağaza2',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),

              ),



            ),

            Container(
              height: 120.0,
              color: Colors.blueGrey,
              margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
              child: Center(
                child: Text(
                  'Mağaza3',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),

              ),



            ),
            Container(
              height: 120.0,
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
              child: Center(
                child: Text(
                  'Mağaza4',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),

              ),



            ),



          ],)
          )


        );



  }
}


