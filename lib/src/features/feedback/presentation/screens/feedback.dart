
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/core/utils/hex_color.dart';
import 'package:graphics/src/core/widget/orderButton.dart';
import 'package:graphics/src/features/feedback/presentation/widgets/feedback_card.dart';

import '../../../../core/app_strings.dart';
class FeedBackScreen extends StatefulWidget {
  
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<FeedBackScreen> {

 final List<Widget> cardList = [
    FeedbackCard(
      feedbackerName: 'Rabya',
      feedbackMessage: 'Lorem ipsum dolor sit amet consectetur. Sit risus sapien risus et nec aliquet consectetur mauris ultrices. Consequat commodo sed sed euismod libero consectetur urna pellentesque. Mauris ut malesuada turpis elementum in enim lacus et tellus. Sollicitudin ultrices imperdiet elit non sit.',
      feedbackerProfileImageURL: ImgAssets.feedbackImage,
      feedbackerWorkTitle: 'Content Writer',
      rating: '3',
    ),
    FeedbackCard(
      feedbackerName: 'Rabya',
      feedbackMessage: 'Lorem ipsum dolor sit amet consectetur. Sit risus sapien risus et nec aliquet consectetur mauris ultrices. Consequat commodo sed sed euismod libero consectetur urna pellentesque. Mauris ut malesuada turpis elementum in enim lacus et tellus. Sollicitudin ultrices imperdiet elit non sit.',
      feedbackerProfileImageURL: ImgAssets.feedbackImage,
      feedbackerWorkTitle: 'Content Writer',
      rating: '3',
    ),
    FeedbackCard(
      feedbackerName: 'Rabya',
      feedbackMessage: 'Lorem ipsum dolor sit amet consectetur. Sit risus sapien risus et nec aliquet consectetur mauris ultrices. Consequat commodo sed sed euismod libero consectetur urna pellentesque. Mauris ut malesuada turpis elementum in enim lacus et tellus. Sollicitudin ultrices imperdiet elit non sit.',
      feedbackerProfileImageURL: ImgAssets.feedbackImage,
      feedbackerWorkTitle: 'Content Writer',
      rating: '3',
    ),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x39393900),
            Color(0x11111100),
            ],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        
        appBar:_appBar(context),
        body: _myOrder(context),
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
            "Feedback",
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
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

  Widget _myOrder(BuildContext context){
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
 


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 9,right: 9),
          child: Row(
            children: [
              OrderButton(//My Feedback
                onPressed: (){}, 
                fillColor: HexColor("3C3C3C"),
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top: 10,bottom: 10),
                  child: Text(
                    "My Feedback" ,
                    style: TextStyle(
                      color: HexColor("FFFFFF"),
                      fontSize: 14,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              OrderButton(//Customer Feedback
                onPressed: (){}, 
                fillColor: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: Text(
                    "Customer Feedback" ,
                    style: TextStyle(
                      color: HexColor("FFFFFF"),
                      fontSize: 14,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            height: height*0.78,
            width: width,
            //color: Colors.blueAccent,
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
      ],
    );
  }

}