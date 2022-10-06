import 'package:flutter/material.dart';
import 'package:real_time_chat/pages/chat_page.dart';
import 'package:real_time_chat/pages/loading_page.dart';
import 'package:real_time_chat/pages/login_page.dart';
import 'package:real_time_chat/pages/register_page.dart';
import 'package:real_time_chat/pages/user_page.dart';

final Map<String,WidgetBuilder> appRoutes = {
  'user':(_)=>UserPage(),
  'chat':(_)=>ChatPage(),
  'loading':(_)=>LoadingPage(),
  'register':(_)=>RegisterPage(),
  'login':(_)=>LoginPage(),
};