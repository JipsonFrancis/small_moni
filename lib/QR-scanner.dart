import 'package:flutter/material.dart';
import 'package:small_money/payment.dart';
import 'package:small_money/transactions.dart';
import 'package:small_money/dashboard.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1461D3),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 25),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Color(0xFF15205A),
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Payment()));
                },
                icon: Icon(
                  Icons.wallet,
                  size: 30,
                  color: Color(0xFF1461D3),
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Tranaction()));
                },
                icon: Icon(
                  Icons.trending_up_sharp,
                  size: 30,
                  color: Color(0xFF1461D3),
                ))
          ],
        ),
      ),
    );
  }
}
