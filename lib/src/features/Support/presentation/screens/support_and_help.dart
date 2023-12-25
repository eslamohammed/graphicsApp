
import 'package:flutter/material.dart';
import 'package:graphics/src/features/Support/presentation/screens/contact_support.dart';
import 'package:graphics/src/features/wallet/presentation/screens/wallet.dart';

import '../widgets/question_card.dart'; 

import '../../../../core/app_strings.dart';
import '../../../../core/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/primaryButton.dart';

class SupportAndHelpScreen extends StatefulWidget {
  const SupportAndHelpScreen({super.key});

  @override
  State<SupportAndHelpScreen> createState() => _SupportAndHelpScreenState();
}

class _SupportAndHelpScreenState extends State<SupportAndHelpScreen> {

  final TextEditingController _searchController = TextEditingController();

  final List<Widget> cardList = [
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
    QuestionCard(question: "Q1. How can we hire a content writer" , answer: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Ut et massa mi. Aliquam in hendrerit urna.",),
  ];

  @override
  Widget build(BuildContext context) {
    return _support(context);
  }

  Widget _support(BuildContext context){

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            // Color(0xFF111111),
            HexColor("393939"),
            // Color(0xFF393939),
            HexColor("111111")
            // Colors.white,
          ],
          stops: const [0, 0.6,],
          tileMode: TileMode.clamp,
          transform: const GradientRotation(141 * (3.141592653589793) / 180),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 101,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(left: 14.22),
            child: SizedBox(//Support & Help
              width: (90/390)*width,
              child: const FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  "Support & Help",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    ),
                  ),
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 41 ),
            child: IconButton(icon: const Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 20,),
            onPressed: () => Navigator.pop(context) ,
            ),
          ),    
        ),
    
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Center(//we are Here
                    child: Container(
                    width: 252,
                    height: 62,
                    //width: (252/390)*width,
                    //height: (62/844)*height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImgAssets.weAreHear),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: (31/844)*height,),
                  Container(
                    padding: const EdgeInsets.only(left: 48, right: 56),
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
                  SizedBox(height: (16.6/844)*height,),
                  
                  Center(
                    child: SizedBox(
                      width: (270/390)*width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(// bottun
                                width: (79/390)*width,
                                child: OutlinedButton(
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
                                      'Content Writer',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),
                                
                              SizedBox(width: (5/390)*width,),
                              
                              SizedBox(//repot button
                                width: (47/390)*width,
                                child: OutlinedButton(
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
                                      'Report',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(width: (5/390)*width,),
                              
                              SizedBox(//Work sample button
                                width: (74/390)*width,
                                child: OutlinedButton(
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
                                      'Work sample',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(width: (3/390)*width,),
                              
                              SizedBox(//Payment button
                                width: (57/390)*width,
                                child: OutlinedButton(
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
                                      'Payment',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),          
                            ],
                          ),
                          
                          SizedBox(height: (8/844)*height,),
                                
                          Row(
                            children: [
                              SizedBox(width: (24/390)*width,),
                              SizedBox(//Wallet
                                width: (46/390)*width,
                                child: OutlinedButton(
                                  onPressed: () {
                                    // Perform button action
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletScreen()));
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
                                      'Wallet',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),
                              
                              
                              SizedBox(width: (10/390)*width,),
                              
                              SizedBox(//Hiring
                                width: (44/390)*width,
                                child: OutlinedButton(
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
                                      'Hiring',
                                      textAlign:TextAlign.center ,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: AppStrings.fontFamily2,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                              
                                    ),
                                  ),
                                ),
                              ),
                              
                              SizedBox(width: (10/390)*width,),
                              
                              SizedBox(//dowenloads
                                  width: (65/390)*width,
                                  child: OutlinedButton(
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
                                        'Dowenloads',
                                        textAlign:TextAlign.center ,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: AppStrings.fontFamily2,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.normal,
                                        ),
                                                
                                      ),
                                    ),
                                  ),
                                ),
                                  
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),
                  
                  SizedBox(
                    //width: width,
                    height: (435/844)*height,
                    //height: 535,
                    child:         
                    Padding(
                      padding: const EdgeInsets.only(top:13.0),
                        child: SizedBox(
                          height: (360/844)*height,
                          width: width,
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
                  ),
                        
                ],
              ),
              
              PrimaryButton(//Contact support
                height: (62/844)*height,
                width: width,
                // gradient:  const LinearGradient(
                //   begin: Alignment(0.0, 0.0),
                //   end: Alignment(1, 0.027),
                //   colors: [
                //     Color.fromRGBO(54, 159, 255, 1),
                //     Color.fromRGBO(0, 41, 255, 1),
                //   ],
                // ),
                child:const Text(
                  "Contact Support",
                  style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>ContactSupport()))  
                                            
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}