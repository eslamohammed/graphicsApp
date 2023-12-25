
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../homePage/presentation/home_page_bloc/home_page_bloc.dart';
import '../../../homePage/presentation/screens/home_controller.dart';


class DeactiveAccount extends StatelessWidget {
  DeactiveAccount({super.key});

  final HomePageBloc homePageBloc = HomePageBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("CC0C0C"),
      appBar: _appBar(context),
      body: _deactiveAccount(context)
    );
  }

  
  PreferredSizeWidget _appBar(BuildContext context ){

    double height = MediaQuery.of(context).size.height;
    return AppBar(
      elevation: 0,
      toolbarHeight: (98/844)*height,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 41 ),
        child: IconButton(icon: const Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 20,),
        onPressed: () => Navigator.pop(context),
        ),
      )   
    );
  }


  Widget _deactiveAccount(BuildContext context){
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

  return Stack(
      children: [
        Positioned(
          top:  (170.72/844)*height,
          left: (96/390)*width,
          child: Center(
            child: Container(
              height: (33/844)*height,
              width: (201/390)*width,
              //color: Colors.transparent,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Deactive Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    ),
                  ),
              ),
            ),
          ),
        ),

        Positioned(
          top:  (213.1/848)*height,
          left: (43/393)*width,
          right: (43/393)*width,
          child: Center(
            child: Container(
              // height: (54/848)*height,
              // width: (304.4/393)*width,
              //color: Colors.amber,
              child: const Text(
                "Your account will be deactive till for 3 months, If you are inactive still after 3 months your account will be deleted ",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: AppStrings.fontFamily2,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  ),
                ),
            ),
          ),
        ),


        Positioned(
          //top:  ((738-120)/844)*height,
          bottom:  (30/848)*height,
          left: (19/393)*width,
          
          child: SizedBox(
            height: (48/848)*height,
            width: (351/393)*width,
            child: TextButton(
              onPressed: () {
                // do something when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider<HomePageBloc>.value(
                      value: homePageBloc,
                      child: const Home(),
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return HexColor("#1F1F1F");
                  },
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Deactive Account',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: AppStrings.fontFamily2,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white
                  ) ,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}