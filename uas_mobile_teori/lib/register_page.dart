import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buat Akun",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Daftarkan dirimu untuk mulai menggunakan SkillMate",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),

              // NAMA
              buildLabel("Nama Lengkap"),
              buildInputField("Masukkan nama"),

              const SizedBox(height: 20),

              // EMAIL
              buildLabel("Email"),
              buildInputField("Masukkan email"),

              const SizedBox(height: 20),

              // PASSWORD
              buildLabel("Password"),
              buildInputField("Masukkan password", isPassword: true),

              const SizedBox(height: 20),

              // JURUSAN
              buildLabel("Jurusan"),
              buildInputField("Contoh: Sistem Informasi"),

              const SizedBox(height: 20),

              // SKILL
              buildLabel("Skill / Keahlian"),
              buildInputField("Contoh: UI/UX, Algoritma, Database"),

              const SizedBox(height: 30),

              // BUTTON REGISTER
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text(
                    "Daftar",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // FOOTER PUNYA AKUN
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sudah punya akun?",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      // kembali ke halaman login
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget Label Text
  Widget buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  // Widget Input Field
  Widget buildInputField(String hint,
      {bool isPassword = false, int maxLines = 1}) {
    return TextField(
      obscureText: isPassword,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
