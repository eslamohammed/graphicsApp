// import 'package:flutter/material.dart';

// class GradientPopupMenuItem<T> extends PopupMenuEntry<T> {
//   final double heightt;
//   final Widget child;
//   final Function() onTap;

//   GradientPopupMenuItem({
//     required Key key,
//     this.heightt = kMinInteractiveDimension,
//     required this.child,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   _GradientPopupMenuItemState<T> createState() =>
//       _GradientPopupMenuItemState<T>();

//   @override
//   double get height => height;

//   @override
//   bool represents(T value) {
//     return false;
//   }
// }

// class _GradientPopupMenuItemState<T> extends State<GradientPopupMenuItem<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: widget.onTap,
//       child: Container(
//         height: widget.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue, Colors.green], // Replace with your desired gradient colors
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: widget.child,
//       ),
//     );
//   }
// }

// class GradientPopupMenuDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gradient Popup Menu Demo'),
//       ),
//       body: Center(
//         child: Text('Tap the button below to show the gradient popup menu.'),
//       ),
//       floatingActionButton: PopupMenuButton<int>(
//         itemBuilder: (BuildContext context) {
//           return <PopupMenuEntry<int>>[
//             GradientPopupMenuItem<int>(
//               key: key!,
//               child: Text('Option 1'),
//               onTap: () {
//                 // Handle option 1
//               },
//             ),
//             GradientPopupMenuItem<int>(
//               key: key!,
//               child: Text('Option 2'),
//               onTap: () {
//                 // Handle option 2
//               },
//             ),
//           ];
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: GradientPopupMenuDemo(),
//   ));
// }