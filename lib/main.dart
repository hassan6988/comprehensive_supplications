import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:comprehensive_supplications/presentation/ui/splash_screen.dart';
import 'package:comprehensive_supplications/router/app_routes.dart';
import 'package:comprehensive_supplications/theme.dart';
import 'package:comprehensive_supplications/utils/const/responsive_config.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveConfig().init(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Comprehensive Supplications",
        theme: AppTheme.lightTheme,
        onGenerateRoute: AppGenerateRoute.generateRoute,
        home: SplashScreen(),
      ),
    );
  }
}
