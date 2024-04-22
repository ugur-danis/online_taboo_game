import 'package:flutter/material.dart';
import 'package:online_taboo_game/features/create_lobby/create_lobby_view.dart';
import 'package:online_taboo_game/features/home/home_view.dart';
import 'package:online_taboo_game/features/join_lobby/join_lobby_view.dart';
import 'package:online_taboo_game/features/locale_game/locale_game_view.dart';
import 'package:online_taboo_game/features/profile/profile_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: const TextTheme(
          labelLarge: TextStyle(fontSize: 16),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LocaleGameView /* ProfileView */ (),
        '/home': (context) => const HomeView(),
        '/create_lobby': (context) => const CreateLobbyView(),
        '/join_lobby': (context) => const JoinLobbyView(),
        '/locale_game': (context) => const LocaleGameView(),
      },
    );
  }
}
