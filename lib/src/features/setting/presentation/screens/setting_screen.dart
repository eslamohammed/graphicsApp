
import 'package:flutter/material.dart';
// import 'package:graphics/src/features/setting/presentation/screens/deactive_account.dart';
import 'package:graphics/src/features/setting/presentation/widgets/deactive_window.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';


class SettingScreen extends StatefulWidget {
  
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x11111100), Color(0x39393900)],
          stops: [1, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        
        appBar:_appBar(context),
        body: _setting(context),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context ){
    return AppBar(
      elevation: 0,
      toolbarHeight: 98,
      backgroundColor: Colors.transparent,
      title: const Padding(
        padding: EdgeInsets.only(left: 14.22),
        child: SizedBox(//Setting
          child: Text(
            "Setting",
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: AppStrings.fontFamily2,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              ),
            ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 41 ),
        child: IconButton(icon: const Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 20,),
          onPressed: () => {
            Navigator.pop(context)
          }
        ),
      ),   
    );
  }

  Widget _setting(BuildContext context){
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.61, right:25.61 ),
          child: SizedBox(
            // color: Colors.amber,
            height: 77,
            // width: width,
            //color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 15 ,left: 30 , bottom: 15, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Notification",
                      maxLines: 1, 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        ),
                      ),
                  ),
                          
                  SizedBox(//switch
                    height: (22/844)*height,
                    width: (45.77/390)*width,
                    //color: Colors.black38,
                    child: Center(
                      child: Switch(
                        value: _switchValue,
                        onChanged: (bool value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                          
                ],
              ),
            ),
          ),
        ),
    
        SizedBox(
           height: 77,
          // width: (351/390)*width,
          //height: 77,
          // width: (351/390)*width,
          child: TextButton(
            onPressed: () {
              // do something when the button is pressed
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> DeactiveAccount()));
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  DeactiveWindow(switchValue:_switchValue,)));
              // deactive_window.DeactiveWindow();
            },
            child:  Text(
              'Deactive Account                                                        ',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppStrings.fontFamily2,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: HexColor("D62525")
              ) ,
            ),
          ),
        ),
      ],
    );
  }
}