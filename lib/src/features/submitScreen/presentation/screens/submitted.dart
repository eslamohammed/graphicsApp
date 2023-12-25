import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/screens/home_controller.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';

class SubmittedScreen extends StatefulWidget {
  const SubmittedScreen({super.key});

  @override
  State<SubmittedScreen> createState() => _SubmittedScreenState();
}

class _SubmittedScreenState extends State<SubmittedScreen> {

  final HomePageBloc homePageBloc = HomePageBloc();

 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider<HomePageBloc>.value(
            value: homePageBloc,
            child: const Home(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return _submitted(context);
  }


  Widget _submitted(BuildContext context){
double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  
  return Scaffold(
    body: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(ImgAssets.submittedBackground),
            fit: BoxFit.cover
          ),
        color: Colors.white,
        ),
      child:Padding(
        padding: const EdgeInsets.only(top: 285,bottom: 365,left: 39 ,right: 39),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF393939),
                  Color(0xFF111111),
                ],
                stops: [
                  0.0,
                  1.0,
                ],
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.only(top: 37,bottom: 72.73,left: 40,right: 39.85),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Center(//roundedRightSig
                  child: Container(
                      width: (76/428)*width,
                      height: (76/926)*height,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ImgAssets.roundedRightSign),
                      ),
                    ),
                  ),
                ),
            
                const Padding(//Submited
                  padding: EdgeInsets.only(top: 57,),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text('Submited',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.429,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.26),
                  child: Text('We have sucessfuly suybmited your profile.  we will get back to you soon. Till then take a test',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                      color: HexColor("999999"),
                      fontSize: 12.214,
                      //letterSpacing: 0.4
                    ),
                  ),
                ),              
              ],
            ),
          ),
        ),
      ),
    ),
  );
  }
}