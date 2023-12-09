import 'package:flutter/material.dart';

class DeskripsiSection extends StatelessWidget {
  const DeskripsiSection({super.key});

  final String deskripsi =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            deskripsi,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                "Panjang Kelas: ",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.timer,
                color: Color(0xFF674AEF),
              ),
              Text(
                "26 Jam",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Rating: ",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                "4.5",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
