import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: (c, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
