import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context,child){
        return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue, brightness: AppController.instance.isDarkTheme ? Brightness.light : Brightness.dark),
        home: HomePage()
      );
      },
      
    );

  }

}