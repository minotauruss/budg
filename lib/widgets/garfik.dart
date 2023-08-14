import 'package:budg/models/grafikData.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Grafik extends StatefulWidget {
  List<GrafikData> grafikListe;
  Grafik({required this.grafikListe,super.key});

  @override
  State<Grafik> createState() => _GrafikState();
}

class _GrafikState extends State<Grafik> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: 
        getBarList()
     
        

      ),
    );
  }
  Widget getRowWidget( double highPrice){
    return Container(
      width: 10,
      height: highPrice*100,
      color: Colors.blue,
    );

  }


  List<Widget>  getBarList(){

    List<Widget>  widgetList = [];

    for(GrafikData item in widget.grafikListe){
      widgetList.add(getRowWidget(double.parse(item.price)));
    }
    return widgetList;
  }
}