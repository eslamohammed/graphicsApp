// ignore_for_file: depend_on_referenced_packages, invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';

// ignore: must_be_immutable
class ProfileSetupImagePicker extends StatefulWidget {
  final  String frame;
  final  String sample;
  final  double frameScale;
  final  double sampleScale; 
  const ProfileSetupImagePicker({Key? key , required this.frame ,required this.sample, required this.frameScale, required this.sampleScale}) : super(key: key);



  @override
  State<ProfileSetupImagePicker> createState() => _ProfileSetupImagePickerState();
}

class _ProfileSetupImagePickerState extends State<ProfileSetupImagePicker> {

  File? uplaodProfileImage;
  // Profile Image Picker
  Future<void> chooseProfileImage() async{
    var chosenImage = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      try{
        uplaodProfileImage = File(chosenImage!.path);
      }catch (e) {
        debugPrint(e.toString());
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        chooseProfileImage();
      },
      child: Container(
        width: (345/390)*width,
        height: (69/844)*height,
        decoration: BoxDecoration(
            color: Colors.transparent,
            image:  DecorationImage(
              alignment: Alignment.center,
              scale: widget.frameScale,
              //image: AssetImage('assets/images/upload.png'),
              image: AssetImage(widget.frame),
            )
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image:  DecorationImage(
                alignment: Alignment.center,
                scale: widget.sampleScale,
                //image: AssetImage('assets/images/upload.png'),
                image: AssetImage(widget.sample),
              )
            ),
          ),
        ),
      ),
    );
  }
}


class ProfileSetupMultiLine extends StatefulWidget {
  final int? maxLine;
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  final String? emptyErrorLabel;
  final TextInputType? keyboardType;
  const ProfileSetupMultiLine({Key? key, this.maxLine, this.hintText, required this.controller, this.emptyErrorLabel, this.keyboardType, this.labelText}) : super(key: key);

  @override
  State<ProfileSetupMultiLine> createState() => _ProfileSetupMultiLineState();
}

class _ProfileSetupMultiLineState extends State<ProfileSetupMultiLine> {
    String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: AppStrings.fontFamily2,
          fontSize: 12.08,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      maxLines: widget.maxLine,
      controller: widget.controller,
      // cursorColor: Colors.white,
      keyboardType: widget.keyboardType,
      validator: (value){
        if(value == null || value.isEmpty){
          return '${widget.emptyErrorLabel}';
        }else{
          return null;
        }
      },
      onChanged: (value) {
        setState(() {
          _enteredText = value;
        });
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle:  const TextStyle(
            color:  Colors.white,
            fontFamily: AppStrings.fontFamily2,
            fontSize: 12.08,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        
        counter: Container(
          margin: const EdgeInsets.only(
            right: 19,
            bottom: 10,
          ),
          child: Text(
            '${_enteredText.length.toString()} /30',
            style: const TextStyle(
              fontFamily: AppStrings.fontFamily2,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 10.0,
              color: Color.fromRGBO(183, 183, 183, 1),
            ),
          ),
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: AppStrings.fontFamily2,
          fontSize: 12.0235,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        border: OutlineInputBorder(
          //borderSide: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        
        // contentPadding: const EdgeInsets.all(10.0),
        contentPadding: const EdgeInsets.symmetric(vertical: 27,horizontal: 26),
        enabledBorder: OutlineInputBorder(
        borderSide:const BorderSide(width: 1,color: Colors.white,),
        borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red),),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red),),
      ),
    );
  }
}

class ProfileSetupDateInputField extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final String? emptyErrorLabel;
  const ProfileSetupDateInputField({Key? key, this.hintText, required this.controller, this.emptyErrorLabel}) : super(key: key);

  @override
  State<ProfileSetupDateInputField> createState() => _ProfileSetupDateInputFieldState();
}

class _ProfileSetupDateInputFieldState extends State<ProfileSetupDateInputField> {

  // Date Picker
  Future<void> pickDate() async{
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(), firstDate: DateTime(1000), lastDate: DateTime.now());
    if(pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        widget.controller.text = formattedDate; //set output date to TextField value.
      });
    }else {
      widget.controller.text = DateTime.now().toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: TextFormField(
        onTap: () {
          pickDate();
          },
        controller: widget.controller,
        cursorColor: AppColors.primary,
        keyboardType: TextInputType.datetime,
        validator: (value){
          if(value == null || value.isEmpty){
            return '${widget.emptyErrorLabel}';
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12.0
          ),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF999999)),
            borderRadius: BorderRadius.all( Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Color(0XFF999999)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}