
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/screens/home_controller.dart';

class RouteGenerator {
  final HomePageBloc homePageBloc = HomePageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomePageBloc>.value(
            value: homePageBloc,
            child: const Home(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}