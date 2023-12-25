
import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/utils/hex_color.dart';
import '../widgets/ellipse.dart';

class OthersProfilePage extends StatefulWidget{

  const OthersProfilePage({super.key, 
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
  State<OthersProfilePage> createState() => _OthersProfilePageState();
}

class _OthersProfilePageState extends State<OthersProfilePage> {
  // double rating = 4.9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _profliePage(context),
    );
  }

  Widget _profliePage(BuildContext context){

    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    const gradient = RadialGradient(
          //center: Alignment(0.9008, 0.0446),
          // radius: 0.1,
          colors: [
            Color(0xFF242424),
            Color(0xFF242424),
          ],
          stops: [0.0, 1.0],
          // stops: [0.0, 1.0],
        );


    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: (1380/926)*height,
          decoration: const BoxDecoration(
            gradient: gradient
          ),
          width: width,
          child: Stack(
            fit:StackFit.expand,
            children: [
            
              Positioned(//profile cover
                // top:   196,
                top:   (-50/1380)*height,
                left:  (0/428)*width,
                right: (0/428)*width,
                child: Container(
                  height:  353.69,
                  width: width,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.coverProfileImageUrl),
                          fit: BoxFit.fitWidth,
                      ),
                    borderRadius:
                      const BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
      
              Positioned(//EllipseWidget
                top: 281,
                bottom: 844,
                left: -23,
                right: -23,
                child: EllipseWidget(),
              ),
              
              Positioned(//wight line
                // left:  164,
                right: (230/428)*width,
                top:   (171/1380)*height,
                child: Container(
                  height: 6,
                  width: 34,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
              
              Positioned(//wight line
                // left:  203,
                right: (200/428)*width,
                top:   (171/1380)*height,
                child: Container(
                  height: 6,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
              
              Positioned(//wight line
                // left:   233,
                right: (170/428)*width,
                top:   (171/1380)*height,
                child: Container(
                  height:  6,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
    
              Positioned(//profile picture & designer name & Rating
                // top:   196,
                top:   (196/1380)*height,
                left:  (125/428)*width,
                right: (116/428)*width,
                child: Column(
                  children: [
                    Container(//Profile Img
                      height:  187,
                      width: 187,
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.profileImageUrl),
                              fit: BoxFit.contain,
                          ),
                        borderRadius:
                          const BorderRadius.all(Radius.circular(100.0)),
                      ),
                    ),
                    Column(//designerName & worktitle & Rating
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(//designerName
                        widget.designerName.toString(),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: AppStrings.fontFamily2,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Row(//worktitle & Rating
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.workTitle.toString(),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                              fontFamily: AppStrings.fontFamily2,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color:HexColor("616161"),
                            ),
                          ),
                          Row(//Rating
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(250, 180, 44, 1),
                                  size: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:2.0,left: 4,),
                                child: Text(
                                  widget.rating.toString(),
                                  style: TextStyle(
                                    //height: 2,
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: AppStrings.fontFamily2,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                    ),
                  ],
                ),
              ),
                  
              Positioned(//Bio
              // top:   (196/1380)*height,
                // left:  (125/428)*width,
                // right: (116/428)*width,
                // bottom: (901/1380)*height,
    
                // top: (561/1380)*height,
                top: 421,
                left: (38/428)*width,
                child: const Text(
                  "Bio",
                  style: TextStyle(
                    fontFamily: AppStrings.fontFamily2,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.075,
                    color: Colors.white,
                  ) ,
                ),
              ),
              
              Positioned(//Lorem ipsum dolor sit amet,  //bio content
                // top: (582/1380)*height,
                top: 442,
                left: (38/428)*width,
                right: (52/428)*width,
                
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna.",
                  maxLines: 6,
                  style: TextStyle(
                    fontFamily: AppStrings.fontFamily2,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.21,
                    color: HexColor("#999999"),
                                  
                  ),
                ),
              ),
              
              Positioned(//feedback
                // top: (642/1380)*height,
                top: 542,
                left: (38/428)*width,
                // right: (22/390)*width,
                
                child: Container(
                  //color: Colors.white,
                  child: const Text(
                    "Feedback",
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: AppStrings.fontFamily2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.08,
                      color: Colors.white
                    ) ,
                  ),
                ),
              ),
          
              
              Positioned(//Lorem ipsum dolor sit amet, //feedback content
                // top: (682/1380)*height,
                top: 582,
                left: (68/428)*width,
                right: (82/428)*width,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. ",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppStrings.fontFamily2,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.21,
                    color: HexColor("#BBBBBB"),
                  ) ,
                ),
              ),              
              
              Positioned(//wight line
                right: (230/428)*width,
                // top:   (764/1380)*height,
                top: 654,
                child: Container(
                  height:  5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: HexColor("#5200FF"),
                    borderRadius:
                      const BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
              
              Positioned(//less wight line
                right: (200/428)*width,
                // top:   (764/1380)*height,
                top: 654,
                child: Container(
                  height:  5,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
              
              Positioned(//less wight line 
                right: (170/428)*width,
                // top:   (764/1380)*height,
                top: 654,
                child: Container(
                  height:  5,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
                             
              Positioned(//Make A Call & Message Button button
                top: 690,
                child: Container(
                  // width: (396/390)*width,
                  // height: (48/844)*height,
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      
                      Padding(//Make A Call button
                        padding: const EdgeInsets.only(left:22),
                        child: Container(
                        // width: (396/390)*width,
                        // height: (48/844)*height,
                        decoration: BoxDecoration(
                          color: Color(0xff2e2e2e),
                          borderRadius: BorderRadius.circular(20)
                        ),
                          width:(164/428)*width,
                        child:TextButton(
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.call,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                Text(
                                  '\t\t\t\tMake A Call',
                                  style: TextStyle(
                                    //height: 3/18,
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),
                              ],
                            ),
                            onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Redirecting(writerId: "eslam")));
                              },
                          ),
                        ),
                      ),
                      
                      Padding(//Message Button
                        padding: const EdgeInsets.only(left:33),
                        child: Container(
                          width:(164/428)*width,
                          decoration: BoxDecoration(
                            color: Color(0xff2e2e2e),
                            borderRadius: BorderRadius.circular(20)
                          ),
                        child:TextButton(
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                AssetImage(
                                  ImgAssets.chatIconButton,
                                  ),
                                color: Colors.white,
                                size: 18,
                                ),
                                Text(
                                  '\t\t\t\tMessage',
                                  style: TextStyle(
                                    //height: 3/18,
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily2,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                    ),
                                  ),
                              ],
                            ),
                            onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Redirecting(writerId: "eslam")));
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>SendPayment()));
                              
                              },
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Positioned(//sample work
                // top: (642/1380)*height,
                top: 761,
                left: (38/428)*width,
                // right: (49/428)*width,
                // right: (22/390)*width,
                
                child: Container(
                  //color: Colors.white,
                  child:  Text(
                    "Sample Work",
                    style: TextStyle(
                      fontFamily: AppStrings.fontFamily2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.08,
                      color: Colors.white
                    ) ,
                  ),
                ),
              ),
          
              Positioned(//Imagerojector
                // top: (642/1380)*height,
                top: 792,
                left: (32/428)*width,
                right: (49/428)*width,
                // right: (22/390)*width,
                
                child: SingleChildScrollView(
                child:Container(
                height: (515/926)*height,
                // width: (350/390)*width,
                // width: width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: _imgProjector(),
                ),
                ),
              ),          
            ],
          ),
        ),
      ),
    );
  }


  Widget _imgProjector(){
    List imageAssets = [
      ImgAssets.sampleWork1,
      ImgAssets.sampleWork2,
      ImgAssets.sampleWork3,
      ImgAssets.sampleWork4,
      ImgAssets.sampleWork1,
      ImgAssets.sampleWork2,
    ];
    return GridView.builder(
      itemCount: imageAssets.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 9.0,
        childAspectRatio: 169 / 239,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print("hi index : $index");
            // do something when the image is tapped
          },
          child: Container(
            decoration: BoxDecoration(
              
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Image.asset(
                imageAssets[index],
                fit: BoxFit.contain,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        );
      },
    );
  }
}