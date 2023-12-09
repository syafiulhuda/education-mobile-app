import 'package:education_app/screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // static data di list
  final List categoryNames = [
    "Kategori",
    "Kelas",
    "Kursus Gratis",
    "Toko Buku",
    "Kursus Live",
    "Lainya",
    "Join Group",
    "Mini Game",
    "Leaderboard",
  ];

  final List<Color> categoryColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7C7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
    const Color.fromARGB(255, 230, 103, 188),
    const Color.fromARGB(255, 148, 228, 95),
    const Color(0xFFFC7C7F),
  ];

  final List<Icon> categoryIcons = [
    const Icon(Icons.category, color: Colors.white, size: 30),
    const Icon(Icons.video_library, color: Colors.white, size: 30),
    const Icon(Icons.assignment, color: Colors.white, size: 30),
    const Icon(Icons.store, color: Colors.white, size: 30),
    const Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    const Icon(Icons.more_horiz, color: Colors.white, size: 30),
    const Icon(Icons.group, color: Colors.white, size: 30),
    const Icon(Icons.games, color: Colors.white, size: 30),
    const Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];

  final List imgList = [
    'Flutter',
    'Python',
    'React Native',
    'C#',
    'Flutter',
    'Python',
    'React Native',
    'C#',
    'Flutter',
    'Python',
    'React Native',
    'C#',
  ];

  @override
  Widget build(BuildContext context) {
    /*
      ? Agar Notifikasi Bar menjadi sewarna dengan body 
    */
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF674AEF), // Warna notification bar
      statusBarIconBrightness:
          Brightness.light, // Warna ikon di notification bar
      systemNavigationBarColor:
          Colors.white, // Warna navigation bar (pada beberapa perangkat)
      systemNavigationBarIconBrightness:
          Brightness.dark, // Warna ikon di navigation bar
    ));

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/welcome');
                      },
                      child: const Icon(
                        Icons.dashboard,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Bro!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cari disini . . .",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: categoryNames.length - 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.5),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        (categoryNames[index] == 'Lainya')
                            ? showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Menu Lainya"),
                                    content: SizedBox(
                                      width: 100,
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: categoryNames.length - 6,
                                        itemBuilder: (context, index) {
                                          // indeks pertama dimulai
                                          final indexAsli = index + 6;
                                          return Column(
                                            children: [
                                              ListTile(
                                                leading: ColorFiltered(
                                                  colorFilter:
                                                      const ColorFilter.mode(
                                                    Color(0xFF674AEF),
                                                    BlendMode.srcIn,
                                                  ),
                                                  child:
                                                      categoryIcons[indexAsli],
                                                ),
                                                title: Text(
                                                    categoryNames[indexAsli]),
                                                onTap: () {},
                                              ),
                                              if (index <
                                                  categoryNames.length - 7)
                                                const Divider(
                                                  color: Colors.black,
                                                ), // Tambahkan Divider
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Tutup",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )
                            : (categoryNames[index] == 'Kategori')
                                ? showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Kategori Kelas"),
                                        content: SizedBox(
                                          width: 300,
                                          height: 400,
                                          child: ListView(
                                            children: [
                                              const ListTile(
                                                title: Text(
                                                  "Mobile App",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                dense: true,
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                height: 2,
                                              ),
                                              ListTile(
                                                leading: Image.asset(
                                                  "assets/img/Flutter.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                title: const Text("Flutter"),
                                                onTap: () {
                                                  // Tambahkan logika yang sesuai ketika item di klik
                                                  Navigator.pop(context);
                                                  // Misalnya, tampilkan kursus yang sesuai
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return const CourseScreen(
                                                            "Flutter");
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                              const ListTile(
                                                title: Text(
                                                  "Back-End",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                dense: true,
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                height: 2,
                                              ),
                                              ListTile(
                                                leading: Image.asset(
                                                  "assets/img/Python.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                title: const Text("Python"),
                                                onTap: () {
                                                  // Tambahkan logika yang sesuai ketika item di klik
                                                  Navigator.pop(context);
                                                  // Misalnya, tampilkan kursus yang sesuai
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return const CourseScreen(
                                                            "Python");
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                              ListTile(
                                                leading: Image.asset(
                                                  "assets/img/C#.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                title: const Text("C#"),
                                                onTap: () {
                                                  // Tambahkan logika yang sesuai ketika item di klik
                                                  Navigator.pop(context);
                                                  // Misalnya, tampilkan kursus yang sesuai
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return const CourseScreen(
                                                            "C#");
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                              const ListTile(
                                                title: Text(
                                                  "Front-End Web",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                dense: true,
                                              ),
                                              const Divider(
                                                color: Colors.black,
                                                height: 2,
                                              ),
                                              ListTile(
                                                leading: Image.asset(
                                                  "assets/img/React Native.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                                title:
                                                    const Text("React Native"),
                                                onTap: () {
                                                  // Tambahkan logika yang sesuai ketika item di klik
                                                  Navigator.pop(context);
                                                  // Misalnya, tampilkan kursus yang sesuai
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return const CourseScreen(
                                                            "React Native");
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              "Tutup",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )
                                : () {};
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: categoryColors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: categoryIcons[index],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            categoryNames[index],
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Kumpulan Kelas Lainya"),
                              content: SizedBox(
                                width: 300,
                                height: 500,
                                child: ListView.builder(
                                  itemCount: imgList.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          leading: Image.asset(
                                            "assets/img/${imgList[index]}.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                          title: Text(imgList[index]),
                                          onTap: () {
                                            // Tambahkan logika yang sesuai ketika item di klik
                                            Navigator.pop(context);
                                            // Misalnya, tampilkan kursus yang sesuai
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return CourseScreen(
                                                      imgList[index]);
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                        // Add a divider after each item, except the last one
                                        if (index < imgList.length - 1)
                                          const Divider(),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Tutup",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF674AEF),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CourseScreen(imgList[index]);
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: (imgList[index] == 'Flutter')
                                    ? Colors.redAccent
                                    : (imgList[index] == 'C#')
                                        ? Colors.redAccent
                                        : Colors.grey.withOpacity(0.9),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                              child: Image.asset(
                                "assets/img/${imgList[index]}.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "50 Video Pembelajaran",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
