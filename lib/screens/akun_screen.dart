import 'package:flutter/material.dart';

class AkunScreen extends StatelessWidget {
  AkunScreen({super.key});

  final TextStyle styleText = const TextStyle(
    color: Colors.black,
    fontSize: 18,
  );

  final TextStyle subtitleText = TextStyle(
    color: Colors.black.withOpacity(0.7),
  );

  final Color colorIcon = Colors.black.withOpacity(0.7);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Material(
            elevation: 5.0,
            child: Container(
              height: 170,
              color: const Color(0xFF674AEF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      // padding: const EdgeInsets.only(left: 5),
                      height: 120,
                      width: 120,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/icons/science.png",
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Syfi\'',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.key,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Akun',
                style: styleText,
              ),
              subtitle: Text(
                "Notifikasi keamanan, ganti nomor",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Privasi',
                style: styleText,
              ),
              subtitle: Text(
                "Blokir kontak, pesan sementara",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.save_alt_outlined,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Unduhan',
                style: styleText,
              ),
              subtitle: Text(
                "Materi & Video Unduhan",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.blur_circular_rounded,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Bahasa Aplikasi',
                style: styleText,
              ),
              subtitle: Text(
                "Bahasa Indonesia (bahasa perangkat)",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.help,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Bantuan',
                style: styleText,
              ),
              subtitle: Text(
                "Pusat bantuan, hubungi kami, kebijakan privasi",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.key,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Akun',
                style: styleText,
              ),
              subtitle: Text(
                "Notifikasi keamanan, ganti nomor",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Privasi',
                style: styleText,
              ),
              subtitle: Text(
                "Blokir kontak, pesan sementara",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.save_alt_outlined,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Unduhan',
                style: styleText,
              ),
              subtitle: Text(
                "Materi & Video Unduhan",
                style: subtitleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: ListTile(
              leading: Icon(
                Icons.co_present_rounded,
                color: colorIcon,
                size: 28,
              ),
              title: Text(
                'Undang Teman',
                style: styleText,
              ),
            ),
          ),
          const Divider(height: 2, thickness: 1),
        ],
      ),
    );
  }
}
