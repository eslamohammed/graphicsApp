
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/core/utils/hex_color.dart';

import '../../../../core/app_strings.dart';
import '../widgets/chat_card.dart';
class ChatScreen extends StatefulWidget {
  
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<ChatScreen> {

  final TextEditingController _chatSearchController = TextEditingController();

 final List<Widget> chatCardList = [
    ChatCard(
      // key: Key,
      orderOwnerName: 'Sunil',
      orderOwnerProfileImageURL:ImgAssets.orderPic1,
      orderId: '536767267',
      orderTime: '10:30 AM',
      completed: true,
      // feedbackerName: 'Rabya',
      // feedbackMessage: 'Lorem ipsum dolor sit amet consectetur. Sit risus sapien risus et nec aliquet consectetur mauris ultrices. Consequat commodo sed sed euismod libero consectetur urna pellentesque. Mauris ut malesuada turpis elementum in enim lacus et tellus. Sollicitudin ultrices imperdiet elit non sit.',
      // feedbackerProfileImageURL: ImgAssets.feedbackImage,
      // feedbackerWorkTitle: 'Content Writer',
      // rating: '3',
    ),
 ];

  @override
  Widget build(BuildContext context) {
    return  _chats(context);
    // Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [
    //         Color(0x39393900),
    //         Color(0x11111100),
    //         ],
    //       stops: [0, 1],
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //     ),
    //   ),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
        
    //     appBar:_appBar(context),
    //     body: _myChats(context),
    //   ),
    // );
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
            "Chat",
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
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: Text('Option 1'),
            ),
            PopupMenuItem(
              child: Text('Option 2'),
            ),
            PopupMenuItem(
              child: Text('Option 3'),
            ),
          ],
        ),
      ],  
    );
  }

  Widget _myChats(BuildContext context){

    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        Container(//chat search
          padding: const EdgeInsets.only(left: 22, right: 22),
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
            controller: _chatSearchController,
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
        Padding(
          padding: const EdgeInsets.only(top: 12.09),
          child: SizedBox(
              height: height*0.78,
              width: width,
              //color: Colors.blueAccent,
                child: ListView.builder(
                  itemCount: chatCardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: chatCardList[index],
                    );
                  },
              ),  
            ),
        ),

      ],
    );
  }

  Widget _chats(BuildContext context){
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height*1.1,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient:  LinearGradient(
                    begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xFF111111),
            HexColor("393939"),
            // Color(0xFF393939),
            HexColor("111111")
            // Colors.white,
          ],
          
          stops: [
            0, 
          0,
          // 1.0
          ],
          tileMode: TileMode.clamp,
          transform: const GradientRotation(141 * (3.141592653589793) / 180),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _appBar(context),
        body: _myChats(context),

      ),
    );
  }  
}