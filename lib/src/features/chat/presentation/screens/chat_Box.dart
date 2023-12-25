
import 'package:flutter/material.dart';
import 'package:graphics/src/core/utils/hex_color.dart';
import 'package:graphics/src/features/Support/presentation/screens/support_and_help.dart';

import '../../../../core/app_strings.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.chatWithImg});

  final chatWithImg;
  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {

  final TextEditingController _typeSomethingTextEditingController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return _chatBox(context);
  }

  Widget _chatBox(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("#000000"),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: null,
        toolbarHeight: 112,
        backgroundColor: HexColor("#000000"),
        title: Column(
          children: [
            Row(
              children: [
                SizedBox(width: (15/390)*width,),
                Container(//profile img
                  width: (62/390)*width,
                  height: (62/844)*height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.chatWithImg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                
                SizedBox(width: (19/390)*width,),
                
                Row(
                  children: [
                    Column(//Jhon Walker & Website content writer
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(//Jhon Walker
                          height: (21/844)*height,
                          width: (86/390)*width,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              "Jhon Walker",
                              style: TextStyle(
                                fontFamily: AppStrings.fontFamily2,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(//Website content writer
                          height: (14/844)*height,
                          width: (102/390)*width,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Website content writer",
                              style:  TextStyle(
                                fontFamily: AppStrings.fontFamily2,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 9.05,
                                color: HexColor("#D1D1D1"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(width: (97.5/390)*width,),
                    Theme(
                      data: ThemeData(
                        popupMenuTheme: PopupMenuThemeData(
                          color: Colors.red,
                        ),
                      ),
                      child: PopupMenuButton<String>(
                        color: Colors.white,
                        onSelected: (value) {
                          // your logic
                          debugPrint("asdasd");
                        },
                        itemBuilder: (BuildContext bc) {
                          return [
                            PopupMenuItem(
                              child: Text("Block Contact"),
                              value: '/hello',
                              
                            ),
                            PopupMenuItem(
                              child: Text("Report Contact"),
                              value: '/about',
                            ),
                          ];
                        },
                      ),
                    ),                    
                    ],
                  ),
                ],
              ),
            ],
          ),    
        ),
      body: Container(
        height: height*0.95,
        width: width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            //center: Alignment(0.9008, 0.0446),
            radius: 0.9758,
            colors: [
              Color(0xFF242424),
              Color(0xFF000000),
            ],
            //stops: [0.4782, 1.0],
            stops: [0.1, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /*
              SizedBox(
                height: (112/844)*height,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    SizedBox(height: (49/842)*height,),
                    Row(
                      children: [
                          SizedBox(width: (28/390)*width,),
                    
                          Container(//profile img
                            width: (62/390)*width,
                            height: (62/844)*height,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(ImgAssets.profileImg),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          
                          SizedBox(width: (19/390)*width,),
                          
                          Row(
                            children: [
                              Column(//Jhon Walker & Website content writer
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(//Jhon Walker
                                    height: (21/844)*height,
                                    width: (86/390)*width,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        "Jhon Walker",
                                        style: TextStyle(
                                          fontFamily: AppStrings.fontFamily2,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(//Website content writer
                                    height: (14/844)*height,
                                    width: (102/390)*width,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        "Website content writer",
                                        style:  TextStyle(
                                          fontFamily: AppStrings.fontFamily2,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 9.05,
                                          color: HexColor("#D1D1D1"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                    
                              SizedBox(width: (97.5/390)*width,),
                              PopupMenuButton(
                                color: Colors.white,
                                onSelected: (value) {
                                  // your logic
                                  debugPrint("asdasd");
                                },
                                itemBuilder: (BuildContext bc) {
                                  return [
                                    PopupMenuItem(
                                      child: Text("Hello"),
                                      value: '/hello',
                                    ),
                                    PopupMenuItem(
                                      child: Text("About"),
                                      value: '/about',
                                    ),
                                    PopupMenuItem(
                                      child: Text("Contact"),
                                      value: '/contact',
                                    )
                                  ];
                                },
                              ),
                              SizedBox(width: (42.5/390)*width,),
                           
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              */
              SingleChildScrollView(
                child: Container(
                  height: (635/844)*height,
                  width: width,
                  //color: Colors.blueAccent,
                ),
            
              ),
              Column(
                children: [
                  
                  Container(
                    height: (32/844)*height,
                    width: width,
                    child: Row(
                      children: [
                        SizedBox(width: (21/390)*width,),
                        OutlinedButton(
                          onPressed: () {
                            // Perform button action
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>SupportAndHelpScreen()));  
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(color: HexColor("#E2E2E2")), // Set the border color to blue
                              ),
                            ),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                          ),
                          child: Text(
                            'Share portfolio link',
                            
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                            ),

                          ),
                        ),
                        SizedBox(width: (10/390)*width,),
                        OutlinedButton(
                          onPressed: () {
                            // Perform button action
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SendPayment()));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(color: HexColor("#E2E2E2")), // Set the border color to blue
                              ),
                            ),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                          ),
                          child: Text(
                            'Send payment info',
                            
                            style: TextStyle(
                              //fontSize: 15,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                            ),

                          ),
                        ),
                        
                      ],
                    )
                  ),
                  Container(
                    height: (62/844)*height,
                    width: width,
                    decoration: BoxDecoration(color: HexColor("#292929")),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(//type something
                          height: (60/844)*height,
                          width: (235/390)*width,
                          child: Center(
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: AppStrings.fontFamily2,
                                fontSize: 12.08,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 5,
                              controller: _typeSomethingTextEditingController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 26),
                                fillColor: HexColor("#292929"),
                                filled: true,
                                hintText: "Type Something...",
                                hintStyle: TextStyle(
                                  color: HexColor("#FFFFFF"),
                                  fontFamily: AppStrings.fontFamily2,
                                  fontSize: 12.08,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(//send emoji button
                          onPressed: (){
                            //send emoji
                          },
                          icon:Icon(
                          Icons.emoji_emotions,
                          color: HexColor("#999999"),  
                          ),
                        ),
                        IconButton(//attach file button
                          onPressed: (){
                            //attach file
                          },
                          icon: Icon(
                          Icons.attach_file_outlined,
                          color: HexColor("#999999"),
                          ),
                        ),
                        SizedBox(width: (19/390)*width,),
                        Container(
                          height: 45.67,
                          width: 45.37,
                          decoration: BoxDecoration(
                            color: HexColor("#0F27FF"),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: IconButton(
                            onPressed: (){
                              //send massage
                            },
                            icon: Icon(
                              size:25,
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: (15.28/390)*width,),
                      ],
                    )
                  ),
            
                ],
              )
            ],
          ),
        ),
        ),
      );
    }
}
