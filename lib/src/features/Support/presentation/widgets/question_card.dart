
import 'package:flutter/material.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';


class QuestionCard extends StatelessWidget {
  final String question ;
  final String answer ;
  const QuestionCard({super.key , required this.question , required this.answer});

  @override
  Widget build(BuildContext context) {
    return  _questionCard(context);
  }


    Widget _questionCard(BuildContext context){
    
//    double height = MediaQuery.of(context).size.height;
//    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top:15.0,left: 36,right: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            //height: (18/844)*height,
            //width: (219/390)*width,
            child: Text(//question
              "${question}",
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 12.08,
                fontFamily: AppStrings.fontFamily2,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          SizedBox(
          //  height: (27/844)*height,
          //  width: (318/390)*width,
            child:Text(//answer
              "${answer} ${answer} ${answer}",
              textAlign: TextAlign.start,
              maxLines: 4,
              style: TextStyle(
              color: HexColor("#666666"),
              fontSize: 8,
                fontFamily: AppStrings.fontFamily2,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal
              ),
            ),
          ),
        ],
      ),
    );
  }
}