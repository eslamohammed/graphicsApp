import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    super.key, 
    required this.feedbackerName, 
    required this.feedbackerWorkTitle, 
    required this.feedbackerProfileImageURL,
    required this.feedbackMessage, 
    required this.rating,
  });

  final String feedbackerName;
  final String feedbackerWorkTitle;
  final String feedbackerProfileImageURL;
  final String feedbackMessage;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return _feedbackCard(context);
  }

  Widget _feedbackCard(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    // double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 17,left: 25.3,right: 25.3),
      child: Container(
        width: 428,
        height: (207.46/926)*height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: HexColor("282828"),
          borderRadius: BorderRadius.circular(20)
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 7),
              child: Text(
                feedbackMessage,
                  maxLines: 5,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            Row(//feedbackerProfileImageURL
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(//feedbackerProfileImageURL
                  padding: const EdgeInsets.only( right: 9),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedbackerProfileImageURL),
                            fit: BoxFit.fill,
                        ),
                      borderRadius:
                        const BorderRadius.all(Radius.circular(100.0)),
                    ),
                  ),
                ),
          
                SizedBox(//feedbackerName & verify
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                          children: [
                            Text(//feedbackerName
                              feedbackerName,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Container(//verify
                              height: 16.96,
                              width: 15.88,
                              decoration:  BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImgAssets.verify),
                                      fit: BoxFit.fill,
                                  ),
                                borderRadius:
                                  const BorderRadius.all(Radius.circular(100.0)),
                              ),
                            ),
                          ],
                        ),
                      Text(//feedbackerWorkTitle
                        feedbackerWorkTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                        color: Colors.white38,
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
          ],
        ),
      ),
    );
  }
}   