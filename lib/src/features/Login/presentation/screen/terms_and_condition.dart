// import 'package:flutter/material.dart';
// import 'package:graphics/src/core/app_colors.dart';
// import 'package:graphics/src/core/assets_manager.dart';

// // import '../constants/utils/utils.dart';

// class TermsAndConditionScreen extends StatelessWidget {
//   const TermsAndConditionScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 10.0),
//                     child: IconButton(
//                       onPressed: (){
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(Icons.arrow_back_ios_rounded),
//                       iconSize: 24,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Text('Terms & Conditions',

//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque pellentesque porttitor neque. Purus elementum molestie tortor eu. Amet, congue venenatis vitae cursus in rhoncus, nisi lectus vel. Pharetra nunc a, aliquet sed. Odio sit tincidunt vel vel morbi sit at faucibus. Magna et bibendum risus duis.'
//                       'Porta et scelerisque eu ultrices vitae. Laoreet eget risus venenatis rhoncus vitae ac. A nulla auctor tortor varius varius. Elit ipsum tellus vel porttitor consectetur montes, vitae vivamus. Feugiat egestas urna massa neque. Netus diam placerat semper sagittis consectetur. Sed sit ridiculus adipiscing nisl pharetra, eu eget nullam. Suspendisse risus aliquam tempus, nunc feugiat neque massa urna ac. Viverra venenatis nunc.',
//                     textAlign: TextAlign.justify,
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey
//                     ),

//                   ),
//                 )
//               ],
//             ),
//           )
//       ),
//       bottomNavigationBar: PrimaryBottomNavBar(context),
//     );
//   }
// }

// Widget PrimaryBottomNavBar(BuildContext context) {
//   return Container(
//     height: 55,
//     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//       BoxShadow(
//           color: Colors.grey.shade200,
//           blurStyle: BlurStyle.outer,
//           blurRadius: 10)
//     ]),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         GestureDetector(
//           onTap: () {
//             // Navigator.pushReplacement(context,
//             //     MaterialPageRoute(builder: (context) => const HomeScreen()));
//           },
//           child: const Image(
//             image: AssetImage('assets/images/home.png'),
//             height: 18,
//             width: 18,
//             color: Colors.grey,
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (context) => const NotificationScreen()));
//           },
//           child: Stack(children: [
//              Image(
//               image: AssetImage(ImgAssets.loginBackground),
//               height: 18,
//               width: 18,
//               color: Colors.amber,
//             ),
//             Positioned(
//               top: 0,
//               right: 1.0,
//               child: SizedBox(
//                 width: 10,
//                 height: 10,
//                 child: FloatingActionButton.small(
//                     heroTag: 'countNotification',
//                     backgroundColor: AppColors.secondary,
//                     elevation: 3.0,
//                     onPressed: () {},
//                     child: const Text(
//                       '02',
//                       style: TextStyle(fontSize: 4.5),
//                     )),
//               ),
//             ),
//           ]),
//         )
//       ],
//     ),
//   );
// }