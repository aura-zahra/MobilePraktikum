import 'package:flutter/material.dart';

class BookingSessionPage extends StatefulWidget {
  const BookingSessionPage({super.key});

  @override
  State<BookingSessionPage> createState() => _BookingSessionPageState();
}

class _BookingSessionPageState extends State<BookingSessionPage> {
  int selectedDateIndex = -1;
  int selectedTimeIndex = -1;

  final List<String> availableDates = [
    "Sen, 12 Jan",
    "Sel, 13 Jan",
    "Rab, 14 Jan",
    "Kam, 15 Jan",
    "Jum, 16 Jan",
  ];

  final List<String> availableTimes = [
    "09:00",
    "10:00",
    "13:00",
    "15:00",
    "19:00",
  ];

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
                  "Booking Session",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ============ TUTOR INFO ============
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red.shade800,
                        child: const Text(
                          "A",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Aulia Rahma",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Desain UI/UX",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 30),

                  // ============ DATE FORM ============
                  const Text(
                    "Pilih Tanggal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan tanggal (contoh: 12 Jan 2025)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                    onChanged: (value) {
                      // Handle date input
                    },
                  ),

                  const SizedBox(height: 30),

                  // ============ TIME FORM ============
                  const Text(
                    "Pilih Jam",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan jam (contoh: 09:00)",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                    onChanged: (value) {
                      // Handle time input
                    },
                  ),

                  const SizedBox(height: 40),

                  // ============ CONFIRM BUTTON ============
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // aksi booking nanti disini
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7A0C29),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Konfirmasi Booking",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
