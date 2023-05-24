import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_trainer/Models/language_controller.dart';
import 'package:the_trainer/Models/theme_provider.dart';
import 'package:the_trainer/User%20_Auth/Sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_trainer/firebase_options.dart';
import 'package:the_trainer/screens/splash%20screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  final String initialLanguageCode = preferences.getString('language') ?? 'en';

  Get.put(LanguageController(preferences));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(
        selectedLanguage: ''
        //selectedLanguage,
      )));
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  final String selectedLanguage;

  const MyApp({super.key, required this.selectedLanguage});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData lightThemeData = ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.red));

    ThemeData darkThemData = ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black));

    return Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
      return GetMaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightThemeData,

        // ThemeData(
        //   brightness: Brightness.light
        //     // primarySwatch: Colors.red,
        //     // brightness: Brightness.dark,
        //     // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        //     //     selectedItemColor: Colors.red)
        // ),
        darkTheme: darkThemData,
        themeMode: themeProvider.themeMode,
        locale: Locale(selectedLanguage),
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('fr', 'FR'),
        ],


        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            } else if (snapshot.hasData) {
              return const MySplashScreen();
            } else {
              return const SignIn();
            }
          },
        ),
      );
    });
  }
}
