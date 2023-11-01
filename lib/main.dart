import 'package:app/repository/service/reels_service.dart';
import 'package:app/ui/page/video_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ReelService().getVideosFromApI();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        home: VideoReelPage(
          index: 0,
          reels: ReelService().getReels(),
        )
        //HomePage(),
        );
  }
}
