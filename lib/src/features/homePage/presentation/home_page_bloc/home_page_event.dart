part of 'home_page_bloc.dart';

abstract class HomePageEvent {}

class TabChange extends HomePageEvent{
  final int tabIndex;

  TabChange({required this.tabIndex});

}