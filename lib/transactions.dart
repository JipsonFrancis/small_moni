import 'package:flutter/material.dart';
import 'package:small_money/classes/transactionCard.dart';
import 'package:fl_chart/fl_chart.dart';

class Tranaction extends StatefulWidget {
  const Tranaction({super.key});

  @override
  State<Tranaction> createState() => _TranactionState();
}

class _TranactionState extends State<Tranaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1461D3),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 30,
                  color: Color(0xFF1461D3),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.wallet,
                  size: 30,
                  color: Color(0xFF1461D3),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.trending_up_sharp,
                  size: 30,
                  color: Color(0xFF15205A),
                ))
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xFF1461D3),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.white),
                        shape: BoxShape.circle),
                  ),
                  const Text(
                    "Transactions",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    // child: const Icon(
                    //   Icons.notifications_outlined,
                    //   size: 30,
                    //   color: Color.fromRGBO(255, 255, 255, 1),
                    // ),
                    // decoration: BoxDecoration(
                    //     border: Border.all(width: 2, color: Colors.white),
                    //     shape: BoxShape.circle),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                TransactionCard(
                  hexColor: 0xFFFF5252,
                  trend: Icons.trending_down,
                  money: " -206,000.00",
                  title: "Total Borrowed",
                ),
                TransactionCard(
                  hexColor: 0xFF20C64C,
                  trend: Icons.trending_up,
                  money: " 350, 000.00",
                  title: "Total Payments",
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
