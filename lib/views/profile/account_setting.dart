import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: const Text("Account Setting", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/login'),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
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
                padding: const EdgeInsets.only(top: 30, left: 150),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Username", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 153),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Password", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 10),
                child: const Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Profile Link", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                    Text("www.lgcy.io/username", style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 130),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone number", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 20), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 110),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Push Notifications", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            // setState(() {
                            //   isSwitched = value;
                            // });
                          },
                        ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 140),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Delete Account", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 60),
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(width: 1.0),
                        minimumSize: const Size.fromHeight(35),
                        elevation: 0.00,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text("Save", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat", color: Colors.black))
                  )
              )
            ]
        ),
      ),
    );
  }
}
