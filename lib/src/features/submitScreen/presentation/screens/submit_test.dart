import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/features/submitScreen/presentation/screens/submitted.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';
import '../../../setup/presentation/widgets/profile_setup_input_field.dart';

class SubmitTestScreen extends StatefulWidget {
  const SubmitTestScreen({super.key});

  @override
  State<SubmitTestScreen> createState() => _SubmitTestScreenState();
}

class _SubmitTestScreenState extends State<SubmitTestScreen> {
  @override
  Widget build(BuildContext context) {
    return _submitTestUI(context);
  }

  Widget _submitTestUI(BuildContext context){

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
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
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
         body: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(//Submit Your Test
                padding: const EdgeInsets.only(left: 117,right: 118),
                child: SizedBox(
                //  width: (155/390)*width,
                  child: Text("Submit Your Test",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("FFFFFF"),
                      fontSize: 24,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                      ),
                    maxLines: 1,
                    ),
                ),
              ),

              //Test & Create a brand identity copy for a fashion brand.
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24,left: 62,right: 62),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(//Test
                          "Test",
                          style: TextStyle(
                            color: HexColor("#FFFFFF"),
                            fontSize: 24,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal
                          ),
                        ),
                        Padding(//Info Icon
                          padding: const EdgeInsets.only(right:12.5),
                          child: IconButton(
                            onPressed: (){
                                //action coe when button is pressed
                            }, 
                            icon: const Icon(Icons.info_outline),
                            iconSize: 18,
                            color: HexColor("FFFFFF"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(//Create a brand identity copy for a fashion brand.
                    padding: const EdgeInsets.only(top:4.0,bottom: 34,right: 62,left: 61),
                    child: SizedBox(
                      // width: (305/390)*width,
                      child: Text("Create a brand identity copy for a fashion brand. Targe audience are 18 - 32 yrs and location is based in bangalore",
                        style: TextStyle(
                          color: HexColor("#999999"),
                          fontSize: 12.075,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ),
               ],
              ),
              
              // UPLOAD file
              Padding(
                padding: const EdgeInsets.only(right: 42,left: 41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      SizedBox(
                        height: (167/926)*height,
                        //  width: (345/426)*width,
                        // height: 174,
                        child: ProfileSetupImagePicker(
                          frame: ImgAssets.uploadFramebig,
                          frameScale: 0.8,
                          sample: ImgAssets.uploadFile,
                          sampleScale: 2,
                        )),
                      
                      SizedBox(height: (10/844)*height ,width: width,),
              
                      Padding(//Upload size must be less than 10MB
                        padding: const EdgeInsets.only(top: 19 ,left: 138,right: 138 ,bottom: 49),
                        child: Text("Upload size must be less than 10MB",
                        maxLines: 1,
                          style: TextStyle(
                            color: HexColor("999999"),
                            fontSize: 8.625,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                          ),
                        ),
                      ),
                  ],
                ),
              ),  

              
              Padding(//Submit test Button
                padding: const EdgeInsets.only(left: 60 ,right: 68),
                child: PrimaryButton(
                  height: 48,
                  width:width,
                  borderRadius: BorderRadius.circular(8),
                  child: const Text(
                    "SUBMIT TEST",
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.08,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () => {
                    // call api function to be procced
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => SubmittedScreen())))
                  },
                ),
              ),                      
           ],
          ),
        );
  }
}