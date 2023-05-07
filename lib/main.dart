import 'package:chat_app1/pages/chat_page.dart';
import 'package:chat_app1/pages/login_page.dart';
import 'package:chat_app1/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {

      WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      
      
    );
  runApp(const ScholorChat());
}

class ScholorChat extends StatelessWidget {
  const ScholorChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id : (context) => RegisterPage(),
        ChatPage.id :(context) => ChatPage(),
      }, 
      initialRoute: LoginPage.id,
    );
  }
}
