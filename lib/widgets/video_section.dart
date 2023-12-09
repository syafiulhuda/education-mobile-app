import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});

  final List<String> titles = [
    'Flutter',
    'Python',
    'React Native',
    'C#',
  ];

  final List<String> videoList = [
    'Perkenalan',
    'Instalasi',
    'Setup Emulator',
    'Berkenalan dengan Widget',
    'Membuat Aplikasi Pertama',
    'CRUD API',
    'CRUD Database',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? const Color(0xFF674AEF)
                  : const Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: const Text("20 min 50 sec"),
        );
      },
    );
  }
}
