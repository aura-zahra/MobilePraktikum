import 'package:flutter/material.dart';

class UserReviewPage extends StatelessWidget {
  const UserReviewPage({super.key});

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
                  "Review Pengguna",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // ================= LIST REVIEW =================
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              children: [
                reviewCard(
                  name: "Dewi",
                  rating: 5,
                  comment:
                      "Penjelasannya mudah dipahami, sangat membantu untuk memahami Figma dari dasar sampai fitur lanjutan!",
                ),
                const SizedBox(height: 12),
                reviewCard(
                  name: "Alif",
                  rating: 4,
                  comment:
                      "Materinya lengkap, tapi penjelasan agak cepat. Tapi overall sangat baik!",
                ),
                const SizedBox(height: 12),
                reviewCard(
                  name: "Mira",
                  rating: 5,
                  comment:
                      "Kakaknya ramah dan sabar banget, enak diajak belajar. Recommended!",
                ),
                const SizedBox(height: 12),
                reviewCard(
                  name: "Rafi",
                  rating: 4,
                  comment:
                      "Sangat membantu untuk belajar prototyping. Terima kasih kak!",
                ),
                const SizedBox(height: 12),
                reviewCard(
                  name: "Nadia",
                  rating: 5,
                  comment:
                      "Suka sama cara ngajarnya, jelas dan runtut. Worth it buat belajar!",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================ REVIEW CARD ==================
  Widget reviewCard({
    required String name,
    required int rating,
    required String comment,
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
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // PROFILE + RATING
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xFF7A0C29),
                child: Text(
                  name[0],
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: List.generate(
                  rating,
                  (index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 12),

          // COMMENT
          Text(
            comment,
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
