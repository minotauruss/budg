import 'package:budg/models/category.dart';
import 'package:budg/models/product.dart';
import 'package:budg/services/serviceProduct.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


class InformationTake extends StatefulWidget {
  const InformationTake({super.key});

  @override
  State<InformationTake> createState() => _InformationTakeState();
}

class _InformationTakeState extends State<InformationTake> {
  final _formKey = GlobalKey<FormState>();
  Uuid uuid = Uuid();
  ServiceProduct serviceProduct = ServiceProduct();

  String name = '';
  String price = '';
  String brand = '';
  String category = '';
  String date= "";
  String quantity="1";
  List<String> menuList = ["4", "6", "7"];
  String dropDownMenu = "Category";
  String dropDownMenuBrand = "Brand";
  List<DropdownMenuItem<Object>> menu = [];

 

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Form(
      key: _formKey,
        child: Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        child: Wrap(children: [
          DropdownButton(
            items: const [
              DropdownMenuItem(
                child: Text('Shopping'),
                value: "Shopping",
              ),
              DropdownMenuItem(
                child: Text('Electronik'),
                value: "Electronik",
              ),
              DropdownMenuItem(
                child: Text('Bill'),
                value: "Bill",
              ),
              DropdownMenuItem(
                child: Text('FuelOil'),
                value: "FuelOil",
              ),
              DropdownMenuItem(
                child: Text('Other'),
                value: "Other",
              ),
            ],
            onChanged: (value) {
              dropDownCallBack(value as String?);
              getDropDown(value.toString());
              getDropDownMenuItem();
              setState(() {
                category=value.toString();
              });
            },
            hint: Text(dropDownMenu),
          ),
          DropdownButton(
            items: menu,
            onChanged: (value) {
              dropDownCallBackBrand(value.toString());
              setState(() {
                brand=value.toString();
              });
            },
            hint: Text(dropDownMenuBrand),
          ),
          TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Urun adini',
                labelText: 'Urun',
              ),
              onSaved: (String? value) {
                setState(() {
                  name = value!;
                });
              },
              validator: (String? value) {
                return (value != null && value.isEmpty)
                    ? 'please enter'
                    : null;
              }),
          TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Urun Fiyati',
                labelText: 'Fiyat',
              ),
              onSaved: (String? value) {
                setState(() {
                  price = value!;
                });
              },
               validator: (String? value) {
                return (value != null && value.isEmpty)
                    ? 'please enter'
                    : null;
              }),
              TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Urun miktari',
                labelText: 'Miktar',
              ),
              onSaved: (String? value) {
                setState(() {
                  quantity = value!;
                });
              },
               validator: (String? value) {
                return (value != null && value.isEmpty)
                    ? 'please enter'
                    : null;
              }),
          ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
  
     _formKey.currentState!.save();

     getSaveDataHive();
     
    }
  },
  child: const Text('Kaydet'),
),
        ]),
      ),
    )
    
    
    
    );
  }

  void dropDownCallBack(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropDownMenu = selectedValue;
      });
    }
  }

  void dropDownCallBackBrand(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropDownMenuBrand = selectedValue;
      });
    }
  }

  void getDropDownMenuItem() {
    menu = [];

    for (String item in menuList) {
      menu.add(DropdownMenuItem(
        child: Text(item),
        value: item,
      ));
    }
  }

  void getDropDown(String value) {
    CategoryList? data =
        serviceProduct.getData("category", "1") as CategoryList?;
    if (value == "Shopping") {
      setState(() {
        menuList = data!.shoping;
      });
    } else if (value == "Electronik") {
      setState(() {
        menuList = data!.electronics;
      });
    } else if (value == "Bill") {
      setState(() {
        menuList = data!.bill;
      });
    } else if (value == "FuelOil") {
      setState(() {
        menuList = data!.fueloil;
      });
    } else {
      setState(() {
        menuList = data!.other;
      });
    }
  }
  
  void getSaveDataHive() {
    String productId = uuid.v1();
    DateTime dateTime = DateTime.now();
     String date = dateTime.toString();
    Product product = Product(id: productId, name: name, price: price, brand: brand, date: date, category: category,quantity: quantity);
    serviceProduct.saveData("product2", productId, product);


  }
}
