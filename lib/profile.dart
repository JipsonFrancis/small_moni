import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        child: Center(
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
                    const Text(
                      "Profile Settings",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Your Profile Infomation",
                          style: TextStyle(color: Colors.white30, fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // Circular image placeholder
                        Container(
                          width: 150, // Adjust the size of the circle as needed
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey, // Placeholder background color
                          ),
                          child: const Icon(
                            Icons.person, // Placeholder icon (user icon)
                            size: 100, // Adjust the icon size as needed
                            color: Colors.white, // Icon color
                          ),
                        ),
                        // Overlapping icon to change profile picture
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue, // Icon background color
                            ),
                            child: const Icon(
                              Icons
                                  .camera_alt, // Icon to change profile picture
                              size: 15, // Adjust the icon size as needed
                              color: Colors.white, // Icon color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
