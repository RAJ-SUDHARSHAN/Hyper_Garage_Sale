import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hyper_garage_sale/sign_in.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      title: 'Hyper Garage Sale',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: Colors.amber),
        textTheme: ThemeData.light().textTheme.copyWith(
              displayLarge:
                  TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
              displayMedium:
                  TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              bodyLarge:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              bodyMedium:
                  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
            ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle:
              TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData( 
          style: ElevatedButton.styleFrom(
            backgroundColor: ThemeData.light().colorScheme.primary,
            textStyle: const TextStyle(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(12.0),
        ),
      ),
      home: SignIn(),
    ),
  );
}
