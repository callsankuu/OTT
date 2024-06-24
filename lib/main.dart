import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase.dart';
import 'ott theme2.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyA2voRYdLgXDYeraHCfjFAuc4KmAyiiAvg",
        appId:  "1:118972344903:web:c069de3f606de7d7335f62",
        messagingSenderId:"118972344903",
        projectId: "ottnew-ace9d",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
              builder: (context, child) => ResponsiveBreakpoints.builder(
                  child: child!,
                  breakpoints: [
                    const Breakpoint(start: 0, end: 450, name: MOBILE),
                    const Breakpoint(start: 451, end: 800, name: TABLET),
                    const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
                  ],
              ), initialRoute: "/",
              debugShowCheckedModeBanner: false,
              theme:
              themeNotifier.isDark
                  ?
              ThemeData(
                useMaterial3: true,
                colorScheme:
                ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.green),
                textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
                primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
              )
                  : ThemeData(
                useMaterial3: true,
                colorScheme:
                ColorScheme.fromSeed(brightness: Brightness.light,seedColor: Colors.blueAccent),
                textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
                primaryTextTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(
                    bodyColor: Colors.black),
              ),
              home: email()
            );
          }),
    );
  }
}



