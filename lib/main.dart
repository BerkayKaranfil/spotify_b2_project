import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/providers/bottom_nav_provider.dart';
import 'package:spotify_b2_project/providers/category_provider.dart';
import 'package:spotify_b2_project/providers/profile_provider.dart';
import 'package:spotify_b2_project/ui/pages/artics_page.dart';
import 'package:spotify_b2_project/ui/pages/category_page.dart';
import 'package:spotify_b2_project/ui/pages/home_page.dart';
import 'package:spotify_b2_project/ui/pages/profile_page.dart';
import 'package:spotify_b2_project/ui/widgets/bottom_bar_widget.dart';

void main() {
  runApp(MultiProvider(
    child: const MyApp(),
    providers: [
      ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ProfileProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => BottomNavProvider(),
      )
    ],
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, value, widget) {
        return Scaffold(
          extendBody: true,
          body: value.pageChange(),
          bottomNavigationBar: CustomBottomBarWidget(),
        );
      },
    );
  }
}
