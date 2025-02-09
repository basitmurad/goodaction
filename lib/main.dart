import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goodaction/routes/app_routes.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: GAppColors.backColor,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp.router(  // ✅ Change GetMaterialApp to MaterialApp.router
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      routerConfig: AppRouter.router, // ✅ Add go_router configuration
    );
  }
}
