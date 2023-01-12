import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/screens/playlist_screen.dart';
import 'package:spotify_clone/widgets/current_track.dart';
import '../widgets/side_menu.dart';
import 'models/current_track_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///ENSURES THE CORE FLUTTER FRAMEWORK HAS BEEN INITIALIZED
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }

  ///CHECKS IF THE PLATFORM ISN'T WEB AND SETS THE MINMUM WINDOW SIZE
  runApp(
    ChangeNotifierProvider(
      create: (context) => CurrentTrackModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Spotify UI",
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          displayMedium: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[300],
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.grey[300],
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[300],
            letterSpacing: 1.0,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFF1DB954))
            .copyWith(background: Colors.black),

        ///REPLACEMENT FOR "accentColor"
      ),
      home: const Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) SideMenu(),

                ///Makes the app responsive by preventing Render Overflow errors
                const Expanded(
                    child: PlaylistScreen(playlist: lofihiphopPlaylist)),
              ],
            ),
          ),
          CurrentTrack(),
        ],
      ),
    );
  }
}
