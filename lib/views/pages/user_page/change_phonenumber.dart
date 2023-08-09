import 'package:flutter/material.dart';

class ChangePhoneNumber extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text("Phone Number", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 22, fontWeight: FontWeight.bold)),
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
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40,),
                    const Text("Phone number", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 35,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: const Size.fromHeight(35),
                              side: const BorderSide(width: 1.0),
                              elevation: 0.00,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text("Save", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat", color: Colors.black))
                        )
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
