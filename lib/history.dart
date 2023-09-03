import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:small_money/classes/transaction_card.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                    "Histroy",
                    style: TextStyle(fontSize: 30, color: Colors.white),
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
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 25, color: Colors.white70),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "May",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Card(
                    elevation: 2, // Add elevation for a card shadow
                    margin: EdgeInsets.all(4), // Adjust margin as needed
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Increase border radius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Loans",
                                style: TextStyle(color: Color(0xFF1461D3)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.trending_down,
                                color: Colors.redAccent,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("MWK 200 000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1461D3)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: Color(0xFF15205A),
                    elevation: 2, // Add elevation for a card shadow
                    margin: EdgeInsets.all(4), // Adjust margin as needed
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Increase border radius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Settled",
                                style: TextStyle(color: Color(0xFFFFFFFF)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.trending_up_outlined,
                                color: Colors.greenAccent,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("MWK 50 000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF)))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 25, color: Colors.white70),
                )),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  TransactionCCard(),
                  SizedBox(
                    height: 10,
                  ),
                  TransactionCCard(),
                  SizedBox(
                    height: 10,
                  ),
                  TransactionCCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
