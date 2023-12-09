import 'package:flutter/material.dart';

class TugasScreen extends StatelessWidget {
  TugasScreen({super.key});

  final List<int> noTugas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  final List<Icon> trailingList = [
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      Icons.close,
      size: 30,
      color: Colors.grey.withOpacity(0.8),
    ),
    Icon(
      Icons.clear,
      size: 30,
      color: Colors.grey.withOpacity(0.8),
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      Icons.close,
      size: 30,
      color: Colors.grey.withOpacity(0.8),
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      Icons.close,
      size: 30,
      color: Colors.grey.withOpacity(0.8),
    ),
    const Icon(
      Icons.done,
      size: 30,
      color: Colors.blue,
    ),
    Icon(
      Icons.clear,
      size: 30,
      color: Colors.grey.withOpacity(0.8),
    ),
  ];

  final List<String> tugasList = [
    'Instalasi',
    'Build Aplikasi Pertama',
    'CRUD API',
    'CRUD Database',
    'Instalasi',
    'Build Aplikasi Pertama',
    'CRUD API',
    'CRUD Database',
    'Instalasi',
    'Build Aplikasi Pertama',
    'CRUD API',
    'CRUD Database',
  ];

  final TextStyle styleText =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 90),
            child: ListView.builder(
              itemCount: tugasList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Text(
                        noTugas[index].toString(),
                        style: styleText,
                      ),
                      title: Text(
                        tugasList[index],
                        style: styleText,
                      ),
                      trailing: trailingList[index],
                    ),
                    const Divider(
                      color: Color(0xFF674AEF),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    "Daftar Tugas",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
