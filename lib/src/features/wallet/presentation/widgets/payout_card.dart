import 'package:flutter/material.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';

class PayoutCard extends StatelessWidget {
  const PayoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return _payoutCard(context);
  }

  Widget _payoutCard(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only( right: 13),
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: HexColor("#736ADB"),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: (){
                    //send massage
                  },
                  icon:Transform.rotate(
                    angle: 135 * 3.1415926535897932 / 180,
                    child: Icon(
                      Icons.arrow_upward,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: (39/844)*height,
              width: (57/390)*width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(//Transaction
                      "Payout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Text(//Transaction
                    "12 Sep 22",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: HexColor("999999"),
                    fontSize: 8,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      
         SizedBox(width:(185/390)*width,),

        SizedBox(//Transaction
          // height: (18/844)*height,
          width: (52/390)*width,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Text(
              "₹ 599.00",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: HexColor("84FF82"),
              fontSize: 12,
                fontFamily: AppStrings.fontFamily2,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                
              ),
            ),
          ),
        ),
      ],
    );
  }
}