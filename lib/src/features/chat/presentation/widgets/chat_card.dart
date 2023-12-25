import 'package:flutter/material.dart';
// import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/core/widget/orderButton.dart';
import 'package:graphics/src/features/chat/presentation/screens/chat_Box.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key, 
    required this.orderOwnerName, 
    required this.orderOwnerProfileImageURL,
    required this.orderId, 
    required this.orderTime,
    required this.completed,
    // required this.feedbackerName, 
    // required this.feedbackerWorkTitle, 
    // required this.feedbackerProfileImageURL,
    // required this.feedbackMessage, 
    // required this.rating,
  });

  final String orderOwnerName;
  final String orderOwnerProfileImageURL;
  final String orderId;
  final String orderTime;
  final bool completed;
  // final String feedbackerName;
  // final String feedbackerWorkTitle;
  // final String feedbackerProfileImageURL;
  // final String feedbackMessage;
  // final String rating;

  @override
  Widget build(BuildContext context) {
    return _chatCard(context);
  }

  Widget _chatCard(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () => {
        //navigate to chat box
        debugPrint("chat box"),
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatBox(chatWithImg: orderOwnerProfileImageURL,)))
      },
      child: SizedBox(
        width: (424/428)*width,
        height: (78.55/height)*height,
        // color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0.45,right: 60,left: 30),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 12,right: 28,),
                child: Row(
                  children: [
                      
                    Padding(//Img
                      padding: const EdgeInsets.only( right: 12),
                      child: Container(
                        height:  54.55249,
                        width: 54.55249,
                        decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(orderOwnerProfileImageURL),
                                fit: BoxFit.fill,
                            ),
                          borderRadius:
                            const BorderRadius.all(Radius.circular(100.0)),
                        ),
                      ),
                    ),
                    
                    SizedBox(//orderOwnerName & id & time
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(//orderOwnerName
                             orderOwnerName,
                             textAlign: TextAlign.start,
                             style: const TextStyle(
                             color: Colors.white,
                             fontSize: 14,
                               fontFamily: AppStrings.fontFamily2,
                               fontWeight: FontWeight.w500
                             ),
                           ),
                          Text(//id
                            'OrderID # ${orderId}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: HexColor("DDDDDD"),
                            fontSize: 10,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(//orderTime
                            orderTime,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: HexColor("666666"),
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
              ),
    
              SizedBox(//"Completed" : "Cancled"
                // height:(/844)*height ,
                // width: (117/390)*width,
                height: 35,
                width: 117,
                child: Center(
                  child: Text(
                    completed ?  "1" : "Cancled",
                    style: TextStyle(
                      color: HexColor("FFFFFF"),
                      fontSize: 50,
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
    );
  }

}   