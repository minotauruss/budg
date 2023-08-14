import 'package:budg/models/grafikData.dart';
import 'package:budg/models/product.dart';
import 'package:budg/services/serviceProduct.dart';
import 'package:budg/widgets/garfik.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeatailPage extends StatefulWidget {
  const DeatailPage({super.key});

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
ServiceProduct serviceProduct = ServiceProduct();

late List<GrafikData> totalGrafikList;

getProductHive(){
late List productList;
  productList = serviceProduct.getDataAll("product2");
  return productList;
}

List<GrafikData> getGrafikData(){
  totalGrafikList=[];
   double toplam=0;
  List productListGrafik = getProductHive();
  
  for (int i = 1; i>31 ;i++){
    for (var item in productListGrafik){
   if(int.parse(item.date.substring(5,6))==i){
     toplam = toplam +( double.parse(item.price) * double.parse(item.quantity));
   }else{
    toplam = 0;
   }
   totalGrafikList.add(GrafikData(id: i.toString(), price: toplam.toString()));
   

  }
  }
  return totalGrafikList;
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductHive();
    getGrafikData();
  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget> [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
                
                child: const Center(child: Text("ust menu"),)
              ),
            ),
               Expanded(
                flex: 2,
                 child: Container(
                  color: Colors.amber,
                            
                             child: Center(child: Grafik( grafikListe: totalGrafikList,) ,)
                           ),
               ),
               Expanded(
                flex: 8,
                 child: Container(
                  color: Colors.blue,
                            
                             child: getListOfProduct()
                           ),
               ),
            
            



          ],
        ),
      )
    );
}

Widget getListOfProduct(){

  return ListView.builder(
    itemCount: getProductHive().length,
    itemBuilder: (context, index){
      Product data = getProductHive()[index];
      double productNetPrice = (double.parse( data.price) * int.parse(data.quantity)) ;
    return Card
    (
      child: ListTile(
        title:  Text(data.name + " / "+ data.brand),
        subtitle: Text(productNetPrice.toString() + " / "+ data.date.substring(0,16)),
        trailing:IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward))
      ),
    );
  });
}

}