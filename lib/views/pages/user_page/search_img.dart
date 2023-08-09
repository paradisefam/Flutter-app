import 'package:flutter/material.dart';

class SearchImage extends StatelessWidget {
  final List<Map> myProducts = List.generate(
      15, (index) => {"id": index, "name": "assets/img/search/res"});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
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
                // hintText: 'Amanda...',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.0, color: Colors.black), // BorderSide
                ), // OutlineInputBorder
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.0, color: Colors.black), // BorderSide
                ), // BorderSide,
              ),
            ),
          ),
        ),
        centerTitle: true,
        // actions: const [
        //   Padding(
        //       padding: EdgeInsets.only(top: 18, right: 30),
        //       child: Text("Invite", style: TextStyle(color: Colors.black))
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 650,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: myProducts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15)
                          // ),
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: Column(
                            children: [
                              Image.asset(
                                  myProducts[index]["name"] + "$index.png"),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
