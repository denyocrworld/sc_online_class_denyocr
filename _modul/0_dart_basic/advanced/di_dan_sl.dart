/*
Basic Fitur yang biasanya dibuat dengan State Management
- Counter
- Loading
- Single Selection
- Multiple Selection
- Enabled/Disabled
- Visible or Invisible
- Animation
- Cart
- Navigation
- Theme Changer
- HTTP Request - Get Data
- HTTP Request - Dropdown with Remote DataSource
- HTTP Request - CheckField with Remote DataSource
- Mengelola State dari Halaman Lain

    Service Locator
      - Semua instance-nya itu disimpan di satu class yang sama
      - Tidak didefinisikan di constructor
        Artinya, saya tidak perlu mendefinisikan Bloc/Controller/Service
        di dalam constructor ketika saya membutuhkannya.
        Saya tinggal misalnya SL.find()

    Dependency Injection
      - Instance-nya tidak disimpan di dalam satu class yang sama
      - Didefinisikan di constructor
        Artinya, kalau saya menggunakan Bloc/Controller/Service yang berada di file lain
        Saya perlu mendefinisikannya di constructor
*/