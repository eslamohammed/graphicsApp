
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphics/src/core/assets_manager.dart';
import 'package:graphics/src/features/chat/presentation/screens/chat_screen.dart';
import 'package:graphics/src/features/homePage/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:graphics/src/features/homePage/presentation/screens/home_page_screen.dart';
import 'package:graphics/src/features/profilePage/presentation/screens/profile_page_screen.dart';
import 'package:graphics/src/features/wallet/presentation/screens/wallet.dart';


// import '../../../Support/presentation/screens/support_and_help.dart';



List<BottomNavigationBarItem> bottomNavigationItems = const <BottomNavigationBarItem>[

  BottomNavigationBarItem(
    label: 'Home',
    icon: SizedBox(
      height: 22.423,
      width: 23.246,
        child: ImageIcon(
        AssetImage(
          ImgAssets.homeIcon,
        ),
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: ImageIcon(
      AssetImage(
        ImgAssets.walletIcon,
      ),
      
    ),
    label: 'wallet',
  ),
  BottomNavigationBarItem(
    label: 'chat',
    icon:SizedBox(
      height: 22.423,
      width: 23.246,
        child: ImageIcon(
        AssetImage(
          ImgAssets.chatIcon,
        ),
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Profile',
    icon: SizedBox(
      height: 22.423,
      width: 23.246,
        child: ImageIcon(
        AssetImage(
          ImgAssets.profileIcon,
        ),
      ),
    ),
  ),

];

  List<Widget> bottomNavScreen = <Widget>[
  HomePage(),
  WalletScreen(),
  // MyOrderScreen(),
  ChatScreen(),
  ProfilePage(),
  ];

class Home extends StatelessWidget {
  const Home({super.key});

  
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BlocConsumer<HomePageBloc, HomePageState> (
      listener: (context, state) {},
      builder: (context, state) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Stack(
              children: [
                 Center(child: bottomNavScreen.elementAt(state.tabIndex)),
                 Positioned(
                //  top: (748/844)*height,
                  right: 22,
                  left: 21,
                  bottom: 38.98,
                   child: Container(
                    height: (54.02/844)*height,
                    width: (387/390)*width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    //padding: EdgeInsets.only(bottom: 38.98,top: 833, right: 20, left: 21),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14)
                      ),
                      child: Container(
                        // color: Colors.redAccent,
                        child: BackdropFilter(
                          filter:ImageFilter.blur(
                            sigmaX: 2,
                            sigmaY: 2
                          ),
                          child: BottomNavigationBar(
                            type: BottomNavigationBarType.fixed,
                            backgroundColor: Colors.transparent,
                            items: bottomNavigationItems,
                            currentIndex: state.tabIndex,
                            selectedItemColor:Colors.white,
                            unselectedItemColor:Colors.white54,
                            onTap: (index) {
                              BlocProvider.of<HomePageBloc>(context)
                                .add(TabChange(tabIndex: index));
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}