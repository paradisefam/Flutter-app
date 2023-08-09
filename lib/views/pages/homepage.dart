import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/forget-password'),
          icon: const Icon(Icons.search, color: Colors.black),
        ),
        title: Image.asset('assets/logo/small_logo.png'),
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
        child: Column(children: [
          // Image.asset('assets/img/banner2.png', width: width, fit: BoxFit.fitWidth,)
          Container(
              padding: const EdgeInsets.only(top: 22.88, left: 20, bottom: 20),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Suggested",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'))
                  ])),
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
            height: 140,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 103,
                    height: 171,
                    color: const Color(0xFFE9E8E8),
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/img/model.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text("rachelmorrison",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 12)),
                      ],
                    ),
                    // Image.asset('assets/img/model.png');
                  );
                }),
          ),
          Image.asset(
            'assets/img/background.png',
            width: width,
            fit: BoxFit.fitWidth,
          ),
        ]),
      ),
    );
  }
}
