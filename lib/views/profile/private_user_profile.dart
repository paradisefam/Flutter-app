import 'package:flutter/material.dart';

class PrivateUserProfile extends StatelessWidget {
  final List<Map> myProducts =
      List.generate(3, (index) => {"id": index, "name": "assets/img/profile"});

  final List<String> titles = ["Our Adventure", "Video of adventure", "Journey"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        actions: [
          Image.asset('assets/img/gearshape.png'),
        ], //
        title: const Text("johnmorrison", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontWeight: FontWeight.bold ),),
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
          BottomNavigationBarItem(label: "Home", icon: Image.asset('assets/img/home.png')),
          BottomNavigationBarItem(label: "Multi-User", icon: Image.asset('assets/img/user.png')),
          BottomNavigationBarItem(label: "Plus", icon: Image.asset('assets/img/plus.png')),
          BottomNavigationBarItem(label: "Alram", icon: Image.asset('assets/img/alram.png')),
          BottomNavigationBarItem(label: "User", icon: Image.asset('assets/img/multi_user.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                // The profile image
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/img/avatar.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // The badge
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Image.asset('assets/img/camera_circle_fill.png')
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: const Text("Create Timeline", style: TextStyle(fontFamily: "Montserrat", color: Colors.white, fontSize: 11))
                            )
                          ]
                      )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 20, left: 30),
                          child: Text("John Morrison", style: TextStyle(fontFamily: "Montserrat", fontSize: 18, fontWeight: FontWeight.bold),)
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Text("Welcome to my life adventure", style: TextStyle(fontFamily: "Montserrat", fontSize: 15),)
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: TextButton(
                            onPressed: () => {},
                            child: const Text("www.lgcy.io", style: TextStyle(fontFamily: "Montserrat", fontSize: 13)),
                          ),
                      ),
                    ],
                  ),
                  Container(
                    height: 350,
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: myProducts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: Column(
                              children: [
                                Image.asset(myProducts[index]["name"]+"$index.png"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // titles.map((e) => Text("$e", style: TextStyle(fontFamily: "Montserrat", fontSize: 11))).toList(),
                                    const Text("Our version", style: TextStyle(fontFamily: "Montserrat", fontSize: 11)),
                                    Image.asset('assets/img/more.png')
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}