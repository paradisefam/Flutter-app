import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  // List<ChatMessage> messages = [
  //   ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  //   ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  //   ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
  //   ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  //   ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  // ];

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
        // actions: const [
        //   Padding(
        //       padding: EdgeInsets.only(top: 18, right: 30),
        //       child: Text("Invite", style: TextStyle(color: Colors.black))
        //   )
        // ],
        title: const Text("rachelmorrisonr", style: TextStyle(color: Colors.black, fontFamily: "Montserrat", fontSize: 15, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(0),
                      ),
                      color: (Colors.black),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Text("Hey. This is a demo of the tex. "
                        "This is the demo of the text."
                        "This is the demo of the text."
                        "This is the demo of the text", style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: "Radley"),),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text("9:25 AM", style: TextStyle(fontFamily: "Radley", fontSize: 14)),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(15),
                        ),
                        color: (Color(0xFFFDF3F3)),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: const Text("Hey. This is a demo of the tex. "
                          "This is the demo of the text."
                          "This is the demo of the text."
                          "This is the demo of the text", style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: "Radley"),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("9:45 AM", style: TextStyle(fontFamily: "Radley", fontSize: 14)),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(0),
                      ),
                      color: (Colors.black),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Text("Hey. This is a demo of the tex.  This is the demo of the text. ", style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: "Radley"),),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text("9:50 AM", style: TextStyle(fontFamily: "Radley", fontSize: 14)),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.camera_alt, color: Colors.black, size: 23, ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write something...",
                        hintStyle: TextStyle(color: Colors.black54),
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
                        ), // BorderSid
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    backgroundColor: Colors.white,
                    elevation: 0,
                    child: const Icon(Icons.send_sharp, color: Colors.black,size: 23,),
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
