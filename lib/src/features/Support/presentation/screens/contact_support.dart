// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:graphics/src/features/Login/presentation/widgets/phone_number_picker.dart';
import 'package:graphics/src/features/Support/presentation/screens/support_and_help.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/customInputText.dart';
import '../../../../core/widget/primaryButton.dart';
import '../../../setup/presentation/widgets/profile_setup_input_field.dart';

class ContactSupport extends StatefulWidget {
  
  const ContactSupport({super.key});

  @override
  State<ContactSupport> createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {

  final formKey = GlobalKey<FormState>();


  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  _submitSupport(context);
  }

    Widget _submitSupport(BuildContext context){

//    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            // Color(0xFF111111),
            HexColor("393939"),
            // Color(0xFF393939),
            HexColor("111111")
            // Colors.white,
          ],
          stops: [
            0, 
          0.6,
          // 1.0
          ],
          tileMode: TileMode.clamp,
          transform: const GradientRotation(141 * (3.141592653589793) / 180),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 93,
          backgroundColor:Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(left: 14.22),
            child: SizedBox(//Support & Help
              width: width,
              child: const Text(
                "Support & Help",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: AppStrings.fontFamily2,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  ),
                  maxLines: 1,
                ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 41 ),
            child: IconButton(icon: const Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 20,),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportAndHelpScreen())) ,
            ),
          )   
        ),
        body: _contactSupport(context),
    
      ),
    );
  }

  Widget _contactSupport(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return 
    // Scaffold(
    //   // resizeToAvoidBottomInset: false,
    //   body: 
      Container(
          
          height: (751/844)*height,
          width: width,
          color:Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                            
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(//Name   Eg: Jhon Mathew
                      padding: const EdgeInsets.only(top: 20 , left: 32.02 , right: 32.98),
                      child: CustomInputText(
                        controller: _nameController,
                        hintText: "Eg: Jhon Mathew",
                        labelText: "Name",
                        fillColor: Colors.transparent,
                      ),
                    ),
                    
                                  
                    Padding(//Phone
                      padding: const EdgeInsets.only(left: 32,right: 33 , top:  30.07),
                      
                      child: PhoneNumberCodePicker(phoneNumber: _phoneNumberController,),
                        // child: _picker(context),
                    ),
                    
                    Padding(//Email Address   Example@gmail.com
                      padding: const EdgeInsets.only(top: 20 , left: 32.02 , right: 32.98),
                      child: CustomInputText(
                        controller: _emailController,
                        hintText: "Example@gmail.com",
                        labelText: "Email Address",
                        fillColor: Colors.transparent,
                      ),
                    ),
              
                    Padding(//Description Write something
                      padding: const EdgeInsets.only( top:  24, left: 36,right: 29),
                      child: ProfileSetupMultiLine(
                        controller: _descriptionController,
                        hintText: "Write something",
                        labelText: "Description",
                        emptyErrorLabel: "please give a briefly description for your issue",
                        maxLine: 5,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: (11/844)*height,),
              const SizedBox(height: 11,),
          
              Padding(
                padding: const EdgeInsets.only(left: 64,right: 64),
                child: PrimaryButton(
                  height: 48,
                  onPressed: (){
                    //Contact support function
                    if(formKey.currentState!.validate())
                      {
                      // call api function to be procced

                      }
                  },
                  width: width,
                  borderRadius: BorderRadius.circular(8),
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(
                      fontFamily: AppStrings.fontFamily2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),                
            ],
          ),
        );
    // );
  }

}