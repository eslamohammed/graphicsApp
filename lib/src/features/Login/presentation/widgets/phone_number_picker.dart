import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:graphics/src/core/app_colors.dart';
import 'package:graphics/src/core/app_strings.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/features/Login/presentation/screen/login_screen.dart';
import '../../../../core/utils/hex_color.dart';

//  final GraphicsLoginScreen _graphicsLoginScreen = GraphicsLoginScreen();

class PhoneNumberCodePicker extends StatefulWidget {
  PhoneNumberCodePicker ({super.key, required this.phoneNumber});
  final TextEditingController? phoneNumber;
  final GraphicsLoginScreen _phoneNumber = GraphicsLoginScreen();

  @override
  State<PhoneNumberCodePicker> createState() => _PhoneNumberCodePickerState();
}
class _PhoneNumberCodePickerState extends State<PhoneNumberCodePicker > {
  CountryCode? countryCode;
  late final countryPicker = const FlCountryCodePicker();
  //late FlCountryCodePicker countryPicker;
  //FlCountryCodePicker countryPicker;

  // @override
  // void initState(){
  //   final favoriteCountries =['EG','IN','US','UK'];
  //   countryPicker = FlCountryCodePicker(
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
    return _picker(context);
  }

  Widget _picker(BuildContext context){
    return TextFormField(
      // ignore: unnecessary_null_comparison
      controller:widget._phoneNumber.phoneNumber != null ? widget.phoneNumber: widget.phoneNumber,//widget.phoneNumber != null ? widget.phoneNumber : widget.phoneNumber ,
      validator: (value){
          if(value == null || value.isEmpty){
            return 'Please Insert The required Data';//'${emptyErrorLabel}';
          }else{
            return null;
          }
        },
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly       // Only numbers can be entered
      ],
      //textInputAction: TextInputAction.done,
      style: TextStyle(
        color: HexColor("#FFFFFF"),
        fontFamily: AppStrings.fontFamily2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      maxLines: 1,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
          borderSide:BorderSide(width: 1,color: Colors.white,),
          borderRadius: BorderRadius.circular(15)),
        labelText: "  Mobile Number  ",
        labelStyle: TextStyle(
        color: Colors.white,
        fontFamily: AppStrings.fontFamily2,
        fontSize: 12.08,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        ),
        border: OutlineInputBorder(
          //borderSide: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        
        fillColor:AppColors.inputColor, //fillColor == null ? Colors.white : fillColor,
        filled: true,
        hintText: "000 000 0000",
        hintStyle: const TextStyle(
        color: Colors.white,
        fontFamily: AppStrings.fontFamily2,
        fontSize: 12.08,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        ),
        
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 6),
          margin: const EdgeInsets.symmetric(horizontal: 6),

          child:Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: ()async{
                  final code = await countryPicker.showPicker(context: context);
                  setState(() {
                    countryCode = code;
                  });
                  debugPrint("${widget.phoneNumber!.text}");
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      child: countryCode != null ? countryCode!.flagImage() : null //CountryCodeFlag(flagUri: 'assets/flags/in.png'),
                    ),
                    
                    SizedBox(width: 5,),
                    
                    Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColors.inputColor,
                        //color: Colors.white,
                        //borderRadius: BorderRadius.circular(8.62516),
                      ),
                      child: Text(
                        countryCode?.dialCode !=null ? ("${countryCode!.dialCode}"): ("+20"),
                        style: TextStyle(
                        color: HexColor("#FFFFFF"),
                        fontFamily: AppStrings.fontFamily2,
                        fontSize: 12.08,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Image.asset(
                        ImgAssets.arrowBottom,
                        width: 22,
                        height: 22,
                      ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
 
  }


}