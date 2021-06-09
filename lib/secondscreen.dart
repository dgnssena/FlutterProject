import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tez1/Data.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Data> dataList = [];


  void initState() {
    super.initState();
    DatabaseReference referenceData = FirebaseDatabase.instance.reference()
        .child(
        "peoplecounter-6ebba-default-rtdb");
    referenceData.once().then((DataSnapshot dataSnapshot) {
      dataList.clear();
      var keys = dataSnapshot.value.keys;
      var values = dataSnapshot.value;

      for (var key in keys) {
        Data data = new Data(
          //values [key](["total"] ?? 'default') ,
          values [key]['ad'] ?? " ",
          values [key]['total'] ?? " ",


        );
        dataList.add(data);
      }
      setState(() {
        //xxx

      });
    });
  }
  @override
  Widget build(BuildContext context ){

    return Scaffold(
      appBar: AppBar(

        title: Text("MAĞAZA DOLULUK YÜZDELERİ(%)"),
      ),
      body: dataList.length == 0 ? Center(child: Text("No Data Available",style:TextStyle(fontSize:30 ),)):ListView.builder(

          itemCount: dataList.length,
          itemBuilder: (_,index){
            return CardUI(dataList[index].ad,dataList[index].total,);
          }
      ),
    );
  }
  Widget CardUI(String ad,String total) {
    return Card(

      margin: EdgeInsets.all(15),
      //color: Color(0xffff2fc4),
      color: Color(0xFF69F0AE),

      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(1.5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(ad,style:TextStyle(color: Colors.blueGrey,fontSize: 28,fontWeight: FontWeight.bold)),
            Text(total,style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),

            //Text(total,style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),



            ),
          ],
        ),
      ),
    );
  }
}