/*
Soal 2: Kalkulator Sederhana
Buat program Dart yang meminta pengguna memasukkan dua bilangan dan operasi matematika (penjumlahan, pengurangan, perkalian, atau pembagian). Program ini harus menghitung hasil operasi tersebut dan mencetak hasilnya. Juga, pastikan untuk mengatasi pembagian oleh nol dengan menggunakan if statement.


Slicing UI
- Login
- Register
- Dashboard
- ProductList
- ProductDetail
- Profile
- Update Profile

Integrasi API
- CRUD
  Create
  Read
  Update
  Delete
  ---
  Get, Post, Put dan Delete

- Auth
  Login by Email
  Login by Google
  Login by Phone Number 

State Management
- Built in statement

---
- CV Ats Friendly
- Membuat Portofolio
- 5 Slicing UI Aplikasi Populer
(Tokopedia, Tiktok, Netflix, Shopee, dll)
(1-5 Halaman)
- 5 Slicing UI Acak dari Dribbble
- 1-3 Aplikasi yang terhubung ke API
(Public API > Movie Api, Weather API, Currency API)
---
- HackerRank | Codewars | LeetCode 
- OOP: Inheritance, Encapsulation
- OOP: Apa sih bedanya final sama const
- Apa sih widget tree
- Apa sih stateful widget
- Apa sih stateless widget
- Kalo integrasiin aplikasi ke API pake apa? (dio)
- BlocProvider, BlocBuilder
- Baca Dokumentasi
---

Getx
Bloc
Riverpod
Provider
Mobx

---

- Kreativitas

---

- Slicing UI
x State Management
x Integrasi API

3 bulan pertama
magang dan tidak dibayar
---


magang 3-6 bulan
kontrak 1-2 tahun

---

Kontrak 3 tahun
- Denda 10 bulan gaji

(Komunikasi) dgn Company
- 

package
-> example
-> 1 halaman

MVC
Controller
  - state
    int loading
    bool visible
    List items 
  - method
    doSave
    verify
    getProducts
View
  - UI
    Button:Delete
      setState(){}
    TextField
    ListView



---
---

Testing
CI/CD
---
*/

void main() {
  int a = 2;
  int b = 4;
  String jenisOperasi = "*";

  if (jenisOperasi == "+") {
    print(a + b);
  } else if (jenisOperasi == "-") {
    print(a - b);
  } else if (jenisOperasi == "/") {
    print(a / b);
  } else if (jenisOperasi == "*") {
    print(a * b);
  }
}
