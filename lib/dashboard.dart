import 'package:flutter/material.dart';
import 'package:small_money/classes/card.dart';
import 'package:small_money/classes/transaction_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Color(0xFF15205A),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.wallet,
                  size: 30,
                  color: Color(0xFF1461D3),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.trending_up_sharp,
                  size: 30,
                  color: Color(0xFF1461D3),
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
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.keyboard_control_sharp,
                      size: 30,
                      color: Color(0xFF1461D3),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.white),
                        shape: BoxShape.circle),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
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
            Stack(
              children: const [
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: -20,
                  child: A_Card(hexColor: 0xFF0F0F0F),
                ),
                A_Card(
                  hexColor: 0xFFBEBEBE,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Transaction',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See All >',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TransactionCCard(),
            const SizedBox(
              height: 10,
            ),
            const TransactionCCard(),
          ],
        ),
      ),
    );
  }
}
