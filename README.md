# CarRel Mobile App
# **Muhammad Farrel Altaf (2206829332) - PBP B**


# Tugas 8
## **No 1**
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    * `Navigator.push()` digunakan untuk menavigasi ke layar baru di atas tumpukan navigasi, yang memungkinkan pengguna untuk kembali ke layar sebelumnya dengan tombol kembali. Sebagai contoh, ketika pengguna memilih sebuah item dari sebuah list untuk melihat detilnya, detail layar akan ditumpuk di atas layar list.

    * Di sisi lain, `Navigator.pushReplacement()` menggantikan layar saat ini dengan layar baru dalam tumpukan navigasi, yang berarti pengguna tidak akan kembali ke layar yang digantikan jika mereka menekan tombol kembali. Sebagai contoh, setelah pengguna menyelesaikan sebuah proses dalam aplikasi dan dibawa ke layar konfirmasi, layar proses sebelumnya akan digantikan sehingga tombol kembali akan membawa mereka ke layar sebelum proses dimulai, bukan layar konfirmasi.


## **No 2**
2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    * Container: adalah widget yang serbaguna untuk membuat kotak dengan properti yang dapat dikustomisasi seperti ukuran, pewarnaan, dan hiasan. Fungsinya juga mencakup pembatasan ruang sekitar widget lain dengan padding dan margin.

    * Row dan Column: memungkinkan penataan widget dalam orientasi horizontal (Row) atau vertikal (Column), mengatur elemen-elemen secara sekuensial dari kiri ke kanan atau atas ke bawah.

    * Stack: memfasilitasi penumpukan widget, di mana elemen-elemen yang diletakkan di dalamnya akan ditumpuk berdasarkan urutan penempatan mereka.

    * Expanded: mengambil ruang yang tersedia dalam Row atau Column, memperluas anak widget untuk mengisi ruang yang belum diambil oleh widget lain.

    * ListView: adalah widget yang menyusun serangkaian widget secara berurutan, ideal untuk daftar yang panjang atau yang memiliki jumlah elemen yang tidak diketahui sebelumnya.

    * GridView: menyajikan widget dalam format grid, cocok untuk menampilkan item-item dalam jumlah banyak dengan dimensi yang seragam.

    * Wrap: menata widget dalam barisan yang dapat beralih ke baris baru jika tidak ada cukup ruang, mirip dengan perilaku teks yang pindah ke baris selanjutnya saat mencapai ujung kontainer.

    * SizedBox: digunakan untuk membuat ruang dengan dimensi tertentu, baik untuk memisahkan widget atau menetapkan ukuran spesifik pada sebuah elemen.

## **No 3**
3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    * `name` buku untuk menyimpan nama mobil 
    * `amount` untuk menyimpan jumlah mobil
    * `description` untuk menyimpan deskripsi mobil. 
    * Ketiga elemen input ini digunakan untuk mengisi data buku yang akan ditambahkan ke dalam database.

## **No 4**
4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
    * Clean Architecture merupakan metodologi dalam pengembangan perangkat lunak yang memfokuskan pada pemisahan kode menjadi berbagai lapisan dengan maksud untuk mempermudah pemahaman, pengujian, dan modifikasi kode. Dalam aplikasi Flutter, Clean Architecture bisa diimplementasikan dengan mematuhi prinsip-prinsip berikut:

      * Pembagian kode menjadi lapisan-lapisan distinktif, yang mencakup:

      * Lapisan Presentasi: Menangani aspek-aspek yang berhubungan dengan UI, termasuk widget dan manajemen state.
      * Lapisan Domain: Mencakup logika bisnis aplikasi, seperti use cases dan entitas.
      * Lapisan Data: Bertanggung jawab atas operasi data, termasuk repository dan sumber data.
      * Penggunaan Injeksi Ketergantungan (Dependency Injection) untuk mendekatkan lapisan-lapisan ini. Teknik ini memasukkan objek yang diperlukan oleh suatu kelas melalui konstruktor atau metode lain, menghindari pembuatan objek secara langsung di dalam kelas.

    * Implementasi Interface untuk membedakan antara definisi dan implementasi. Interface memastikan bahwa terdapat 'kontrak' yang menentukan bagaimana kelas-kelas berperilaku, memudahkan dalam pengujian dan pemodifikasian kode tanpa mengubah implementasi.

    * Penerapan Unit Testing untuk memverifikasi fungsionalitas setiap lapisan secara independen. Teknik ini memungkinkan pemeriksaan terpisah dan terfokus pada setiap bagian kode untuk menjamin kinerja yang tepat.

    * Dalam konteks Flutter, pengembangan bisa didukung dengan berbagai pustaka seperti Provider untuk manajemen state, Dio untuk permintaan HTTP, dan Hive untuk penyimpanan lokal. Penggunaan pustaka-pustaka ini membantu dalam menerapkan Clean Architecture, memudahkan pemisahan kode sesuai dengan lapisan yang diinginkan.

## **No 5**
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

  * Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:*
      * Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
      * Memiliki sebuah tombol Save.
      * Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
      * Setiap elemen input tidak boleh kosong.
      * Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
    * Caranya: 
        * Buat direktori baru dengan nama screens dan buat file dart baru bernama `carrel_form.dart` di dalamnya.
        * buatlah stateful widget bernama ShopFormPage
        * membuat form dengan global key dengan menambahkan final _formKey = GlobalKey<FormState>(); serta elemen input yang dibutuhkan, yaitu name, amount, dan description.
        * buatlah form dalam body scaffold dan tambahkan validasi untuk semua elemen input. lalu tambahkan tombol save yang akan menampilkan dialog ketika berhasil disimpan.
        * ```dart
          body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Produk",
                      labelText: "Nama Produk",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Harga",
                      labelText: "Harga",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.tryParse(value!) ?? 0;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Harga tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Harga harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Deskripsi",
                      labelText: "Deskripsi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigo),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var newCar = Car(
                            name: _name, 
                            amount: _amount, 
                            description: _description
                          );
                          globals.semuaCar.add(newCar);

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nama: $_name'),
                                      Text('Harga: $_amount'),
                                      Text('Deskripsi: $_description'),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog
                                      // Reset the form fields
                                      _formKey.currentState!.reset();
                                      // Navigate to the DataCarPage
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => const DataCarPage()),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
          ```
  * Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

    * Caranya :Pada bagian onTap pada ShopCard, manfaatkan fungsi dari widget navigator yaitu Navigator.push() untuk menambahkan halaman baru ke dalam tumpukan navigasi.

      ```dart
      if (item.name == "Tambah Mobil") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()));
      }
      ```

  * Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    * Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
    * Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
    * Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
    * Caranya:
      dalam direktori widgets tambahkan file dart baru dengan nama left_drawer.dart. buatlah drawer header. Lalu buatlah widget ListTile untuk menyimpan menu-menu yang akan ditampilkan pada drawer. Jangan lupa gunakan widget navigator untuk mengarahkan pengguna ke halaman yang diinginkan.
      ```dart
      class LeftDrawer extends StatelessWidget {
      const LeftDrawer({super.key});

      @override
      Widget build(BuildContext context) {
        return Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Column(
                  children: [
                    Text(
                      'CarRel',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Beli Mobil Disini!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Mobil'),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShopFormPage(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_books),
                title: const Text('Lihat Mobil'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DataCarPage(),
                      ));
                },
              ),
            ],
          ),
        );
        }
      }
      ```

## **No BONUS**    
  * Kamu akan mendapatkan nilai bonus pada penilaian tugas ini apabila kamu membuat fitur-fitur berikut.

    * Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.

    * Kamu dapat memanfaatkan objek model untuk mengerjakan fitur ini.

    * Mengarahkan pengguna ke halaman tersebut jika menekan tombol Lihat Produk pada halaman utama atau drawer.

    * Caranya: buatlah class Buku pada  `carrel_form.dart` untuk menginisiasi objek buku saat menekan tombol save (apabila valid). lalu buat `globals.dart` untuk menyimpan semua variabel global, dalam konteks ini untuk menyimpan list mobil yang telah dibuat. Kemudian buat tampilan baru yaitu data_buku.dart untuk menampilkan list buku yang telah dibuat. jangan lupa buat ListTile baru di dalam drawer dan lakukan routing untuk menuju page `data_carrel.dart`






# Tugas 7
## **No 1**
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    * StatelessWidget: Merupakan widget yang immutable, yang berarti propertinya tidak dapat berubah selama waktu hidupnya. Semua nilai harus final dan tidak ada keadaan internal yang widget ini simpan. Widget jenis ini cocok untuk bagian UI yang hanya tergantung pada informasi yang dilewatkan ke dalamnya melalui konstruktor dan tidak memerlukan pembaruan dinamis atau interaksi pengguna yang akan mengubah tampilan. Contoh dari stateless widget adalah label atau ikon yang tidak berubah setelah ditampilkan.

    * StatefulWidget: Merupakan widget yang dinamis dan dapat mengelola keadaan yang dapat berubah sepanjang waktu hidupnya. Ini dilakukan melalui objek State yang terpisah yang menyimpan keadaan dan bisa bertahan melewati rebuilds widget. Widget jenis ini sangat berguna untuk UI yang interaktif, seperti form input, animasi, atau item yang memerlukan update berdasarkan event pengguna atau perubahan data yang diterima. Contoh dari stateful widget adalah slider, checkbox, atau widget yang menjaga track posisi scroll.

## **No 2**
2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
   * `main.dart`
     - `MaterialApp`: Widget yang mengatur tema dan navigasi aplikasi.

     - `ThemeData`: Widget yang menentukan konfigurasi tema global untuk aplikasi.
      
     - `ColorScheme`: Digunakan di dalam ThemeData untuk menentukan skema warna dari tema.
      
     - `AppBarTheme`: Digunakan di dalam ThemeData untuk menentukan tema dari AppBar.
   
   * `menu.dart`

     - `Scaffold`: Widget ini menyediakan struktur dasar untuk layar aplikasi Material Design. Di sini, itu digunakan sebagai kerangka kerja dasar untuk halaman utama aplikasi, dengan `appBar` dan `body`.

     - `AppBar`: Sebuah Material Design app bar, yang ditampilkan di bagian atas `Scaffold`. Di sini, itu mengandung judul aplikasi.

     - `Text`: Widget yang menampilkan string teks dengan gaya tertentu. Di kode ini, digunakan di dalam `AppBar` untuk judul dan di dalam `ShopCard` untuk menampilkan nama item.

     - `SingleChildScrollView`: Widget scrollable yang memungkinkan pengguna untuk scroll melalui konten yang mungkin melebihi layar.

     - `Padding`: Widget yang menambahkan padding di sekeliling widget anaknya. Ini digunakan beberapa kali di dalam kode: untuk menambah ruang di sekeliling isi `Column` dan di dalam `ShopCard` untuk ruang di sekeliling ikon dan teks.

     - `Column`: Widget layout yang menampilkan anak-anaknya dalam urutan vertikal. Digunakan untuk menampilkan widget `Text` dan `GridView.count` secara vertikal di dalam `SingleChildScrollView`.

     - `GridView.count`: Widget layout grid yang memungkinkan Anda membuat grid dengan jumlah kolom tetap. Di sini, digunakan untuk menampilkan item-item toko sebagai grid.

     - `Material`: Widget yang mengimplementasikan visual Material Design. Di `ShopCard`, digunakan untuk memberikan efek visual pada item yang akan diklik.

     - `InkWell`: Widget yang menanggapi sentuhan dengan efek semburat tinta. Di sini, digunakan untuk menanggapi taps pada `ShopCard` dan menampilkan `SnackBar`.

     - `Container`: Widget layout yang memungkinkan Anda menyesuaikan anaknya dalam berbagai cara, termasuk ukuran, padding, dan penempatan. Digunakan di dalam `ShopCard` untuk menentukan konten.

     - `Center`: Widget yang memusatkan anaknya dalam dirinya sendiri. Digunakan di `ShopCard` untuk memusatkan ikon dan teks.

     - `Icon`: Widget yang menampilkan ikon dari `IconData` yang diberikan. Di `ShopCard`, digunakan untuk menampilkan ikon yang terkait dengan item toko.

     - `SnackBar`: Widget Material Design yang menampilkan pesan ringkas di bagian bawah layar. Di `ShopCard`, digunakan untuk memberikan umpan balik ketika item diklik.

## **No 3**
3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
    * Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
      - Menginstall flutter dan android studio (IDE) untuk mengerjakan tugas ini
      - Membuat project baru bernama `carrel` dengan cara 
        ```
        flutter create carrel
        ```
      - Jalankan proyek dengan `flutter run`
    
    * Membuat tiga tombol sederhana dengan ikon dan teks untuk:
      Melihat daftar item (Lihat Item)
      Menambah item (Tambah Item)
      Logout (Logout)
      dan Memunculkan Snackbar dengan tulisan:
      "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
      "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
      "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

      - Membuat file dart bernama `menu.dart` pada folder `lib`
      - Pada file `menu.dart` saya meng-_import_ `'package:flutter/material.dart';` untuk meng-import paket material design
      - Memindahkan MyHomePage dari file `main.dart` ke file `menu.dart`. Kelas ini berperan untuk menampilkan tampilan utama
      - Hapus kelas `_MyHomePageState` karena saya akan membuat widget yang stateless sebagai berikut.
        ```dart
        class MyHomePage extends StatelessWidget {
        MyHomePage({Key? key}) : super(key: key);
    
    
        @override
        Widget build(BuildContext context) {
            ...
            return Scaffold(
            ...
        ...
        ```
      - Buat kelas ShopItem dan ShopCard untuk membuat tombol dan snackbar yang dibutuhkan
        

        ```dart
        class ShopItem { //CLASS SHOPITEM
        final String name;
        final IconData icon;

        ShopItem(this.name, this.icon);
        }

        class ShopCard extends StatelessWidget {  //CLASS SHOPCARD
        final ShopItem item;

        const ShopCard(this.item, {super.key}); // Constructor

        @override
        Widget build(BuildContext context) {
            return Material(
            color: Colors.indigo,
            child: InkWell(
                // Area responsive terhadap sentuhan
                onTap: () {
                // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
                child: Container(
                // Container untuk menyimpan Icon dan Text
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                        ),
                    ],
                    ),
                ),
                ),
            ),
            );
        }

        }
        ```

      - Modifikasi MyHomePage untuk menampilkan tiga tombol yang dibutuhkan
        ```dart
        class MyHomePage extends StatelessWidget {
          MyHomePage({Key? key}) : super(key: key);
          final List<ShopItem> items = [
            ShopItem("Lihat Item", Icons.checklist),
            ShopItem("Tambah Item", Icons.add_shopping_cart),
            ShopItem("Logout", Icons.logout),
          ];
        // This widget is the home page of your application. It is stateful, meaning
        // that it has a State object (defined below) that contains fields that affect
        // how it looks.

        // This class is the configuration for the state. It holds the values (in this
        // case the title) provided by the parent (in this case the App widget) and
        // used by the build method of the State. Fields in a Widget subclass are
        // always marked "final".
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'CarRel',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: SingleChildScrollView(
                // Widget wrapper yang dapat discroll
                child: Padding(
                  padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                  child: Column(
                    // Widget untuk menampilkan children secara vertikal
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                        child: Text(
                          'PBP Shop', // Text yang menandakan toko
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Grid layout
                      GridView.count(
                        // Container pada card kita.
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ShopItem item) {
                          // Iterasi untuk setiap item
                          return ShopCard(item);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }
        ```
        
        
    

    

## **No BONUS**  
4. Kamu akan mendapatkan nilai bonus pada penilaian tugas ini apabila kamu mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Item, Tambah Item, dan Logout).
   * Saya menambahkan atribut pada kelas ShopItem

    ```dart
    class ShopItem {
      final String name;
      final IconData icon;
      final Color color; // Tambahkan field warna
    
      ShopItem(this.name, this.icon, this.color); // Modifikasi constructor untuk menerima warna
    }
    ```
   
    * Saya menambahkan warna pada list items di class MyHomePage
      ```dart
       final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist, Colors.blue),
        ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.green),
        ShopItem("Logout", Icons.logout, Colors.red),
        ];
      ```
    
    * Saya memodifikasi class ShopCard untuk menggunakan warna dari ShopItem
      ```dart
        class ShopCard extends StatelessWidget {
          final ShopItem item;
        
          const ShopCard(this.item, {super.key}); // Constructor tidak berubah
        
        @override
        Widget build(BuildContext context) {
          return Material(
            color: item.color, // Gunakan warna dari item
          );
        }
        }
      ```
        
        
   
        