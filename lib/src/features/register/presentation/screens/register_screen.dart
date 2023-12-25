import 'package:flutter/material.dart';
import 'package:graphics/src/core/widget/customInputText.dart';
import 'package:graphics/src/features/setup/presentation/screens/setup_screen.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/customInputPassword.dart';
import '../../../../core/widget/primaryButton.dart';
import '../../../Login/presentation/widgets/phone_number_picker.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatefulWidget {
  TextEditingController? phoneNumber;
   RegisterScreen( {
    Key ?key,
    required this.phoneNumber}):super(key: key);
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final formKey = GlobalKey<FormState>();

    int? selectedvalue = 1;
    int? selectedvalue2 = 1;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _register(context)
    );
  }

  Widget _register(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: -100,
                left: 0,
                child: Container(
                height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.signUpBackground),
                    fit: BoxFit.fitWidth
                    ),
                  ),
                ),
              ),
              
              Positioned(
                top: 0,
                bottom: 745,
                left: 1,
                right: 1,
                child:Container(
                //height: (488/926)*height,
                width: width,
                decoration: BoxDecoration(
                  // color: Colors.amberAccent,
                  image: DecorationImage(
                    image: AssetImage(ImgAssets.signUpdesigner),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),     
              
              Positioned(
                top: 258,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
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
                    child: SingleChildScrollView(
                      child: Container(
                        width: width,
                        //height: height*(365/844),
                        //height: height*(382/878),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40 ,bottom: 30,),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(//Sign up
                                  padding: const EdgeInsets.only(left: 31),
                                  child: Text("Sign up",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: HexColor("FFFFFF"),
                                      fontSize: 36.23,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                ),
                                Padding(//Please fill all the details to start creating content
                                  padding: const EdgeInsets.only(left: 32.02,top:1.02),
                                  child: Text("Please fill the form.",
                                  maxLines: 1,
                                    style: TextStyle(
                                      color: HexColor("FFFFFF"),
                                      fontSize: 12.8,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                ),
                                              
                                Padding(//Name   Eg: Jhon Mathew
                                  padding: const EdgeInsets.only(top: 37.31 , left: 32.02 , right: 32.98),
                                  child: CustomInputText(
                                    controller: _nameController,
                                    hintText: "Eg: Jhon Mathew",
                                    labelText: "Name",
                                    fillColor: Colors.transparent,
                                  ),
                                ),
                                              
                                Padding(//Phone
                                  padding: const EdgeInsets.only(left: 32,right: 33 , top:  30.07),
                                  child: Column(
                                    children: [
                                      Container(
                                      child: PhoneNumberCodePicker(phoneNumber: widget.phoneNumber,),
                                        // child: _picker(context),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                Padding(//Create Password
                                  padding: const EdgeInsets.only(left: 32,right: 33 , top:  38),
                                  child: CustomInputPassword(
                                    controller: _passwordController,
                                    secure: false,
                                    hintText: "Password",
                                    labelText: "Create Password",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),
                                              
                                Padding(//Confirm Password
                                  padding: const EdgeInsets.only(left: 32,right: 33 , top:  22),
                                  child: CustomInputPassword(
                                    controller: _confirmPasswordController,
                                    secure: false,
                                    hintText: "Password",
                                    labelText: "Confirm Password",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),
                                
                                // RADIO BUTTON
                                Padding(//term & condition and privcy policy
                                  padding: const EdgeInsets.only(top:22.0,left:36),
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
                                  padding: const EdgeInsets.only(top:27.0,bottom: 10.0,left:36),
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
                                              print("${value}:${widget.phoneNumber!.text}");
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
                                              
                                Padding(//Continue
                                  padding: const EdgeInsets.only(top: 34 ,left: 63,right: 63),
                                  child: PrimaryButton(
                                    width: (300/390)*width,
                                    height: (48/844)*height,
                                    //height: 48,
                                    borderRadius: BorderRadius.circular(5),
                                    child:Text(
                                      "CONTINUE",
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SetupScreen()))
                                          //API Part
                                              
                                          // Navigator.push(context,  MaterialPageRoute(
                                          //     builder: (_) => BlocProvider<HomePageBloc>.value(
                                          //       value: homePageBloc,
                                          //       child: const Home(),
                                          //     ),
                                          //   ),
                                          // ), 
                                        }
                                      // call api function to be procced
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              )
            ],
          ),    
        ),
      ),
    );
  }
}