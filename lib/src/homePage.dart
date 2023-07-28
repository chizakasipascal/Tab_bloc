import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bottom_navigation/bottom_navigation_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: const Scaffold(
        body: Center(
          child: Text("Home"),
        ),
        bottomNavigationBar: CustomerBottomNavBar(),
      ),
    );
  }
}

class CustomerBottomNavBar extends StatelessWidget {
  const CustomerBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTab) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: 'Alarme'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'User')
          ],
        );
      },
    );
  }
}
