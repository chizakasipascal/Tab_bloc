part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class TabChangeEvent extends BottomNavigationEvent {
  final int newindex;
  const TabChangeEvent(this.newindex);

  @override
  List<Object> get props => [newindex];
}
