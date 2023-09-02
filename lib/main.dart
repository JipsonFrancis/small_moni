import 'package:flutter/material.dart';
import 'transactions.dart';

void main(List<String> args) {
  runApp(MyApp(UniqueKey()));
}

class MyApp extends StatelessWidget {
  const MyApp(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tranaction(),
    );
  }
}
