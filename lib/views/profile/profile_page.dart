import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<Map> myProducts =
  List.generate(2, (index) => {"id": index, "name": "assets/img/profile"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
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
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/img/avatar.png'),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: const Text("John Morrison", style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.bold, fontSize: 18 )),
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () => Navigator.pushNamed(context, 'https://www.lgcy.io'),
                                        child: const Text("www.lgcy.io", style: TextStyle(fontFamily: "Montserrat", color: Colors.blue),)
                                    ),
                                    Image.asset('assets/img/messagecircle.png')
                                  ],
                                )
                                
                              ],
                            ),
                          )
                        ]
                    )
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text("Welcome to my life adventure",
                            style: TextStyle(fontFamily: "Montserrat", fontSize: 15),
                          )
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
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
                                    const Text("Our Adventure", style: TextStyle(fontFamily: "Montserrat", fontSize: 11)),
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