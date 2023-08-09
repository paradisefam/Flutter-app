import 'package:flutter/material.dart';

class NotificationAlram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title: const Text(
          "Notification",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Quattrocento",
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Notifocations",
                    style: TextStyle(
                        fontFamily: "Quattrocento",
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 50,
                ),
                Text("Inbox",
                    style: TextStyle(
                        fontFamily: "Quattrocento",
                        fontSize: 12,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(children: [
                    const CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/img/small_bg.png'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 14),
                      child: Text("username ",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quattrocento",
                              fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text("commented on your post",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Quattrocento",
                          )),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/img/search/natural.png'),
                        ))
                  ]),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(children: [
                      const CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        radius: 20,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text("username ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Quattrocento",
                                fontWeight: FontWeight.bold)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text("liked your post",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quattrocento",
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 95),
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/img/search/natural.png'),
                          ))
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
                          backgroundImage:
                              AssetImage('assets/img/small_bg.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text("username ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Quattrocento",
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text("is following your timeline ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quattrocento",
                            )),
                      ),
                    ]),
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
