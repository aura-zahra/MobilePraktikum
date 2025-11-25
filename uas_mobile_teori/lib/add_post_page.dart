import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  String selectedType = "open_help";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF7A0C29),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
        ],
      ),
      body: Column(
        children: [
          // =================== HEADER ===================
          Container(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
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
                  "Posting",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // =================== FORM ===================
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tipe
                  const Text(
                    "Tipe",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Radio<String>(
                        value: "open_help",
                        activeColor: const Color(0xFF7A0C29),
                        groupValue: selectedType,
                        onChanged: (value) {
                          setState(() => selectedType = value!);
                        },
                      ),
                      const Text("Bisa ngajarin"),

                      const SizedBox(width: 14),

                      Radio<String>(
                        value: "need_help",
                        activeColor: const Color(0xFF7A0C29),
                        groupValue: selectedType,
                        onChanged: (value) {
                          setState(() => selectedType = value!);
                        },
                      ),
                      const Text("Butuh bantuan"),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Topik
                  buildLabel("Topik"),
                  buildInput("Masukkan topik..."),

                  const SizedBox(height: 20),

                  // Deskripsi
                  buildLabel("Deskripsi"),
                  buildInput(
                    "Jelaskan detail tentang skill yang ingin kamu bagikan atau pelajari...",
                    maxLines: 5,
                  ),

                  const SizedBox(height: 20),

                  // Tag
                  buildLabel("Tag"),
                  buildInput("e.g., Desain"),

                  const SizedBox(height: 20),

                  // Tanggal
                  buildLabel("Tanggal"),
                  inputWithIcon(
                    icon: Icons.calendar_today,
                    text: "12 Maret 2024",
                  ),

                  const SizedBox(height: 20),

                  // Waktu
                  buildLabel("Waktu"),
                  inputWithIcon(
                    icon: Icons.access_time,
                    text: "10.00",
                  ),

                  const SizedBox(height: 30),

                  // Publish Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7A0C29),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Publikasikan",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =================== WIDGET LABEL ===================
  Widget buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    );
  }

  // =================== WIDGET INPUT ===================
  Widget buildInput(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // =================== INPUT WITH ICON ===================
  Widget inputWithIcon({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey.shade700),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
