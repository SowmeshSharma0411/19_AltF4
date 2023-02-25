import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('ProfilePage'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //first expanded to contain circle avatar, name and button
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                    //backgroundImage: AssetImage('Images/man_face.jpg'),
                    radius: 60,
                  ),
                  Text(
                    'Joe Mama',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 34, 37, 215)),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                      child: Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //
            //below coulmn is for displaying student data
            //
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  Div(),
                  textRow(category: 'Customer ID', answer: '7854836367'),
                  Div(),
                  textRow(category: 'Mobile', answer: '9038829980'),
                  Div(),
                  textRow(category: 'E-mail', answer: 'abc@gmail.com'),
                  Div(),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Bottom_Bar(), //defined in bottom_bar.dart
    );
  }
}

class textRow extends StatelessWidget {
  textRow({this.category, this.answer});
  final String? category;
  final String? answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Text(
              category!,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            ),
          ),
          Expanded(
            child: Text(
              answer!,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Div() {
  return const Divider(
    color: Colors.black12,
    thickness: 1,
  );
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        backgroundColor: Color(0xffF2F2F2),
        child: ListView(
          children: [
            TopInfo(),
            GestureDetector(onTap: () {}, child: myButton('Home', Icons.home)),
            GestureDetector(
                onTap: () {}, child: myButton('Search', Icons.search)),
            myButton('chat', Icons.chat),
            GestureDetector(
                onTap: () {},
                child: myButton(
                    'List of stores', Icons.store_mall_directory_rounded)),
            myButton('Announcements - Events', Icons.add_alert_rounded),
            myButton('QR code', Icons.qr_code),
          ],
        ),
      ),
    );
  }
}

class TopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromARGB(255, 47, 27, 226),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 40, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              Text(
                'Joe Mama',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Id: 4588971',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myButton(String ButtonName, IconData Icondata) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 15),
    child: Row(
      children: [
        Icon(
          Icondata,
          color: Color.fromARGB(255, 38, 21, 192),
          size: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            ButtonName,
            style: const TextStyle(
                color: Color.fromARGB(255, 42, 23, 209),
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        ),
      ],
    ),
  );
}
