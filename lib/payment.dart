import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                  color: Color(0xFF1461D3),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.wallet,
                  size: 30,
                  color: Color(0xFF15205A),
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
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xFF1461D3),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.white),
                      shape: BoxShape.circle),
                ),
                Container(
                    child: Text(
                  "Pay Loan",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Available Balance",
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "MK - 206,000.50",
              style: TextStyle(fontSize: 40, color: Colors.redAccent),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Please, enter the amount of money transfer in below field.",
              style: TextStyle(fontSize: 20, color: Colors.white38),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter Amount",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                      color: const Color.fromARGB(255, 228, 228, 228)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.money),
                      hintText: "MWK 2000.00",
                    ),
                  ),
                ),
              )),
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(6.0)),
              // ignore: prefer_const_constructors
              child: Center(
                child: const Text(
                  "PAY",
                  style: TextStyle(
                    color: Color(0xFF1461D3),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
