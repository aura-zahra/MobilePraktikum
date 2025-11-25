import 'package:flutter/material.dart';

// IMPORT SEMUA HALAMAN
import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';
import 'add_post_page.dart';
import 'detail_post_page.dart';
import 'chat_page.dart';
import 'profile_page.dart';
import 'edit_profile_page.dart';
import 'my_post_page.dart';
import 'user_review_page.dart';
import 'booking_session_page.dart';
import 'history_booking_page.dart';

void main() {
  runApp(const SkillMateApp());
}

class SkillMateApp extends StatelessWidget {
  const SkillMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SkillMate",
      theme: ThemeData(
        primaryColor: const Color(0xFF7A0C29),
      ),

      // ROUTE UTAMA
      initialRoute: "/login",

      routes: {
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
        "/home": (context) => const HomePage(),
        "/add_post": (context) => const AddPostPage(),
        "/detail_post": (context) => const DetailPostPage(),
        "/chat": (context) => const ChatPage(),
        "/profile": (context) => const ProfilePage(),
        "/edit_profile": (context) => const EditProfilePage(),
        "/my_post": (context) => const MyPostPage(),
        "/reviews": (context) => const UserReviewPage(),
        "/booking": (context) => const BookingSessionPage(),
        "/history": (context) => const HistoryBookingPage(),
      },
    );
  }
}
