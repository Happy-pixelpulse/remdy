import 'dart:async';
import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:remdy/auth/auth_bloc/sign_in_bloc.dart';
import 'package:remdy/bloc/doctor_details_bloc/doctor_details_bloc.dart';
import 'package:remdy/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:remdy/bloc/internet_connection_bloc/internet_connection_bloc.dart';
import 'package:remdy/firebase_options.dart';
import 'package:remdy/language/language_bloc/language_bloc.dart';
import 'package:remdy/splash/splash%20_screen1.dart';
import 'bloc/hospital_bloc/hospital_bloc.dart';
import 'bloc/internet_connection_bloc/internet_connection_event.dart';
import 'bloc/internet_connection_bloc/internet_connection_state.dart';
import 'bloc/user_profile_bloc/user_profile_bloc.dart';
// import 'common_widgets/build_context.dart';

// const _kShouldTestAsyncErrorOnInit = false;
// const _kTestingCrashlytics = true;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'location_channel',
        channelName: 'Location Services',
        channelDescription: 'Notification for requesting location services',
        defaultColor: const Color(0xFF9D50DD),
        importance: NotificationImportance.High,
        channelShowBadge: true,
      )
    ],
  );
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
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late AppContext appContext;
  // late StreamSubscription subscription;
  // late StreamSubscription inter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageBloc()..add(GetLanguage())),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => HomeScreenBloc()),
        BlocProvider(create: (context) => NearByHospitalBloc()),
        BlocProvider(create: (context) => DoctorDetailsBloc()),
        BlocProvider(create: (context) => UserProfileBloc()),
        BlocProvider(create: (context) => SignInBloc()..add(CheckLocationServices())),
        BlocProvider(create: (context) => InternetBloc()..add(InternetStatusChanged(true))),
      ],
      child: BlocListener<InternetBloc, InternetState>(
        listener: (context, state) {
          if (state is InternetConnectedState) {
            const SnackBar(content: Text("You are online"));
          } else if (state is InternetDisconnectedState) {
            const SnackBar(content: Text("You are offline"));
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
