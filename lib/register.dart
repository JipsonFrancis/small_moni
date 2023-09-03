import 'package:flutter/material.dart';
import 'package:small_money/dashboard.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1461D3),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                // const Text(
                //   "Welcome back, lets get to managing",
                //   style: TextStyle(
                //       fontSize: 15,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 156, 156, 156),
                //       fontStyle: FontStyle.normal),
                // ),
                // SizedBox(height: 55),

                // email field
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.lock),
                            hintText: "Name",
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 15.0),
                // email field
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 15.0),

                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12.0)),
                    // ignore: prefer_const_constructors
                    child: Center(
                      // child: const Text(
                      //   "Next",
                      //   style: TextStyle(
                      //     color: Color(0xFF1461D3),
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 20,
                      //   ),
                      // ),
                      child: TextButton(
                        onPressed: () {
                          // Add your registration logic here
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dashboard()));
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            side: const BorderSide(
                                color: Colors.white), // Border color
                          ),
                        ),
                        child: const Text("Next"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                            ),
                          ),
                          child: const Text(
                            "Or",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Your code here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.facebook,
                        size: 20,
                        color: Color(0xFF1461D3),
                      ),
                    ),
                    const SizedBox(
                        width: 16), // Adding some spacing between the buttons
                    ElevatedButton(
                      onPressed: () {
                        // Your code here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.wordpress,
                        size: 20,
                        color: Color(0xFF1461D3),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Already a member ?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 146, 145, 145)),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
