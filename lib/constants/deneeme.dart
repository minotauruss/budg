import 'package:budg/models/category.dart';
import 'package:budg/models/product.dart';
import 'package:budg/services/serviceProduct.dart';


class Deneme {



  ServiceProduct serviceProduct = ServiceProduct();

  void getSave(){
    serviceProduct.saveData("product", "1", Product(id: "1", name: "ozkan", price: "price", brand: "brand", date: "date", category: "category",quantity: "1"));
    print("islem okay");
  }

  void getData() {
    Product? data = serviceProduct.getData("product", "1") as Product?;
    print(data!.name);
  }

  void getCategorySave(){
    serviceProduct.saveData("category", "1", CategoryList(shoping: ["aldi","coles","costco"], fueloil: ["coles","cosctco"], electronics: ["hb ji fi","costco"], bill: ["elektirk","telefon","su"], other: ["ivir","zivir"]));
    print('category is okay');
  }

  void getCategory(){
    CategoryList? cate = serviceProduct.getData('category', '1') as CategoryList?;
    print(cate!.bill);
    print(cate!.electronics);
    print(cate!.fueloil);
    print(cate!.shoping);
    print(cate!.other);
  }
}