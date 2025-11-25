import 'package:flutter/material.dart';

class MyPostPage extends StatelessWidget {
  const MyPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          // ================= HEADER =================
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 16, 25),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF7A0C29), Color(0xFF9b163a)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Posting Saya",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // ================= LIST POSTING =================
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              children: [
                myPostCard(
                  type: "Bisa ngajarin",
                  typeColor: const Color(0xFFB01248),
                  title: "Belajar Figma Dasar",
                  desc:
                      "Saya bisa ngajarin teknik layout, prototyping, dan dasar UI/UX.",
                  category: "Desain",
                ),
                const SizedBox(height: 14),
                myPostCard(
                  type: "Butuh bantuan",
                  typeColor: Colors.orange.shade700,
                  title: "Belajar Logika Pemrograman",
                  desc:
                      "Lagi kesulitan materi percabangan & perulangan.",
                  category: "Pemrograman",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= CARD POSTING =================
  Widget myPostCard({
    required String type,
    required Color typeColor,
    required String title,
    required String desc,
    required String category,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TYPE BADGE
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: typeColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              type,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),

          const SizedBox(height: 10),

          // TITLE
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 6),

          // DESCRIPTION
          Text(
            desc,
            style: const TextStyle(fontSize: 14, height: 1.4),
          ),

          const SizedBox(height: 10),

          // CATEGORY
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              category,
              style: const TextStyle(fontSize: 12),
            ),
          ),

          const SizedBox(height: 16),

          // BUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // EDIT BUTTON
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit, size: 18),
                label: const Text(
                  "Edit",
                  style: TextStyle(fontSize: 13),
                ),
              ),

              const SizedBox(width: 10),

              // DELETE BUTTON
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline,
                    color: Colors.red, size: 18),
                label: const Text(
                  "Hapus",
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
