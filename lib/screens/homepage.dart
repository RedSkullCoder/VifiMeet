import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vifi_meet/variables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  List pageoptions = [
    videoConferenceScreen(),
    ProfileScreen(),
  ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //NAV BOTTOM
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: mystyle(17, Colors.blue),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: mystyle(17, Colors.black),
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        }, //ELEMENTS NAVIGATION
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call, size: 32), label: 'Video llamada'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 32), label: 'perfil'),
        ],
      ),
      body: InkWell(
        onTap: () {
          FirebaseAuth.instance.signOut();
        },
      ),
    );
  }
}
