import 'package:flutter/material.dart';

class InviteMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0.00,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: Colors.black
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black), // BorderSide
                ), // OutlineInputBorder
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black), // BorderSide
                ), // BorderSide,
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18, right: 30),
            child: Text("Invite", style: TextStyle(color: Colors.black))
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("username", style: TextStyle(color: Colors.black, fontFamily: "Quattrocento1", fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 190),
                        child: Icon(Icons.check),
                      )
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("username", style: TextStyle(color: Colors.black, fontFamily: "Quattrocento1", fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 190),
                        child: Icon(Icons.check),
                      )
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("username", style: TextStyle(color: Colors.black, fontFamily: "Quattrocento1", fontWeight: FontWeight.bold)),
                      )
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("username", style: TextStyle(color: Colors.black, fontFamily: "Quattrocento1"))
                      )
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}