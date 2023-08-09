import 'package:flutter/material.dart';

class Setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: const Text("Setting", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 22, fontWeight: FontWeight.bold)),
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
                padding: const EdgeInsets.only(top: 30, left: 120),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Profile Setting", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 65), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 130),
                child: const Row(
                  children: [
                    Text("Katie Morrison", style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 150),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Account", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 85), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 105),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("QR Code Scanner", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                    Padding(padding: const EdgeInsets.only(left: 45), child: Image.asset('assets/img/qrcode.png', width: 30, height: 30,))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 100),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Privacy Policy & Terms", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 20), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 170),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Help", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 95), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, left: 155),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Log out", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"),),
                    Padding(padding: EdgeInsets.only(left: 85), child: Icon(Icons.arrow_forward_ios, color: Colors.black) ,)
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
