import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/video_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 15, 25, 226),
        ),
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.camera_enhance),
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            VideoCard(),
            VideoCard(),
            VideoCard(),
            VideoCard(),
            VideoCard(),
            VideoCard(),
            VideoCard(),
          ],
        ),
      ),
    );
  }
}
