import 'package:flutter/material.dart';
// import 'package:graphics/src/core/utils/hex_color.dart';
import 'package:graphics/src/features/Login/presentation/screen/login_screen.dart';
import 'package:graphics/src/features/Support/presentation/screens/support_and_help.dart';
import 'package:graphics/src/features/chat/presentation/screens/chat_screen.dart';
import 'package:graphics/src/features/feedback/presentation/screens/feedback.dart';
import 'package:graphics/src/features/orders/presentation/screens/orders.dart';

import '../../../setting/presentation/screens/setting_screen.dart';


class PopUpMen extends StatelessWidget {
  
  final List<PopupMenuEntry> menulist;
  final Widget? icon;
  const PopUpMen({
    Key? key,
    required this.menulist,
    required this.icon,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: ((context)=>menulist),
      icon: icon,
      color: Colors.black87,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
        onSelected: (selected) {
        if (selected == 0){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const ChatScreen(
            ),
          ),
        );
        }else if(selected == 1){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const MyOrderScreen(
            ),
          ),
        );
        }else if(selected == 2){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const FeedBackScreen(
            ),
          ),
        );
        }else if(selected == 3){
    
        }else if(selected == 4){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const SupportAndHelpScreen(
            ),
          ),
        );
        }else if(selected == 5){
          //SettingScreen
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const SettingScreen(
            ),
          ),
        );
        }else if(selected == 6){
          //clear the token (shared prefrances)
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=> GraphicsLoginScreen(
            ),
          ),
        );
        }else {
          Null;
        }
      },
      // child: Container(
      //     padding: EdgeInsets.all(10),
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [Colors.blue, Colors.red],  // Define your gradient colors here
      //       ),
      //       borderRadius: BorderRadius.circular(5),
      //     ),
      //   ),
    // color: Colors.black87,
    //   child: Container(
    //     padding: const EdgeInsets.all(10),
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [Colors.blue, Colors.red],  // Define your gradient colors here
    //       ),     
    //     ),
    //   ),
    
    );
  }
}

// Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         gradient: LinearGradient(
//           colors: [
//             Color(0xFF111111),
//             Color(0xFF383838),
//           ],  
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           stops: [0.0, 1.0],
//           transform: GradientRotation(141 * 3.14 / 180),
//         ),
//       ),
//     )