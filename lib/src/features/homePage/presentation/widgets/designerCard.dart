import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/core/utils/hex_color.dart';
import 'package:graphics/src/features/othersProfilePage/presentation/screens/others_profile_page_screen.dart';

import '../../../../core/app_strings.dart';

class DesignerCard extends StatelessWidget {
  const DesignerCard({super.key, 
  required this.designerName, 
  required this.workTitle,
  required this.profileImageUrl, 
  required this.coverProfileImageUrl, 
  required this.rating, 
  });

  final String designerName;
  final String workTitle;
  final String profileImageUrl;
  final String coverProfileImageUrl;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{
        debugPrint("hello"),
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> OthersProfilePage(
            designerName: designerName,
            workTitle: workTitle,
            profileImageUrl: profileImageUrl,
            coverProfileImageUrl: coverProfileImageUrl, 
            rating: rating,
            ),
          ),
        ),
      },
      child: _designerCard(context)
    );
  }

  Widget _designerCard(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    // double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 21,right: 20),
      child: Container(
        // width: width * 0.89,
        // height: height * 0.62,
        height: height * 0.54,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(profileImageUrl),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          borderRadius:
            const BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 12,
              right: 248,
              // bottom: 448,
              //_profileView(context),
              child: GestureDetector(
                onTap: ()=>{
                  debugPrint("hello")
                  //navigate to card's designer page
                },
                child: Container(
                  height: (44/926)*height,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child:Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImgAssets.profileImgIcon2),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.repeat,
                          ),
                          borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                        const SizedBox(width: 7,),
                        const Text("View Profile",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //height: 2,
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                          ),
                        ),
                      ],
                    ),
                ),
              )
            ),
            Positioned(
              bottom: 20,
              left: 24,
              // right: 194,
              right: 34.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 340 ,
                        child: Text("${designerName}",
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          //height: 2,
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal
                          ),
                        ),
                      ),
                      Text("${workTitle}",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        //height: 2,
                        color: HexColor("616161"),
                        fontSize: 12,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(250, 180, 44, 1),
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          //height: 2,
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: AppStrings.fontFamily2,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
