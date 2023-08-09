import 'package:flutter/material.dart';

class CreateUserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/register'),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: const EdgeInsets.only(top: 150.0),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create Your account",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'))
                  ])),
          Container(
            padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      label: Center(
                    child: Text("Username"),
                  )),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 300, left: 300),
            child: Row(
              children: [
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/create-password'),
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
