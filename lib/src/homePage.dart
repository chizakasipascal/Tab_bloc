import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: 'Alarme'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined), label: 'User')
        ],
      ),
    );
  }
}
