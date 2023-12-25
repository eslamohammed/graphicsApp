
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:graphics/src/core/assets_manager.dart';

import '../../../../core/app_strings.dart';
import '../widgets/order_card.dart';
class MyOrderScreen extends StatefulWidget {
  
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {

 final List<Widget> cardList = [
    OrderCard(
      orderOwnerName: 'Arjun Khanna',
      orderOwnerProfileImageURL:ImgAssets.orderPic1,
      orderId: '536767267',
      orderTime: '10:30 AM',
      completed: true,
    ),
    OrderCard(
      orderOwnerName: 'Mary Dannail',
      orderOwnerProfileImageURL:ImgAssets.orderPic2,
      orderId: '536767267',
      orderTime: '10:30 AM',
      completed: true,
    ),
    OrderCard(
      orderOwnerName: 'Mary Dannail',
      orderOwnerProfileImageURL:ImgAssets.orderPic2,
      orderId: '536767267',
      orderTime: '10:30 AM',
      completed: false,
    ),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x39393900),
            Color(0x11111100),
            ],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        
        appBar:_appBar(context),
        body: _myOrder(context),
      ),
    );
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
            "Orders",
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
    );
  }

  Widget _myOrder(BuildContext context){
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
 


    return SizedBox(
        height: height*0.85,
        width: width,
          child: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 7.45,top: 2),
                child: cardList[index],
              );
            },
        ),  
      );
  }

}