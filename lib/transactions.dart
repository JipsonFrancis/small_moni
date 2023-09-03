import 'package:flutter/material.dart';
import 'package:small_money/classes/transactionCard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:small_money/classes/transaction_card.dart';
import 'package:small_money/payment.dart';
import 'package:small_money/dashboard.dart';

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
            Center(
              child: Card(
                elevation: 2, // Add elevation for a card shadow
                margin: EdgeInsets.all(4), // Adjust margin as needed
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Increase border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align content to the left
                    children: [
                      Text(
                        'Expenses Trend',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150, // Adjust the graph's height as needed
                        child: LineChart(
                          LineChartData(
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(show: false),
                            borderData: FlBorderData(
                              show: false,
                              border: Border.all(
                                color: const Color(0xff37434d),
                                width: 1,
                              ),
                            ),
                            minX: 0,
                            maxX: 6,
                            minY: 0,
                            maxY: 6,
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 3),
                                  FlSpot(1, 1),
                                  FlSpot(2, 4),
                                  FlSpot(3, 2),
                                  FlSpot(4, 5),
                                  FlSpot(5, 1),
                                  FlSpot(6, 3),
                                ],
                                isCurved: true,
                                colors: [Colors.blue],
                                dotData: FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  colors: [
                                    Colors.blue.withOpacity(0.2)
                                  ], // Set fill color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  child: const TransactionCCard(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
