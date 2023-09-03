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
                              color: Color(0xFF5163BF), // Icon background color
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
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(15),
                      child: const Text(
                        "Personal Information",
                        style: TextStyle(color: Colors.white70, fontSize: 22),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                          border:
                              Border.all(color: Colors.grey), // Add a border
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Account Number",
                              style: TextStyle(color: Color(0xFF1461D3)),
                            ),
                            Text(
                              "3024982387",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                          border:
                              Border.all(color: Colors.grey), // Add a border
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Username",
                              style: TextStyle(color: Color(0xFF1461D3)),
                            ),
                            Text(
                              "Aryan.Stirk2",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                          border:
                              Border.all(color: Colors.grey), // Add a border
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(color: Color(0xFF1461D3)),
                            ),
                            Text(
                              "aryan.stirk2nd@gmail.com",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                          border:
                              Border.all(color: Colors.grey), // Add a border
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Mobile Phone",
                              style: TextStyle(color: Color(0xFF1461D3)),
                            ),
                            Text(
                              "+265 93 2938 2324",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                          border:
                              Border.all(color: Colors.grey), // Add a border
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Address",
                              style: TextStyle(color: Color(0xFF1461D3)),
                            ),
                            Text(
                              "Gulliver 49 Ka...",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ))
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
