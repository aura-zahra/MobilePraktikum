import 'package:flutter/material.dart';

class HistoryBookingPage extends StatelessWidget {
  const HistoryBookingPage({super.key});

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
                  "Riwayat Sesi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // ================= LIST HISTORY =================
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              children: [
                bookingCard(
                  name: "Aulia Rahma",
                  skill: "Desain UI/UX",
                  date: "Senin, 10 Januari 2025 • 13:00",
                  status: "Selesai",
                  statusColor: Colors.green,
                ),
                const SizedBox(height: 14),

                bookingCard(
                  name: "Alvin Pratama",
                  skill: "Pemrograman Mobile",
                  date: "Selasa, 14 Januari 2025 • 10:00",
                  status: "Terjadwal",
                  statusColor: Colors.orange.shade700,
                ),
                const SizedBox(height: 14),

                bookingCard(
                  name: "Rina Oktavia",
                  skill: "Data Analyst",
                  date: "Jumat, 8 Januari 2025 • 19:00",
                  status: "Dibatalkan",
                  statusColor: Colors.red.shade700,
                ),
                const SizedBox(height: 14),

                bookingCard(
                  name: "Fajar Mahendra",
                  skill: "UI Graphic Design",
                  date: "Sabtu, 6 Januari 2025 • 15:00",
                  status: "Selesai",
                  statusColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= BOOKING CARD =================
  Widget bookingCard({
    required String name,
    required String skill,
    required String date,
    required String status,
    required Color statusColor,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AVATAR
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.red.shade800,
            child: Text(
              name[0],
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),

          const SizedBox(width: 14),

          // DETAIL
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAME
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),

                // SKILL
                Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),

                // DATE
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 12),

                // STATUS BADGE
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
