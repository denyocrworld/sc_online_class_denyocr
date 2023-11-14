//Trigger
//    Button di Click
//    Ketika Aplikasi di Buka
//    Ketika Aplikasi mau ditututp
//    Ketika User Scroll ke bawah
//    Tiap 1 detik (Timer)
//Action
sendMail() async {
  //100
  List emails = [];
  for (var email in emails) {
    //kode  untuk mengirim email
    // await MailSender.send();
  }
}

void main() {
  /*
    - Codewars | HackerRank | LeetCode
    - Buatlah fitur login dengan email dan password
        Berikut API yang kami punya
          {documentasi API}
      Setelah login masuk ke Dashboard, 
      Tampilkan data dari API reqres.in/api/users
    - Buatlah fitur notifikasi dengan Firebase
    - Buatlah fitur realtime chart untuk menampilkan data XXX
    - CRUD Firebase
  */
  return;
  //
  // mengambil smua nilai yang ada di dalan List of List
  // List of List
  List<List<int>> matrix = [
    [1, 2, 3], //List
    [4, 5, 6], //List
    [7, 8, 9], //List
  ];

  // m, n, o, p
  for (int i = 0; i < matrix.length; i++) {
    // print(matrix[i]); //List
    //1 -------

    // for (int j = 0; j < matrix[i].length; j++) {
    //   print(matrix[i][j]); // Mengakses dan mencetak setiap elemen
    // }

    //2 -------
    List matrixChild = matrix[i];
    for (var n = 0; n < matrixChild.length; n++) {
      int number = matrixChild[n];
      if (number % 2 != 0) {
        print(number);
      }
    }
  }

  return;

  //               $1                       $2
  // var record = ('pertama', a: 2, b: true, 'terakhir');
  // print(record);
  // print(record.$1);
  // print(record.$2);
  // print(record.a);
  // print(record.b);

  // List users = ["Deny", "Danu", "Hendy"];
  // print(users[0]);
  // print(users[1]);
  // print(users[2]);
  // print(users[3]);

  // var customer = ("Deny", "Bogor", "Indonesia", "Alex");
  // print(customer.$1);
  // print(customer.$2);
  // print(customer.$3);
  // print(customer.$4);

  // var product = (productName: "GG FILTER 12", price: 100);
  // print(product);
  // print(product.productName);
  // print(product.price);

  // var productMap = {
  //   "product_name": "GG FILTER 12",
  //   "price": 100,
  // };
  // print(productMap);
  // print(productMap["product_name123123123"]);
  // print(productMap["price"]);

  // (int, int) score = (12, 45);
  // (int sainsScore, int historyScore) score = (12, 45);
  // print(score.$1);
  // print(score.$2);

  // Best Practices
  // List, Map, Model

  //style A
  //style B

  // print("Angka ke 1");
  // print("Angka ke 2");
  // print("Angka ke 3");
  // print("Angka ke 4");
  // print("Angka ke 5");
  // print("Angka ke 6");
  // print("Angka ke 7");
  // print("Angka ke 8");
  // print("Angka ke 9");
  // print("Angka ke 10");
  // print("Angka ke 11");
  // print("Angka ke 12");
  // print("Angka ke 13");
  // print("Angka ke 14");
  // print("Angka ke 15");
  // print("Angka ke 16");

  /*
  for (intitialValue;condition;value_changes) 
  {

  }
  */

  /*
  nilai awal statement loop ini adalah i = 1
  looping ini akan terus berjalan selama
    i <= 5
  setelah loopingnya berjalan, nilainya akan bertambah 1
    dinyatakan dengan adanya i++
  */
  // for (int i = 0; i <= 5; i++) {
  //   print("Angka ke $i");
  // }
  /*
    1
      1 <= 5  >>> true
        Angka ke 1
    2
      2 <= 5  >>> true
        Angka ke 2
    3
      3 <= 5  >>> true
        Angka ke 3
    4
      4 <= 5  >>> true
        Angka ke 4
    5
      5 <= 5  >>> true
        Angka ke 5
    6
      6 <= 5  >>> false
        Block kode tidak di eksekusi
  */

  List<String> daftarBuah = ["Apel", "Jeruk", "Mangga"];
  // print(buah[0]);
  // print(buah[1]);
  // print(buah[2]);

  //untuk setiap buah di dalam daftarBuah
  // for (var buah in daftarBuah) {
  //   var index = daftarBuah.indexOf(buah);
  //   print(index);
  // }
  // return;

  /*
  1. best practices
      for(var item in collections)
        - Mudah dibaca
      for(var i=0;i<10;i++)
      while
  2. removeAt
  */

  /*

  */

  //Condition
  var i = 0;
  for (; i < daftarBuah.length; i++) {
    var buah = daftarBuah[i];
    print(buah);
  }

  print("---");

  for (var i = 0; i < daftarBuah.length; i++) {
    if (i < 2) {
      var buah = daftarBuah[i];
      print(buah);
    }
  }

  print("---");

  // 0, 1, 2
  for (var i = 0; i < daftarBuah.length; i++) {
    if (i == 2) break;
    var buah = daftarBuah[i];
    print(buah);
  }

  print("---");

  //remove by value
  // daftarBuah.remove("Mangga");

  //remove by index
  daftarBuah.removeAt(2);

  print("~~~~");
  print(daftarBuah);
  print("~~~~");

  for (var i = 0; i < daftarBuah.length; i++) {
    var buah = daftarBuah[i];
    print(buah);
  }

  //Apel, Jeruk

  return;

  List<Map> users = [
    {
      "name": "Alex",
      "age": 22,
    },
    {
      "name": "Andre",
      "age": 23,
    },
    {
      "name": "Budi",
      "age": 12,
    }
  ];

  var index = (users.length / 2).floor();
  print(users[index]["name"]);
  print(users[index]["age"]);

  // int number = 0;

  // //harus ada perubahan nilainya
  // while (number < 5) {
  //   print("Angka ke-$number");
  //   number++;
  // }

  // int hitung = 1;

  // do {
  //   print("Hitung ke-$hitung");
  //   hitung++;
  // } while (hitung > 3);
}
