
import 'package:flutter/material.dart';
import 'package:graphics/src/features/homePage/presentation/widgets/designerCard.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';

// import '../../../../config/colors.dart';
// import '../../../../core/utils/assets_manager.dart';
// import '../../../about_writer/presentation/screens/aboutWriter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    final List<Widget> cardList = [
    DesignerCard(
      designerName: "Janet garcia",
      workTitle: "Graphic Designer",
      profileImageUrl: ImgAssets.pic1,
      coverProfileImageUrl: ImgAssets.ortherProfilesCover,
      rating: 4.9,
    ),
    DesignerCard(
      designerName: "Amma Watson",
      workTitle: "Graphic Designer",
      profileImageUrl: ImgAssets.pic2,
      coverProfileImageUrl: ImgAssets.ortherProfilesCover,
      rating: 4.5,
    ),
    DesignerCard(
      designerName: "Allan Waker",
      workTitle: "Graphic Designer",
      profileImageUrl: ImgAssets.img,
      coverProfileImageUrl: ImgAssets.ortherProfilesCover,
      rating: 4.9,
    ),
    // Add more widgets here.
  ];


  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF393939),
            Color(0xFF111111),
          ],
          stops: [
            0.0,
            1.0,
          ],
        ),
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 86,
          backgroundColor: Colors.transparent,
          title: Container(
            // color: Colors.red,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: ImageIcon(
                        AssetImage(
                          ImgAssets.homeIcon,
                        ),
                      ),
                      color: Colors.white,
                      iconSize: 40,
                      onPressed: () => {},
                    ),
                  ],
                ),
                const Text(
                  "Graphics Designer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    ),
                    maxLines: 1,
                  ),
                SizedBox(width: (143/428)*width,),
                Row(
                  children: [
                    IconButton(icon: ImageIcon(
                      AssetImage(
                        ImgAssets.notificationIcon,
                      ),
                    ),
                    color: Colors.white,
                    iconSize: 27,
                    onPressed: () => {},// Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportAndHelpScreen())) ,
                    ),
                     IconButton(icon: ImageIcon(
                      AssetImage(
                        ImgAssets.profileImgIcon,
                      ),
                    ),
                    //color: Colors.white,
                    iconSize: 40,
                    onPressed: () => {},// Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportAndHelpScreen())) ,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: _homeUI(),
      ),
    );
  }
  Widget _homeUI(){
  
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;
  
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 24),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            style: TextStyle(
              color: HexColor("FFFFFF"),
              fontFamily: AppStrings.fontFamily2,
              fontSize: 9.627,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            keyboardType: TextInputType.multiline,
            controller: _searchController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 26),
              fillColor:  HexColor("545454"),
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(
                color: HexColor("#B7B7B7"),
                fontFamily: AppStrings.fontFamily2,
                fontSize: 12.08,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 28.33 ,right: 11.12),
                child: Icon(
                  Icons.search_rounded,
                  color: HexColor("#BFBFBF"),
                  //size: 50,
                ), 
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 6.4,top: 3.97,bottom: 3.97),
                child: Container(
                  width: 35.078,
                  height: 32.977,
                  decoration: BoxDecoration(
                    color: HexColor("736ADB"),
                  borderRadius: BorderRadius.all(Radius.circular(500))
                  ),
                  child: const ImageIcon(
                    AssetImage(
                      ImgAssets.searchIcon,
                    ),
                    color: Colors.white,
                  ),
                ), 
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60.167),
                borderSide: const BorderSide(
                    width: 0, 
                    style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        Padding(//switch bottuns
          padding: const EdgeInsets.only(left: 21,top: 27.09,bottom: 30),
          child: Row(
            children: [
              OutlinedButton(//3D Designer
                onPressed: () {
                  // Perform button action
                          
                },
                style: ButtonStyle(
                  
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(100.0),
                      side: BorderSide(color: HexColor("#D0D0D0"),
                      style: BorderStyle.solid), // Set the border color to blue
                    ),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      color: HexColor("D0D0D0"),
                      fontSize: 12,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
                child: FittedBox(
                  fit: BoxFit.none,
                  child: Text(
                    '3D Designer',
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                          
                ),
              ),
            ),
            SizedBox(width: 9,),
            OutlinedButton(//Vector Designer
              onPressed: () {
                // Perform button action
                        
              },
              style: ButtonStyle(
                
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: HexColor("#D0D0D0"),
                    style: BorderStyle.solid), // Set the border color to blue
                  ),
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    color: HexColor("D0D0D0"),
                    fontSize: 12,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(HexColor("999999")), 
              ),
              child: FittedBox(
                fit: BoxFit.none,
                child: Text(
                  'Vector Designer',
                  textAlign:TextAlign.center ,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                          
                ),
              ),
            ),
            SizedBox(width: 16,),
            OutlinedButton(//UI & UX Designer
              onPressed: () {
                // Perform button action
                        
              },
              style: ButtonStyle(
                
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: HexColor("#D0D0D0"),
                    style: BorderStyle.solid), // Set the border color to blue
                  ),
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    color: HexColor("D0D0D0"),
                    fontSize: 12,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  
                  HexColor("999999")
                  ), 
              ),
              child: FittedBox(
                fit: BoxFit.none,
                child: Text(
                  'UI & UX Designer',
                  textAlign:TextAlign.center ,
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: AppStrings.fontFamily2,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                    ),      
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height*0.75,
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
    ),
  );
  }


}