import 'dart:ffi';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final int hexColor;
  final IconData trend;
  final String money;
  final String title;

  const TransactionCard(
      {super.key,
      required this.hexColor,
      required this.trend,
      required this.money,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 2)
          ],
          border: Border.all(width: 1, color: Colors.white)),
      child: Column(
        children: [
          Container(
              child: Icon(
            trend,
            color: Color(hexColor),
            size: 50,
          )),
          const SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.black87),
          )),
          const SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            "MKW " + money,
            style: TextStyle(fontSize: 15, color: Color(hexColor)),
          )),
        ],
      ),
    );
  }
}
