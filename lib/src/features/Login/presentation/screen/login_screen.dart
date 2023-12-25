// import 'dart:ui' as ui;

// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphics/src/core/app_colors.dart';
import 'package:graphics/src/core/app_strings.dart';
import 'package:graphics/src/core/utils/hex_color.dart';
import 'package:graphics/src/features/Login/presentation/screen/otp.dart';
import 'package:graphics/src/features/Login/presentation/widgets/phone_number_picker.dart';
//import 'package:graphics/src/features/Login/presentation/widgets/phone_number_picker.dart';
import 'package:graphics/src/features/homePage/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/screens/home_controller.dart';

import '../../../../core/assets_manager.dart';
import '../../../../core/widget/primaryButton.dart';

class GraphicsLoginScreen extends StatefulWidget {
   GraphicsLoginScreen({super.key});

  final TextEditingController phoneNumber = TextEditingController();
  @override
  State<GraphicsLoginScreen> createState() => _GraphicsLoginScreenState();
}

class _GraphicsLoginScreenState extends State<GraphicsLoginScreen> {

  final HomePageBloc homePageBloc = HomePageBloc();
  final formKey = GlobalKey<FormState>();

  //final PhoneNumberCodePicker phoneNumberCodePicker = PhoneNumberCodePicker();
  
    int? selectedvalue = 1;
    int? selectedvalue2 = 1;
  // CountryCode? countryCode;
  // late FlCountryCodePicker countryPicker;
  // FlCountryCodePicker? countryPicker;
  // @override
  // void initState() {
  //   final favoriteCountries =['EG','IN','US','UK'];
  //     countryPicker = FlCountryCodePicker(
  //     favorites: favoriteCountries,
  //     favoritesIcon: const Icon(
  //      Icons.star,
  //      color: Colors.amber, 
  //     )
  //   );
  //   super.initState();
  // }

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _loginScreen(context));
  }

Widget _loginScreen(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;
  return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child:Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: -27,
                left: 0,
                child: Container(
                height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.loginBackground),
                    fit: BoxFit.fitWidth
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 128,
                bottom: 685,
                left: -2,
                right: -2,
                child:Container(
                //height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  // color: Colors.amberAccent,
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.designer),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),        
              // Positioned(
              //   top: 128,
              //   left: 2,
              //   right: 2,
              //   child: Container(
              //   height: 179,
              //   width: 429,
              //   // decoration: BoxDecoration(
              //   //   image: DecorationImage(
              //   //     image: AssetImage(ImgAssets.LoginBackground),
              //   //     fit: BoxFit.cover
              //   //     ),
              //   //   ),
              //   child: BackdropFilter(
              //     filter: ui.ImageFilter.blur(
              //       sigmaX: 5,
              //       sigmaY: 5
              //       ),
              //       child: Container(
              //         color: Colors.black.withOpacity(0),
              //         child: Center(child: Text("Graphics Designer",style: TextStyle(fontSize: 50),)),
              //       ),
              //     )
              //   ),
              // ),

              Positioned(
                top: 395,
                child:Container(
                  width: width,
                  // height: (531/926)*height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                          colors: <Color>[
                            AppColors.secondary,
                            AppColors.primary
                          ]
                        ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(38),
                        topLeft: Radius.circular(38)
                      ),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:30.0 , left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,  
                                  
                      children: [
                        Padding(//welcome
                          padding: const EdgeInsets.only(top:82.0),
                          child: Container(
                            //color: Colors.blue,
                            // width: width*(175/390),
                            // height: height*(54/844),
                            width: width,
                            //height: height,
                            child: Center(
                              child: Text("Welcome",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //height: 2,
                                color: Colors.white,
                                fontSize: 36.23,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(//Let’s get a best content Graphic
                          child: Padding(
                            padding: const EdgeInsets.only(left: 114.0 , right: 114.0 ),
                            child: Text("Let’s get a best content Graphic Designer for you.",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: TextStyle(
                              color: HexColor("#999999"),
                              fontSize: 12.08,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal
                              ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 18),
                  
                        Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Form(
                              key: formKey,
                              child: Container(
                                child: PhoneNumberCodePicker(phoneNumber: widget.phoneNumber,),
                                // child: _picker(context),
                              ),
                            ),
                          ),
                    
                        // RADIO BUTTON
                        Padding(//term & condition and privcy policy
                          padding: const EdgeInsets.only(top:34.0,bottom: 10.0,left:15),
                          child: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Transform.scale(
                                  scale: 1,
                                  child: Radio<int>(
                                    value: 0,
                                    toggleable: true,
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    groupValue: selectedvalue,
                                    onChanged: (value){
                                      setState(() {
                                        selectedvalue = value;
                                        print(value);
                                      });
                                    },
                                  ),
                                ),
                                  Text("I Agree to ",
                                  style: TextStyle(
                                    color: HexColor("#B7B7B7"),
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),Text("Term & Condition",
                                  style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),Text(" and ",
                                  style: TextStyle(
                                    color: HexColor("#B7B7B7"),
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),
                                  Text("Privacy Policy.",
                                  style: TextStyle(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                          
                        Padding(//remember me
                          padding: const EdgeInsets.only(top:20.0,bottom: 10.0,left:15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Transform.scale(
                                scale: 1,
                                child: Radio<int>(
                                  value: 0,
                                  toggleable: true,
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  groupValue: selectedvalue2,
                                  onChanged: (value){
                                    setState(() {
                                      selectedvalue2 = value;
                                      print("${value}:${widget.phoneNumber.text}");
                                    });
                                  },
                                ),
                              ),
                              Text("Remember me",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#B7B7B7"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),    
                                  ],
                                ),
                        ),
                        
                        Padding(//Login
                          padding: const EdgeInsets.only(top: 34 ,left: 63,right: 63),
                          child: PrimaryButton(
                             width: (300/390)*width,
                             height: (48/844)*height,
                            //height: 48,
                            borderRadius: BorderRadius.circular(5),
                            child:Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: AppStrings.fontFamily3,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () => {
                              if(formKey.currentState!.validate())
                                {
                                  //API Part

                                  Navigator.push(context,  MaterialPageRoute(
                                      builder: (_) => BlocProvider<HomePageBloc>.value(
                                        value: homePageBloc,
                                        child: const Home(),
                                      ),
                                    ),
                                  ), 
                                }
                              // call api function to be procced
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()))
                            },
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top:15.0 ,bottom:46 ),
                          child: Container(//dont have
                            height: height*0.05,
                            child: Align(//Don't have an account ==> Sign Up
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily3
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(//You don’t have an account?
                                      text: "You don’t have an account ?  ",
                                      style: TextStyle(
                                        color: HexColor("#AAAAAA"),
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily3,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal
                                      ),
                                    ),
                                    TextSpan(//create account
                                      text: "Create Account",
                                      style: TextStyle(
                                        color: AppColors.hint,
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily3,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                        //Navigator.pushNamed(context, "/register");
                                        
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => OtpScreen(phoneNumber: widget.phoneNumber,)));
                                      }
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),                 
                      ]
                    ),
                  ),
                ),              
              ),
            ],
          ),
        ),
      )
    );
}

  // Widget _picker(BuildContext context){
  //   return TextFormField(
  //     controller: _phoneNumber,
  //     textAlignVertical: TextAlignVertical.center,
  //     keyboardType: TextInputType.number,
  //     inputFormatters: <TextInputFormatter>[
  //       FilteringTextInputFormatter.digitsOnly       // Only numbers can be entered
  //     ],
  //     //textInputAction: TextInputAction.done,
  //     style: TextStyle(
  //       color: HexColor("#FFFFFF"),
  //       fontFamily: AppStrings.fontFamily2,
  //       fontSize: 12.08,
  //       fontWeight: FontWeight.w400,
  //       fontStyle: FontStyle.normal,
  //     ),
  //     maxLines: 1,
  //     decoration: InputDecoration(

  //       fillColor:AppColors.inputColor, //fillColor == null ? Colors.white : fillColor,
  //       filled: true,
  //       hintText: "000 000 0000",
  //       hintStyle: const TextStyle(
  //       color: Colors.white,
  //       fontFamily: AppStrings.fontFamily2,
  //       fontSize: 12.08,
  //       fontWeight: FontWeight.w400,
  //       fontStyle: FontStyle.normal,
  //       ),
  //       border: OutlineInputBorder(
  //         borderSide: const BorderSide(width: 1),
  //         borderRadius: BorderRadius.circular(15),
  //       ),
        
  //       prefixIcon: Container(
  //         padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 6),
  //         margin: const EdgeInsets.symmetric(horizontal: 6),

  //         child:Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             GestureDetector(
  //               onTap: ()async{
  //                 final code = await countryPicker.showPicker(context: context);
  //                 setState(() {
  //                   countryCode = code;
  //                 });
  //               },
  //               child: Row(
  //                 children: <Widget>[
  //                   Container(
  //                     child: countryCode != null ? countryCode!.flagImage() : null //CountryCodeFlag(flagUri: 'assets/flags/in.png'),
  //                   ),
                    

                    
  //                   SizedBox(width: 5,),
                    
                    
  //                   Container(
  //                   //padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 6),
  //                     decoration: BoxDecoration(
  //                       color: AppColors.inputColor,
  //                       //color: Colors.white,
  //                       //borderRadius: BorderRadius.circular(8.62516),
  //                     ),
  //                     child: Text(
  //                       countryCode?.dialCode !=null ? "${countryCode!.dialCode}": ("+20"),
  //                       style: TextStyle(
  //                       color: HexColor("#FFFFFF"),
  //                       fontFamily: AppStrings.fontFamily2,
  //                       fontSize: 12.08,
  //                       fontWeight: FontWeight.w400,
  //                       fontStyle: FontStyle.normal,
  //                       ),
  //                     ),
  //                   ),
  //                   Image.asset(
  //                       ImgAssets.arrowBottom,
  //                       width: 22,
  //                       height: 22,
  //                     ),
  //                   Text(
  //                     "|",
  //                     style: TextStyle(
  //                       color: Colors.grey,
  //                       fontSize: 45,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
 
  // }

}



/*



*/

          