# Adventure Salma

Aplikasi Flutter sederhana untuk tugas UTS Mobile yang menampilkan form registrasi, daftar quest, dan halaman detail quest.

## Fitur

- Halaman registrasi dengan validasi:
  - `Nama`
  - `Level` (harus angka)
  - `Rank` (hanya huruf/spasi)
  - `Job`
  - `Password` (minimal 8 karakter)
- Halaman utama menampilkan:
  - Salam pengguna berdasarkan nama
  - Informasi user dari registrasi
  - Daftar quest interaktif
- Halaman detail quest:
  - Menampilkan judul, rank, reward, deskripsi, dan gambar
  - Tombol untuk menandai quest sebagai diambil/dikerjakan

## Struktur Folder

- main.dart — entry point aplikasi dan routing
- register_page.dart — halaman registrasi pengguna
- detail_quest_page.dart — halaman detail quest
- quest_widget.dart — widget daftar quest
- header_widget.dart — widget header halaman
- quest_model.dart — model data quest

## Cara Menjalankan

1. Buka folder proyek di VS Code atau editor lain.
2. Jalankan perintah:
   ```bash
   flutter pub get
   flutter run
   ```
3. Pilih emulator atau perangkat yang tersedia.

## Catatan

- Proyek ini dibuat untuk tugas UTS Mobile.
- Kode sudah disiapkan agar bisa langsung dijalankan setelah `flutter pub get`.

---
