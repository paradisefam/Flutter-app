import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {

  TextEditingController textarea = TextEditingController();
  TextEditingController textarea1 = TextEditingController();
  bool isSwitched = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: const Text("Create Timeline", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 22, fontWeight: FontWeight.bold)),
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
                padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(bottom: 20), child: Text("Title", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"))),
                    TextField(
                      controller: textarea,
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20, bottom: 20), child: Text("Description", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat"))),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: textarea1,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                      ),
                    ),
                    Center(
                      // padding: EdgeInsets.only(left: 50),
                      child: Stack(
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
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 90, right: 80),
                            child: Text("Public", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              // setState(() {
                              //   isSwitched = value;
                              // });
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 30, right: 50),
                            child: Text("Followers Shown", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat")),
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              // setState(() {
                              //   isSwitched = value;
                              // });
                            },
                          ),
                        ],
                      ),
                    ),
                    Center(
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
                            child: const Text("Create Timeline", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, fontFamily: "Montserrat", color: Colors.black))
                        )
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
