import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IstatistikPage extends StatefulWidget {
  const IstatistikPage({super.key});

  @override
  State<IstatistikPage> createState() => _IstatistikPageState();
}

class _IstatistikPageState extends State<IstatistikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text('data')),
        ],
      ),
    );
  }
}