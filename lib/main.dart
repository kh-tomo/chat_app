import 'package:chat_app/firestore/room_firestore.dart';
import 'package:chat_app/firestore/user_firestore.dart';
import 'package:chat_app/pages/top_page.dart';
import 'package:chat_app/utils/shared_prefs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPrefs.setPrefsInstance();
  String? uid = SharedPrefs.fetchUid();
  if(uid == null) await UserFirestore.createUser();
  //RoomFirestore.fetchrJoinedRooms();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat_app',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const TopPage(),
    );
  }
}
