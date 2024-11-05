import 'package:flutter/material.dart';
import 'package:remdy/splash/splash%20_screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      SplashScreen(),
    );
  }
}





  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => LocalizationBloc(),
  //     child: BlocBuilder<LocalizationBloc, LocalizationState>(
  //       builder: (context, state) {
  //         return MaterialApp(
  //           locale: state.locale,
  //           localizationsDelegates: [
  //             AppLocalizations.delegate,
  //             GlobalMaterialLocalizations.delegate,
  //             GlobalWidgetsLocalizations.delegate,
  //             GlobalCupertinoLocalizations.delegate,
  //           ],
  //           supportedLocales: const [
  //             Locale('en', ''),
  //             Locale('fr', ''),
  //           ],
  //           home: LanguageToggleScreen(),
  //         );
  //       },
  //     ),
  //   );
  // }

