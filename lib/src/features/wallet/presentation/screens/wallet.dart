
import 'package:flutter/material.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';
import '../widgets/payout_card.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

  final List<Widget> cardList = [
    PayoutCard(),
    PayoutCard(),
    PayoutCard(),
    PayoutCard(),
    PayoutCard(),  
    PayoutCard(),
    PayoutCard(),
    PayoutCard(),
    PayoutCard(),
    // Add more widgets here.
  ];

  @override
  Widget build(BuildContext context) {
    return _wallet(context);
  }

  Widget _wallet(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height*1.1,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient:  LinearGradient(
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
          body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65,left: 38,right: 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("736ADB"),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 27,left: 39,bottom: 43),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(//₹ 50.00 & Available balance
                            height: (69/844)*height,
                            width: (116/390)*width,
                            child: Column(
                              children: [
                                SizedBox(//₹50.00
                                  // height: (48/844)*height,
                                  width: (116/390)*width,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Text(//#20.00
                                      "₹ 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                      ),
                                      
                                    ),
                                  ),
                                ),
                                Padding(//Available balance
                                  padding: const EdgeInsets.only(left:5.0,right: 5),
                                  child: SizedBox(
                                    // height: (18/844)*height,
                                    width: (109/390)*width,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(//Available balance
                                        "Available balance",
                                        style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                          fontFamily: AppStrings.fontFamily2,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // SizedBox(height: (42/844)*height,),
                        
                          Padding(
                            padding: const EdgeInsets.only(left: 42),
                            child: SizedBox( //+ Add Balance
                              height: (42/844)*height,
                              width: (140/390)*width,//133
                              child: PrimaryButton(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0.25),
                                    Color.fromRGBO(255, 255, 255, 0.25)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(100),
                                onPressed: (){
                              
                                }, 
                                child: Row( // + Add Balance
                                  children: [ 
                                   Icon(
                                      Icons.add,
                                      color: HexColor("FFFFFF"),  
                                      ),
                                    SizedBox(//Add Balance
                                      height:(18/844)*height ,
                                      width: (77/390)*width,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          " Add Balance",
                                          style: TextStyle(
                                            color: HexColor("FFFFFF"),
                                            fontSize: 12,
                                            fontFamily: AppStrings.fontFamily2,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),   
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              
                // SizedBox(height: (60/844)*height,),
              
                Padding(//Transaction
                  padding: const EdgeInsets.only(top: 31,left: 40,),
                  child: SizedBox(
                    // height: (19/844)*height,
                    width: (95/390)*width,
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text(//Transaction
                        "Transaction",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height*.55,
                    width: width,
                    // color: Colors.white,
                    child: ListView.builder(
                      itemCount: cardList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: cardList[index],
                        );
                      },
                    ),  
                  ),
                ),

                  SizedBox(height: (62/844)*height,),
                ],
              ),
          ),
          ),
        ),
    );
  }


}