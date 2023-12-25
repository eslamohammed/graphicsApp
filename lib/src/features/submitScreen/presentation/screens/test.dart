
import 'package:flutter/material.dart';
import 'package:graphics/src/features/submitScreen/presentation/screens/submit_test.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';

class Test extends StatelessWidget {
  const Test ({super.key});

  @override
  Widget build(BuildContext context) {
    return _test(context);
  }

  Widget _test(BuildContext context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  
  return Scaffold(
          body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(ImgAssets.submittedBackground),
                  fit: BoxFit.cover
                ),
              color: Colors.white,
              ),
            child:Padding(
              padding: const EdgeInsets.only(top: 285,bottom: 285,left: 39 ,right: 39),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
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
                    borderRadius: BorderRadius.all(
                       Radius.circular(20)
                    ),
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 67,bottom: 67,left: 25,right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(//Test
                            "Test",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 24,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Padding(//info Icon
                            padding: const EdgeInsets.only(top: 5,right:4),
                            child: IconButton(
                              onPressed: (){
                                  //action coe when button is pressed
                              }, 
                              icon: const Icon(Icons.info_outline),
                              iconSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      
                      Padding(//Create a brand identity copy for a fashion brand.
                        padding: const EdgeInsets.only(top: 15, left: 8),
                        child: Text('Create a brand identity copy for a fashion brand. Targe audience are 18 - 32 yrs and location is based in bangalore .Create a brand identity copy for a fashion brand. Targe audience are 18 - 32 yrs and location is based in bangalore Create a brand identity copy for a fashion brand. Targe audience are 18 - 32 yrs and location is based in bangalore',
                          textAlign: TextAlign.start,
                          maxLines: 10,
                          style: TextStyle(
                            color: HexColor("999999"),
                            fontSize: 12.075,
                          ),
                        ),
                      ),
                                  
                      
                      Center(//Primary Take Test Button
                        child: Padding(
                          padding: const EdgeInsets.only(top : 34),
                          child: PrimaryButton(
                            width: width,
                            height: (48/926)*height,
                            //gradient: LinearGradient(colors: [Colors.white, Colors.white]),
                            borderRadius: BorderRadius.circular(8),
                            child:const Text(
                              "Take Test",
                              style: TextStyle(
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: AppStrings.fontFamily3,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () => {
                              // call api function to be procced
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => SubmitTestScreen())))
                            },
                          ),
                        ),
                      ),        
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
}

}