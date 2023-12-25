// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:graphics/src/core/app_strings.dart';

import '../utils/hex_color.dart';

class CustomInputPassword extends StatefulWidget {
  const CustomInputPassword({
    Key? key,
    required this.hintText,
    required this.secure,
    required this.controller,
    this.labelText,
    this.prefixIcon,
    this.suffixicon0,
    this.suffixicon1,
    this.fillColor,
    this.top,
}):super(key: key);
  final double? top;
  final String hintText;
  final String? labelText;
  final bool secure;
  final TextEditingController controller;
  final IconData? suffixicon0;
  final IconData? suffixicon1;
  final IconData? prefixIcon;
  final Color? fillColor;

  @override
  State<CustomInputPassword> createState() => _CustomInputPasswordState();
}

class _CustomInputPasswordState extends State<CustomInputPassword> {
    bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          style: TextStyle(
            color: HexColor("#FFFFFF"),
            fontFamily: AppStrings.fontFamily2,
            fontSize: 12.08,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          validator: (value){
            if(value == null || value.isEmpty){
              return 'Please Insert The password';//'${emptyErrorLabel}';
            }else{
              return null;
            }
          },
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          controller: widget.controller,
          obscureText: isHidden,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 27,horizontal: 26),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
              borderSide:const BorderSide(width: 1,color: Colors.white,),
              borderRadius: BorderRadius.circular(15)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: const BorderSide(color: Colors.red),),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: const BorderSide(color: Colors.red),),
            fillColor: widget.fillColor == null ? Colors.white : widget.fillColor,
            filled: true,
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontFamily: AppStrings.fontFamily2,
              fontSize: 12.0235,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: HexColor("999999"),
              fontFamily: AppStrings.fontFamily2,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            //icon: new Icon(icon)
            prefixIcon: widget.prefixIcon != null ? Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                widget.prefixIcon,
                color: HexColor("#999999"),
                //size: 50,
              ), 
            ) : null ,
            suffixIcon: ((widget.suffixicon0 != null) && (widget.suffixicon1 !=null)) ? IconButton(
              icon: isHidden ? Icon(widget.suffixicon0) : Icon(widget.suffixicon1), //Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: togglePasswordVisibility,
            ): IconButton(
                icon: isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                onPressed: togglePasswordVisibility, ),
            /*prefix: Icon(
              icon,
              color: HexColor("#999999"),
              //size: 50,
            )*/
      
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
              ),
            ),
          ),
        );
  }

  void togglePasswordVisibility() => setState(
    () => isHidden = !isHidden,
    //widget.icon = Icons.lock_open
  );
}

