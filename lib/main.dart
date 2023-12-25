import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:graphics/app.dart';
//import 'device_orientation/device_orientation_demo.dart';
void main() {
  //because we now in main class so flutter have to ignore an some Ops
  // preventing Orientation to Portrait/Landscape
  WidgetsFlutterBinding.ensureInitialized(); 
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const Graphics()));
  runApp(const Graphics());
}


