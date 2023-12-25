part of 'home_page_bloc.dart';


abstract class HomePageState /*extends Equatable*/ {
/*
  @override
  List<Object> get props => [];
*/
  final int tabIndex;
  const HomePageState({required this.tabIndex});  


}
class HomePageInitial extends HomePageState {
  
  const HomePageInitial({required super.tabIndex});

}
