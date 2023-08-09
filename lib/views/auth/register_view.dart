import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lgcy_flutter/resources/arrays.dart';
import 'package:lgcy_flutter/components/bottom_picker.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 200),
                child: const Column(children: [
                  Text("Create Your account", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'))
                ])
            ),
            Container(
              padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name '),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  // obscureText: true,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(35)),
                  onPressed: () {
                    _openDatePicker(context);
                  },
                  child: const Text('Date of Brith'),
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    style: TextStyle(fontSize: 14, color: Colors.black, ),
                    children: [
                      TextSpan(
                          text: "By signing up you agree to our "
                      ),
                      TextSpan(
                          text: "Terms and Privacy Policy",
                          style: TextStyle(
                              decoration: TextDecoration.underline
                          )
                      )
                    ]
                ),
              )

            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text("Already have an account?"),
                 TextButton(
                   onPressed: () => Navigator.pushNamed(context, "/login"),
                   child: const Text('Sign in', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                 )
               ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(top: 35, left: 300),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/create-username'),
                    child: const Text('Next', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _openDatePicker(BuildContext context) {
    BottomPicker.date(
      title: 'Set your Birthday',
      dateOrder: DatePickerDateOrder.dmy,
      pickerTextStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onChange: (index) {
        print(index);
      },
      onSubmit: (index) {
        print(index);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }
}