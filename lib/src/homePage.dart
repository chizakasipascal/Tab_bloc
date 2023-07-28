import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bottom_navigation/bottom_navigation_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, currenttab) {
            return Text("HomeScreen $currenttab");
          },
        ),
      ),
      bottomNavigationBar: const CustomerBottomNavBar(),
    );
  }
}

class CustomerBottomNavBar extends StatelessWidget {
  const CustomerBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBloc = context.read<BottomNavigationBloc>();
    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTabIndex) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: currentTabIndex,
          onTap: (index) => bottomNavigationBloc.add(TabChangeEvent(index)),
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
