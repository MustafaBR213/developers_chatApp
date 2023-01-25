import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:developers/screens/welcome_screen.dart';
import 'package:developers/screens/login_screen.dart';
import 'package:developers/screens/registration_screen.dart';
import 'package:developers/screens/chat_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(); 
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.black54),
            ),
          ),
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: ((context) => WelcomeScreen()),
            LoginScreen.id: ((context) => LoginScreen()),
            RegistrationScreen.id: ((context) => RegistrationScreen()),
            ChatScreen.id: ((context) => ChatScreen()),
          },
        );
      }
}
