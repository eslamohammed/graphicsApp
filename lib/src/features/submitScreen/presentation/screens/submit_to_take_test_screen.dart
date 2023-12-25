// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:graphics/src/features/homePage/presentation/screens/home_page_screen.dart';
import 'package:graphics/src/features/submitScreen/presentation/screens/test.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';

class SubmitToTakeTestScreen extends StatefulWidget {
  String phoneNumber;
   SubmitToTakeTestScreen({Key? key , required this.phoneNumber}) : super(key: key);

  @override
  State<SubmitToTakeTestScreen> createState() => _SubmitToTakeTestScreen();
}

class _SubmitToTakeTestScreen extends State<SubmitToTakeTestScreen> {

  @override
  Widget build(BuildContext context) {
    

    return _takeTest(context);  }
}

Widget _takeTest(BuildContext context){
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
        padding: const EdgeInsets.only(top: 255,bottom: 255,left: 39 ,right: 39),
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
            padding: const EdgeInsets.only(top: 37,bottom: 19,left: 25,right: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(//roundedRightSig
                      width: 76,
                      height: 76,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ImgAssets.roundedRightSign),
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
                    padding: const EdgeInsets.only(top: 12.26,right: 14.85 , left: 15),
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
                              
                  
                  Center(//Primary Take Test Button
                    child: Padding(
                      padding: const EdgeInsets.only(top : 29.73),
                      child: PrimaryButton(
                        width: width,
                        height: (48/926)*height,
                        //gradient: LinearGradient(colors: [Colors.white, Colors.white]),
                        borderRadius: BorderRadius.circular(8),
                        child:const Text(
                          "Take Test",
                          style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: AppStrings.fontFamily3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onPressed: () => {
                          // call api function to be procced
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Test())))
                        },
                      ),
                    ),
                  ),
                              
                  //SizedBox(height: (133/844)*height,),
                              
                
                  Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(//Skip Test
                              text: "Skip Test",
                              style: TextStyle(
                                color: HexColor("#FFFFFF"),
                                fontSize: 12,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                                }
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),              
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}