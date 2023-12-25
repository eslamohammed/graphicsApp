

import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/assets_manager.dart';

class PopUpMenu {

  List<PopupMenuEntry> menulist =[
    PopupMenuItem(
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            ImgAssets.myChatIcon,
          ),
            color: Colors.white,
        ),
        title: Text(
          "My Chat",
          style: AppColors.pop_up_menuTextStyle
          ),
      ), 
      value: 0,
    ),

    PopupMenuItem(
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            ImgAssets.myOrderIcon,
          ),
          color: Colors.white,
        ),
        title: Text(
          "My Order",
          style: AppColors.pop_up_menuTextStyle,
        ),
      ), 
      value: 1,
    ),

    PopupMenuItem(
      child:  ListTile(
        leading: SizedBox(
          height: 22.423,
          width: 23.246,
          child: ImageIcon(
            AssetImage(
              ImgAssets.feedbackIcon,
            ),
            color: Colors.white,
            size: 40,
          ),
        ),
        title: Text(
          "Feedback & Rating",
          style: AppColors.pop_up_menuTextStyle
        ),
      ), 
      value: 2,
    ),

    PopupMenuItem(
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            ImgAssets.passwordIcon,
          ),
          color: Colors.white,
        ),
        title: Text(
          "CHANGE PASSWORD",
          style: AppColors.pop_up_menuTextStyle
        ),
      ), 
      value: 3,
    ),

    PopupMenuItem(
      value: 4,
      child: ListTile(
        leading: const ImageIcon(
          AssetImage(
            ImgAssets.supportIcon,
          ),
          color: Colors.white,
        ),
        title: Text(
          "SUPPORT & HELP                        ",
          style: AppColors.pop_up_menuTextStyle
        ),
      ),
    ),

    PopupMenuItem(
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            ImgAssets.settingIcon,
          ),
          color: Colors.white,
        ),
        title: Text(
          "SETTING",
          style: AppColors.pop_up_menuTextStyle
        ),
      ), 
      value: 5,
    ),

    PopupMenuItem(
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            ImgAssets.logoutIcon,
          ),
          color: Colors.white,
        ),
        title: Text(
          "LOG OUT",
          style: AppColors.pop_up_menuTextStyle
        ),
      ), 
      value: 6,
    ),
                  
  ];

}