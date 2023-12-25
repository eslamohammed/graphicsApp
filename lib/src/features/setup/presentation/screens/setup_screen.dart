// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/customInputText.dart';
import '../../../../core/widget/primaryButton.dart';
import '../../../submitScreen/presentation/screens/submit_to_take_test_screen.dart';
import '../widgets/profile_setup_input_field.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {

  final formKey = GlobalKey<FormState>();

  final TextEditingController _occuptionController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _typeOfDesignerController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _portfolioController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();
  final TextEditingController _spwcController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return _setupProfile(context);
  }

  Widget _setupProfile(BuildContext context){
    
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: 1369,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF393939),
              Color(0xFF111111),
            ],
            stops: [
              0.0,
              1.0,
            ],
          ),
          color: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: _setupUI(context),
        ),
      ),
    );
  
  }

  Widget _setupUI(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: height*(1800/926),//*(1369/926)
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
                top: -965,
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
                bottom: -200,
                left: 0,
                right: 0,
                child: Container(
                  height: height,
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
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        // height: height*2,
                        width: width,
                        //height: height*(365/844),
                        //height: height*(382/878),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 27 ,bottom: 30,),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(//Sign up
                                  padding: const EdgeInsets.only(left: 36),
                                  child: Text("Sign up",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: HexColor("FFFFFF"),
                                      fontSize: 36.226,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                ),
                                Padding(//Just a small info to verify your, Please fill all the required fields. 
                                  padding: const EdgeInsets.only(left: 36,right: 124.93,top:10.13),
                                  child: Text("Just a small info to verify your, Please fill all the required fields. ",
                                  maxLines: 2,
                                    style: TextStyle(
                                      color: HexColor("999999"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                ),
                                              
                                Padding(//Occuption   Enter your occuption
                                  padding: const EdgeInsets.only(top: 27.87 , left: 36 , right: 29),
                                  child: CustomInputText(
                                    controller: _occuptionController,
                                    hintText: "Enter your occuption",
                                    labelText: "Occuption",
                                    fillColor: Colors.transparent,
                                  ),
                                ),
                                
                                Padding(//Address Enter your location
                                  padding: const EdgeInsets.only( top:  24,left: 36,right: 29 ,),
                                  child: CustomInputText(
                                    controller: _addressController,
                                    hintText: "Enter your location",
                                    labelText: "Address",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),
                                              
                                Padding(//Type of Designer Select type 
                                  padding: const EdgeInsets.only( top:  24, left: 36,right: 29),
                                  child: CustomInputText(
                                    controller: _typeOfDesignerController,
                                    hintText: "Select type",
                                    labelText: "Type of Designer",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),

                                Padding(//Description Write something
                                  padding: const EdgeInsets.only( top:  24, left: 36,right: 29),
                                  child: ProfileSetupMultiLine(
                                    controller: _descriptionController,
                                    hintText: "Write something",
                                    labelText: "Description",
                                    maxLine: 5,
                                    keyboardType: TextInputType.multiline,
                                  ),
                                ),

                                Padding(//Skills Add your skills
                                  padding: const EdgeInsets.only( top:  24,left: 36,right: 29 ,),
                                  child: CustomInputText(
                                    controller: _skillsController,
                                    hintText: "Add your skills",
                                    labelText: "Skills",
                                    fillColor: Colors.transparent,
                                  )
                                ),
                                              
                                Padding(//Portfolio link Add Link 
                                  padding: const EdgeInsets.only( top:  24, left: 36,right: 29),
                                  child: CustomInputText(
                                    controller: _portfolioController,
                                    hintText: "Add Link",
                                    labelText: "Portfolio link",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),

                                Padding(//Feedback ( optional ) share your feedback
                                  padding: const EdgeInsets.only( top:  24,left: 36,right: 29 ,),
                                  child: CustomInputText(
                                    controller: _feedbackController,
                                    hintText: "share your feedback",
                                    labelText: "Feedback ( optional )",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),
                                              
                                Padding(//Set per word cost Enter Cost 
                                  padding: const EdgeInsets.only( top:  24, left: 36,right: 29),
                                  child: CustomInputText(
                                    controller: _spwcController,
                                    hintText: "Enter Cost",
                                    labelText: "Set per word (design) cost",
                                    fillColor: Colors.transparent,
                                    // suffixicon0: Icons.visibility_sharp,
                                    // suffixicon1: Icons.visibility_rounded,
                                  )
                                ),
                                             

                                Padding(
                                  padding: const EdgeInsets.only(top: 25 ,left: 41 ,right: 41.99,bottom: 5),
                                  child: ProfileSetupImagePicker(
                                    frame: ImgAssets.uploadFrame,
                                    frameScale: 0.8,
                                    sample: ImgAssets.uploadSample,
                                    sampleScale: 0.8,
                                  ),
                                ),
                                
                                Center(//Upload size must be less than 10MB
                                  child: Text("Upload size must be less than 10MB",
                                    style: TextStyle(
                                      color: HexColor("#666666"),
                                      fontSize: 8.625,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                    ),
                                  ),
                                ),

                                Padding(//Verify & Continue
                                  padding: const EdgeInsets.only(top: 44,bottom: 58 ,left: 64,right: 64),
                                  child: PrimaryButton(
                                    width: (300/390)*width,
                                    height: (48/844)*height,
                                    //height: 48,
                                    borderRadius: BorderRadius.circular(5),
                                    child:const Text(
                                      "Verify & Continue",
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
                                          // Timer(Duration(seconds: 2), () {
                                          //   Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context)=>SubmitToTakeTestScreen(phoneNumber: '',)
                                                
                                          //     ),
                                          //   );
                                          // }),
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitToTakeTestScreen(phoneNumber: '',)))
                                          //API Part
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
              ),
            ],
          ),    
        ),
      ),
    );
  }

}