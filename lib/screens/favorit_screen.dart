import 'package:education_app/screens/course_screen.dart';
import 'package:flutter/material.dart';

class FavoritScreen extends StatelessWidget {
  FavoritScreen({super.key});

  final List imgList = [
    'C#',
    'Flutter',
  ];

  final List<String> favoritList = [
    'C#',
    'Flutter',
  ];

  final List<String> kategoriKelas = [
    'Back-End',
    'Mobile App',
  ];

  final TextStyle style =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  final Icon trailingIcon = const Icon(
    Icons.favorite,
    size: 24,
    color: Colors.redAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 90),
            child: ListView.builder(
              itemCount: favoritList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CourseScreen(imgList[index]);
                      },
                    ));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            kategoriKelas[index],
                            style: style,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/img/${imgList[index]}.png",
                          width: 45,
                          height: 45,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            favoritList[index],
                            style: style,
                          ),
                        ),
                        trailing: trailingIcon,
                      ),
                      const Divider(
                        color: Color(0xFF674AEF),
                      ),
                    ],
                  ),
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
                    "Kursus Favorit",
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
