import 'package:budg/constants/deneeme.dart';
import 'package:budg/pages/detailPage.dart';
import 'package:budg/pages/statisticPage.dart';
import 'package:budg/widgets/informationTake.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Deneme deneme = Deneme();
  int selectIndex =0;
  List pages = [
    DeatailPage(),
    IstatistikPage(),



  ] ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    deneme.getCategorySave();

    deneme.getCategory();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        getSheet();
      },child: Icon(Icons.add),),
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex:selectIndex ,
        onTap: (value) => setState(() {
         
         
          selectIndex=value;
        }),
        items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.analytics),label: "Istatistik"),
      ])
      ,
    );
  }

  void getSheet(){
   
      showModalBottomSheet(
        isScrollControlled: true,

        context: context, builder: (BuildContext context){
        return  InformationTake();
      });
    
  }
  
}