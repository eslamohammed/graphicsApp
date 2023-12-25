import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graphics/src/core/app_strings.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/features/Login/presentation/screen/login_screen.dart';
import 'package:graphics/src/features/register/presentation/screens/register_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key , required this.phoneNumber});

  final TextEditingController phoneNumber;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final formKey = GlobalKey<FormState>();
  final TextEditingController _pincode =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _otpScreen(context),
    );
  }

  Widget _otpScreen(BuildContext context){
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
                top: -225,
                bottom: 95.96,
                // left: -5,
                // right: -5,
                child: Container(
              //  height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.otpBackground),
                    fit: BoxFit.contain
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 128,
                bottom: 685,
                left: 5,
                right: 5,
                child:Container(
                //height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  // color: Colors.amberAccent,
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.otpdesigner),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),        

              Positioned(
                top: 607.89,
                child:Container(
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                          colors: <Color>[
                            AppColors.secondary,
                            AppColors.primary
                          ]
                        ),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(38),
                        topLeft: Radius.circular(38)
                      ),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,                       
                    children: [
                      const Padding(//Verification
                        padding: EdgeInsets.only(top: 31.11, left: 107, right: 107),
                        child: Text("Verification",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.23,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal
                          ),
                        ),
                      ),
                      
                      Container(//we have sent OTP to your registration mobile number
                        child: Padding(//we have sent OTP to your registration mobile number
                          padding: const EdgeInsets.only( top: 13,bottom: 35 ,left: 114.0 , right: 114.0 ),
                          child: Text("we have sent OTP to your registration mobile number : ${widget.phoneNumber}",
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

                      Form(
                        key: formKey,
                        child: Padding(//PinCode
                          padding: const EdgeInsets.only(left: 32,right: 32),
                            child: PinCodeTextField(
                            controller: _pincode,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Insert The Pin Code';//'${emptyErrorLabel}';
                              }else{
                                return null;
                              }
                            },
                            length: 4,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400
                            ),
                            appContext: (context),
                            onChanged: (value) {
                              debugPrint(value);
                              setState(() {
                                // currentText = value;
                              });},
                            pinTheme: PinTheme(
                              borderWidth: 1.5,
                              fieldHeight: 72.08,
                              fieldWidth: 84,
                              activeFillColor:  Colors.white,
                              selectedColor:  Colors.white,
                              activeColor:  Colors.grey,
                              inactiveColor: const Color(0xFF999999),
                              errorBorderColor: const Color(0xFF999999),
                              borderRadius: BorderRadius.circular(10),
                              shape: PinCodeFieldShape.box,
                            ),
                          ),
                        ),
                      ),

                      Container(// ! Automatically reading  OTP
                        width: width,
                        height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text('Automatically reading  OTP',
                              style: TextStyle(
                                fontSize: 12,
                                color:Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                        
                      Padding(//CREATE ACCOUNT
                        padding: const EdgeInsets.only(top: 34 ,left: 63,right: 63),
                        child: PrimaryButton(
                           height: (48/844)*height,
                           width: (300/390)*width,
                          //height: 48,
                          borderRadius: BorderRadius.circular(5),
                          child:const Text(
                            "CREATE ACCOUNT",
                            style: TextStyle(
                              color: Color.fromARGB(255, 223, 222, 222),
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
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>RegisterScreen(phoneNumber: widget.phoneNumber,)
                                    )
                                  )
                                }
                            // call api function to be procced
                            // Navigator.push(context,  MaterialPageRoute(
                            //     builder: (_) => BlocProvider<HomePageBloc>.value(
                            //       value: homePageBloc,
                            //       child: const Home(),
                            //     ),
                            //   ),
                            // ),
                          },
                        ),
                      ),
                      
                      Padding(//I already have an account ? Log In
                        padding: const EdgeInsets.only(top:15.0 ,bottom:46 ),
                        child: SizedBox(//dont have
                          //height: height*0.05,
                          child: Align(//I already have an account ? Log In
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: AppStrings.fontFamily3
                                ),
                                children: <TextSpan>[
                                  TextSpan(//I already have an account ?
                                    text: "I already have an account ? ",
                                    style: TextStyle(
                                      color: HexColor("#AAAAAA"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily3,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                    ),
                                  ),
                                  TextSpan(//create account
                                    text: "Log In",
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
                                      Navigator.push(context,MaterialPageRoute(builder: (context) => GraphicsLoginScreen()));
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
            ],
          ),
        ),
      )
    );
}


}