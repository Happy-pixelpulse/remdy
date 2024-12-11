

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:remdy/auth/auth_bloc/sign_in_bloc.dart';
import 'package:remdy/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:remdy/bloc/internet_connection_bloc/internet_connection_bloc.dart';
import 'package:remdy/firebase_options.dart';
import 'package:remdy/language/language_bloc/language_bloc.dart';
import 'package:remdy/splash/splash%20_screen1.dart';


// const _kShouldTestAsyncErrorOnInit = false;
// const _kTestingCrashlytics = true;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // const fatalError = true;
  // FlutterError.onError = (errorDetails) {
  //   if (fatalError) {
  //     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  //     // ignore: dead_code
  //   } else {
  //     // If you want to record a "non-fatal" exception
  //     FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
  //   }
  // };
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   if (fatalError) {
  //     // If you want to record a "fatal" exception
  //     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //     // ignore: dead_code
  //   } else {
  //     FirebaseCrashlytics.instance.recordError(error, stack);
  //   }
  //   return true;
  // };
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>
        LanguageBloc()
          ..add(GetLanguage())),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => HomeScreenBloc()),
        BlocProvider(create: (context) => InternetConnectionBloc()),
      ],
      child: BlocListener<InternetConnectionBloc, InternetConnectionState>(
        listener: (context, state) {
          if (state is UserOnlineState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("You are online")),
            );
          } else if (state is UserOfflineState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("You are offline")),
            );
          }
        },
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return MaterialApp(
              locale: state.selectedLanguage.value,
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
