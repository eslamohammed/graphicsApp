import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:graphics/src/features/Login/presentation/screen/login_screen.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';

class DeactiveWindow extends StatelessWidget {
  
  const DeactiveWindow({super.key ,required this.switchValue});

  final  bool switchValue;

  @override
 Widget build(BuildContext context) {
    return _setting(context);
  }

  
 
  Widget _setting(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x11111100), Color(0x39393900)],
          stops: [1, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _appBar(context),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.61, right:25.61 ),
              child: SizedBox(
                // color: Colors.amber,
                height: 77,
                // width: width,
                //color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15 ,left: 30 , bottom: 15, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Notification",
                          maxLines: 1, 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            ),
                          ),
                      ),
                              
                      SizedBox(//switch
                        height: (22/844)*height,
                        width: (45.77/390)*width,
                        //color: Colors.black38,
                        child: Center(
                          child: Switch(
                            value: switchValue,
                            onChanged: (bool value) {
      
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        
            SizedBox(
              height: 77,
              child: TextButton(
                onPressed: () {
                },
                child:  Text(
                  'Deactive Account                                                        ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: AppStrings.fontFamily2,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: HexColor("D62525")
                  ) ,
                ),
              ),
            ),
      
            Container(
              padding: const EdgeInsets.only(top: 0,bottom: 247,left: 43,right: 35),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 10
                ),
                child: Container(
                  height: 416,
                  width: width,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF3D3D3D),
                        Color(0xFF111111),
                      ],
                      stops: [0.0, 1.0],
                      transform: GradientRotation(141 * 3.14 / 180),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Icon(
                           Icons.warning_amber_outlined,
                           color:HexColor("F5BE2F"),
                           size: 100,
                        ),
                      ),
                      const Padding(//Deactive Account text
                        padding: EdgeInsets.only(top: 14),
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
                      Container(//Your account will be deactive till for 3 months,
                        padding: const EdgeInsets.only(top: 9.38,left: 23,right: 22.6),
                        child:  Text(
                          "Your account will be deactive till for 3 months, If you are inactive still after 3 months your account will be deleted ",
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:HexColor("DDDDDD"),
                            fontSize: 12,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            ),
                          ),
                      ),

                      Padding( // Deactive Account button
                        padding: const EdgeInsets.only(top:53.62),
                        child: SizedBox(
                          height: 48,
                          width: 256,
                          child: TextButton(
                            onPressed: () {
                              // do something when the button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GraphicsLoginScreen() 
                                ),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return const Color.fromRGBO(255, 255, 255, 0.1);
                                },
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Deactive Account',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: AppStrings.fontFamily2,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white
                                ) ,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


   PreferredSizeWidget _appBar(BuildContext context ){
    return AppBar(
        elevation: 0,
        toolbarHeight: 98,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 14.22),
          child: SizedBox(//Setting
            child: Text(
              "Setting",
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: AppStrings.fontFamily2,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                ),
              ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 41 ),
          child: IconButton(icon: const Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 20,),
            onPressed: () => {
              Navigator.pop(context),
            }
          ),
        ),   
      );
  }



  Widget _settingBody(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.61, right:25.61 ),
          child: SizedBox(
            // color: Colors.amber,
            height: 77,
            // width: width,
            //color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 15 ,left: 30 , bottom: 15, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Notification",
                      maxLines: 1, 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        ),
                      ),
                  ),
                          
                  SizedBox(//switch
                    height: (22/844)*height,
                    width: (45.77/390)*width,
                    //color: Colors.black38,
                    child: Center(
                      child: Switch(
                        value: switchValue,
                        onChanged: (bool value) {
  
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    
        SizedBox(
            height: 77,
          // width: (351/390)*width,
          //height: 77,
          // width: (351/390)*width,
          child: TextButton(
            onPressed: () {
            },
            child:  Text(
              'Deactive Account                                                        ',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppStrings.fontFamily2,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: HexColor("D62525")
              ) ,
            ),
          ),
        ),
  
        Container(
          padding: const EdgeInsets.only(top: 0,bottom: 247,left: 43,right: 35),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10
            ),
            child: Container(
              height: 416,
              // height: 50,
              //  width: width,
              // color: Colors.white,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0x3d3d3d00), Color(0x11111100)],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                
              ),
            ),
          ),
        ),
      ],
    );
  }

}