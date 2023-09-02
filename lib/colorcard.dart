import 'package:flutter/material.dart';
import 'package:small_money/classes/card.dart';

class CardColor extends StatefulWidget {
  const CardColor({super.key});

  @override
  State<CardColor> createState() => _CardColorState();
}

class _CardColorState extends State<CardColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1461D3),
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
                    "Card color",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 2, color: Colors.white),
                      //     shape: BoxShape.circle),
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Please, select a color to differentiat this card from other cards you have attached and organize your cards better.",
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
                A_Card(hexColor: 0xFF191919),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Colors.blue, // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Color.fromARGB(
                                    255, 47, 105, 18), // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Color.fromARGB(
                                    255, 142, 112, 21), // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Colors.blue, // Background color
                              ),
                              child: Text(""))
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Colors.blue, // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Color.fromARGB(
                                    255, 47, 105, 18), // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                              onPressed: () {
                                // Button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // Circular shape
                                primary: Color.fromARGB(
                                    255, 142, 112, 21), // Background color
                              ),
                              child: Text("")),
                          ElevatedButton(
                            onPressed: () {
                              // Button click logic here
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), // Circular shape
                              primary: Colors.white,
                              // Background color
                            ),
                            child: Icon(
                              Icons.add, // Add your desired icon or text here
                              size: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
                print("2nd btn clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Color(0xFF1461D3),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
