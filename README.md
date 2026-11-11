# myportofolio_mobile

Hasil Tutorial 08: Basic Flutter, mulai dari merapikan struktur proyek.

- `lib/main.dart`: titik masuk aplikasi dan tema Material 3 (indigo dan amber).
- `lib/menu.dart`: halaman menu stateless, `InfoCard`, `ItemHomepage`, dan `ItemCard`.
- Data contoh tutorial: Burhan, NPM 2406000001, kelas PBP A.
- Tombol Lihat Proyek, Tambah Proyek, dan Logout menampilkan SnackBar.

Jalankan aplikasi di Chrome:

```sh
flutter pub get
flutter run -d chrome
```

Periksa kualitas kode dan interaksi antarmuka:

```sh
flutter analyze
flutter test
```

Simpan hasil tutorial ke repositori GitHub yang sudah terhubung:

```sh
git add .
git commit -m "Tutorial 08: Basic Flutter"
git push -u origin main
```

Setelah push berhasil, gunakan tautan commit terakhir untuk pengumpulan di
SCELE. Untuk melihat hash commit tersebut:

```sh
git rev-parse HEAD
```

Format tautan pengumpulan:
`https://github.com/niccola-geraldo/myportofolio_mobile/commit/<hash-commit>`.
Pastikan repositori dapat diakses secara publik.

Penggantian identitas Burhan, penyesuaian menu portofolio pribadi, dan warna
berbeda pada setiap tombol merupakan langkah untuk Individual Assignment 7.

Tutorial: https://pbp.cs.ui.ac.id/tutorial/tutorial-8.html
