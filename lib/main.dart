import 'package:flutter/material.dart';
import 'package:real_time_chat/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
