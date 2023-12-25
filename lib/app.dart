// ignore_for_file: unused_import

// import 'package:graphices/src/core/utils/app_strings.dart';
// import 'package:content_writer/src/features/homePage/presentation/Routes/generated_routes.dart';
// import 'package:graphics/src/features/wallet/presentation/screens/wallet.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphics/src/core/app_strings.dart';
import 'package:graphics/src/features/Login/presentation/screen/login_screen.dart';
import 'package:graphics/src/features/homePage/presentation/Routes/generated_routes.dart';
import 'package:graphics/src/features/setup/presentation/screens/setup_screen.dart';
import 'package:graphics/src/features/submitScreen/presentation/screens/submit_to_take_test_screen.dart';




class Graphics extends StatelessWidget {
  const Graphics({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.AppName ,
      supportedLocales: flc.supportedLocales.map((e) => Locale(e)),
      localizationsDelegates: const [
        // Package's localization delegate.
        flc.CountryLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: GraphicsLoginScreen(),
      // home: SubmitToTakeTestScreen(phoneNumber: '',),
      //home: RegisterScreen(),
      //home: SetupProfile(),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator().generateRoute ,
    );
  }
}