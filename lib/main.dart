import 'package:budg/models/category.dart';
import 'package:budg/models/grafikData.dart';
import 'package:budg/models/product.dart';
import 'package:budg/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CategoryListAdapter());
  Hive.registerAdapter(GrafikDataAdapter());
  await Hive.openBox('product2');
  await Hive.openBox('category');
  await Hive.openBox('grafikData');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
