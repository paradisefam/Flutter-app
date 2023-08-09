// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class SecretTimeline extends StatelessWidget {
  final List<Map> myProducts = List.generate(
      12, (index) => {"id": index, "name": "assets/img/search/res"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: const Text(
          "rachelmorrison",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.people,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFE9E8E8),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
              label: "Home", icon: Image.asset('assets/img/home.png')),
          BottomNavigationBarItem(
              label: "Multi-User", icon: Image.asset('assets/img/user.png')),
          BottomNavigationBarItem(
              label: "Plus", icon: Image.asset('assets/img/plus.png')),
          BottomNavigationBarItem(
              label: "Alram", icon: Image.asset('assets/img/alram.png')),
          BottomNavigationBarItem(
              label: "User", icon: Image.asset('assets/img/multi_user.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/img/model.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: const Row(
                                    children: [
                                      Text("My adventure",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      Icon(Icons.hourglass_bottom_sharp)
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ])),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Welcome to my life adventure",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 15),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 500,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: myProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15)
                      // ),
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Column(
                        children: [
                          Image.asset(myProducts[index]["name"] + "$index.png"),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
