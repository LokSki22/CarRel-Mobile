# CarRel Mobile App
# **Muhammad Farrel Altaf (2206829332) - PBP B**

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
        
        
   
        