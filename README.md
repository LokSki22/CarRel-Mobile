# CarRel Mobile App
# **Muhammad Farrel Altaf (2206829332) - PBP B**

# Tugas 9
## **No 1**
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    * Mengambil data JSON langsung tanpa model bisa lebih cepat dan fleksibel untuk tugas-tugas kecil atau saat kita berurusan dengan struktur data yang sering berubah. 
    * Namun, untuk aplikasi yang lebih besar atau saat struktur data kita sudah stabil, menggunakan model membantu menjaga kode Anda terorganisir dan memudahkan pemeliharaan jangka panjang. Pada akhirnya, memilih untuk menggunakan model atau tidak tergantung pada kebutuhan spesifik proyek kita dan bagaimana Anda ingin mengelola data Anda.

## **No 2**
2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    * Fungsi CookieRequest
      - Pengelolaan Sesi: Cookie sering digunakan untuk mengelola sesi pengguna. CookieRequest memungkinkan aplikasi untuk mengirim dan menerima cookie dari server, yang membantu dalam mengidentifikasi dan mengelola sesi pengguna.

      - Otentikasi: Dalam banyak kasus, cookie digunakan untuk proses otentikasi. CookieRequest membantu dalam mengirimkan informasi otentikasi yang diperlukan dalam cookie kepada server.

      - Keamanan: Cookie dapat menyimpan token atau informasi keamanan lainnya. CookieRequest memastikan bahwa data sensitif ini ditangani dengan aman selama komunikasi antara klien dan server.

      - Preferensi Pengguna: Cookie sering digunakan untuk menyimpan preferensi pengguna. CookieRequest memungkinkan aplikasi untuk mengakses dan memperbarui preferensi ini.

    * Pentingnya Berbagi CookieRequest di Semua Komponen Aplikasi Flutter
      - Konsistensi: Berbagi instance CookieRequest di seluruh aplikasi memastikan bahwa semua komponen aplikasi memiliki akses ke informasi cookie yang sama, yang penting untuk konsistensi sesi dan pengelolaan data pengguna.

      - Efisiensi: Menggunakan instance CookieRequest yang sama di seluruh aplikasi lebih efisien daripada membuat instance baru setiap kali perlu mengakses cookie. Ini menghemat sumber daya dan memastikan respons yang lebih cepat.

      - Pemeliharaan: Memiliki titik pusat untuk pengelolaan cookie membuat pemeliharaan lebih mudah. Perubahan pada cara cookie ditangani hanya perlu dilakukan di satu tempat.

      - Keamanan: Mengelola cookie secara konsisten dan terpusat membantu dalam menjaga keamanan, karena memastikan bahwa semua komponen aplikasi mengikuti praktek terbaik yang sama untuk menangani data sensitif.

## **No 3**
3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

      * Mengambil Data JSON:
        Dapatkan data JSON dari sumbernya, seperti API endpoint atau file JSON lokal. Gunakan package http untuk permintaan HTTP ke API dan mendapatkan respons JSON. Untuk file JSON lokal, gunakan package dart:convert untuk membaca file.

      * Parsing Data JSON:
        Gunakan package dart:convert untuk mengubah respons JSON menjadi objek Dart yang dapat digunakan dalam aplikasi Flutter. Metode jsonDecode() sering digunakan untuk konversi ini.

      * Membuat Model Data:
        Buat model data Dart yang sesuai dengan struktur JSON. Model ini berisi properti yang mencerminkan data JSON dan metode untuk mengonversi antara objek Dart dan JSON. Ini memudahkan akses dan manipulasi data.

      * Menampilkan Data di Flutter:
        Tampilkan data yang sudah diparsing dan di-modelkan di aplikasi Flutter menggunakan widget seperti ListView, GridView, atau DataTable. Akses properti dari model data untuk  menampilkan informasi yang relevan.

## **No 4**
4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    * Input Data Akun di Flutter:
      Pengguna memasukkan nama pengguna dan kata sandi di aplikasi Flutter.

    * Pengiriman HTTP Request:
      Aplikasi Flutter mengirim permintaan HTTP ke server Django dengan data akun.

    * Penerimaan dan Pemeriksaan Data di Django:
      Server Django menerima permintaan dan memeriksa data akun.
      Django menggunakan autentikasi bawaan atau pustaka seperti Django REST Framework untuk memverifikasi akun.

    * Generasi Token Akses/Sesi:
      Jika akun valid, Django menghasilkan token akses atau sesi unik.

    * Pengiriman Token ke Flutter:
      Token dikirim kembali ke aplikasi Flutter sebagai respons.

    * Penyimpanan Token di Flutter:
      Aplikasi Flutter menyimpan token untuk digunakan dalam permintaan selanjutnya.

    * Permintaan Berikutnya dengan Token:
      Saat mengakses menu atau fitur yang memerlukan autentikasi, Flutter menyertakan token dalam permintaan HTTP ke Django.

    * Verifikasi Token oleh Django:
      Server Django memeriksa keabsahan token yang diterima dari Flutter.

    * Pengizinan Akses oleh Django:
      Jika token valid, Django mengizinkan akses ke menu atau fitur yang diminta.

    * Pengiriman Data ke Flutter:
      Data menu atau fitur yang diminta dikirimkan kembali ke aplikasi Flutter.

    * Tampilan Menu/Fitur di Flutter:
      Aplikasi Flutter menampilkan menu atau fitur yang diterima dari Django kepada pengguna.

## **No 5**
5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

    * Container: Container merupakan widget yang berguna untuk membungkus widget lain, memberikan mereka padding, margin, serta mendekorasi dengan berbagai fitur seperti warna dan bentuk.

    * Row dan Column: Kedua widget ini sangat efektif untuk mengatur widget dalam urutan linear, baik secara horizontal (Row) maupun vertikal (Column).

    * ListView: Widget ini diperuntukkan bagi daftar item yang panjang, yang memungkinkan pengguna untuk menggulir (scroll) melalui kontennya.

    * SizedBox: Widget ini sering digunakan untuk memberi jarak antar widget atau untuk menetapkan dimensi tertentu pada widget tertentu.

    * Text: Widget ini digunakan untuk menampilkan elemen teks dalam aplikasi Anda.

    * Align: Widget ini membantu dalam penempatan atau pemosisian widget di dalam widget induknya.

    * Drawer: Widget ini biasa digunakan untuk menampilkan panel navigasi samping dalam aplikasi.

    * ElevatedButton: Widget ini digunakan untuk membuat tombol yang terlihat lebih menonjol dan elegan.

## **No 6**
6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! bukan hanya sekadar mengikuti tutorial
    * Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
      - Sudah berjalan dengan baik di: https://muhammad-farrel21-tugas.pbp.cs.ui.ac.id/

    * Membuat halaman login pada proyek tugas Flutter.
      - Buat file baru bernama `login.dart` pada folder `screen`. Lalu pada file `main.dart`, ubah bagian home menjadi home: LoginPage().
      Berikut isi dari login.dart:
      ```dart
        import 'package:carrel/screens/menu.dart';
        import 'package:flutter/material.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';

        void main() {
          runApp(const LoginApp());
        }

        class LoginApp extends StatelessWidget {
          const LoginApp({super.key});

          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              title: 'Login',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const LoginPage(),
            );
          }
        }

        class LoginPage extends StatefulWidget {
          const LoginPage({super.key});

          @override
          _LoginPageState createState() => _LoginPageState();
        }

        class _LoginPageState extends State<LoginPage> {
          final TextEditingController _usernameController = TextEditingController();
          final TextEditingController _passwordController = TextEditingController();

          @override
          Widget build(BuildContext context) {
            final request = context.watch<CookieRequest>();
            return Scaffold(
              appBar: AppBar(
                title: const Text('Login'),
              ),
              body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () async {
                        String username = _usernameController.text;
                        String password = _passwordController.text;

                        // Cek kredensial

                        // Untuk menyambungkan Android emulator dengan Django pada localhost,
                        // gunakan URL http://10.0.2.2/
                        final response = await request.login("https://muhammad-farrel21-tugas.pbp.cs.ui.ac.id/auth/login/", {
                          'username': username,
                          'password': password,
                        });

                        if (request.loggedIn) {
                          String message = response['message'];
                          String uname = response['username'];
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                                SnackBar(content: Text("$message Selamat datang, $uname.")));
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content:
                              Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            );
          }
        }
      ```
    * Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
      - Autentikasi django dengan flutter dengan membuat app baru pada django dengan nama `authentication`. Tambahkan kode login dan logout di `views.py` serta lakukan routing pada `urls.py` authentication dan pada project utama.

      - Pada `main.dart`, tambahkan kode berikut untuk menginisiasi `CookieRequest`
        ```dart
        create: (_) {
              CookieRequest request = CookieRequest();
              return request;
        },
        ```
    
    * Membuat model kustom sesuai dengan proyek aplikasi Django.
      - Gunakan website quicktypoe untuk mengkonversi model JSON dari projek django menjadi model di dart. Lalu buat folder baru bernama `model` dan buat file bernama `item.dart` untuk menyimpan model yang telah dibuat.

    * Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.
      - Membuat file baru bernama `list_item.dart` untuk menampilkan semua data.
      - buat stateful widget bernama `ProductPage` lalu buatlah fungsi untuk fetch data pada proyek django.
      - Menampilkan semua iterasi data yang diambil dari proyek django dengan menggunakan widget FutureBuilder.
      - Berikut kodenya:
        ```dart
        class ProductPage extends StatefulWidget {
          const ProductPage({Key? key}) : super(key: key);

          @override
          _ProductPageState createState() => _ProductPageState();
        }

        class _ProductPageState extends State<ProductPage> {
          Future<List<Item>> fetchProduct() async {
            var url = Uri.parse('http://localhost:8000/json/');
            var response = await http.get(
              url,
              headers: {"Content-Type": "application/json"},
            );

            var data = jsonDecode(utf8.decode(response.bodyBytes));
            List<Item> list_product = [];
            for (var d in data) {
              if (d != null) {
                list_product.add(Item.fromJson(d));
              }
            }
            return list_product;
          }

          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Daftar Mobilmu!'),
              ),
              drawer: const LeftDrawer(),
              body: FutureBuilder(
                future: fetchProduct(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: Text(
                        "Tidak ada data produk.",
                        style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) {
                        Item currentItem = snapshot.data![index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(item: currentItem),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentItem.fields.name,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text("Amount: ${currentItem.fields.amount}"),
                                const SizedBox(height: 10),
                                Text("Description: ${currentItem.fields.description}")
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            );
          }
        }
        ```
      * Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item. Tampilkan seluruh atribut pada model item kamu pada halaman ini. Tambahkan tombol untuk kembali ke halaman daftar item.
        - Buat file baru dengan nama `detail_item_carrel.dart` di folder screen untuk melihat detail produk tiap item. Didalamnya berisi informasi detail atribut model tiap item.
        - ```dart
          import 'package:flutter/material.dart';
          import 'package:carrel/models/item.dart';

          class ProductDetailPage extends StatelessWidget {
            final Item item;

            const ProductDetailPage({Key? key, required this.item}) : super(key: key);

            @override
            Widget build(BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(item.fields.name),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Name: ${item.fields.name}", style: TextStyle(fontSize: 20)),
                      Text("Amount: ${item.fields.amount}"),
                      Text("Price: ${item.fields.price}"),
                      Text("Description: ${item.fields.description}"),
                      Text("Categories: ${item.fields.categories}"),
                      Text("Date Added: ${item.fields.dateAdded}"),
                    ],
                  ),
                ),
              );
            }
          }

          ```

## **Bonus**
    * Menambahkan fitur register, dengan menambah fungsi register di views.py authentication django dan routing, lalu menambahkan page register.dart. Page tersebut dapat diakses dari halaman login.
       ```dart
        import 'dart:convert';

          import 'package:flutter/material.dart';
          import 'package:http/http.dart' as http;
          import 'package:pbp_django_auth/pbp_django_auth.dart';
          import 'package:provider/provider.dart';
          import 'package:carrel/screens/login.dart';
          import 'package:carrel/screens/menu.dart';

          class RegistrationPage extends StatefulWidget {
            const RegistrationPage({Key? key}) : super(key: key);

            @override
            _RegistrationPageState createState() => _RegistrationPageState();
          }

          class _RegistrationPageState extends State<RegistrationPage> {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController _usernameController = TextEditingController();
            final TextEditingController _passwordController = TextEditingController();
            final TextEditingController _confirmPasswordController =
            TextEditingController();

            @override
            Widget build(BuildContext context) {
              final request = context.watch<CookieRequest>();
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Registration'),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: const InputDecoration(
                            labelText: 'Confirm Password',
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 36.0),
                        ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              String username = _usernameController.text;
                              String password = _passwordController.text;
                              String confirmPassword = _confirmPasswordController.text;

                              if (password != confirmPassword) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Passwords do not match"),
                                  ),
                                );
                                return;
                              }

                              try {
                                if (password.length < 8) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Password must be at least 8 characters long"),
                                    ),
                                  );
                                  return;
                                }
                                if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])')
                                    .hasMatch(password)) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Password must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number"),
                                    ),
                                  );
                                  return;
                                }

                                final response = await http.post(

                                  Uri.parse('http://localhost:8000/auth/register/'),
                                  //Uri.parse('http://muhammad-farrel21-tugas.pbp.cs.ui.ac.id/auth/register/'),
                                  body: {
                                    'username': username,
                                    'password': password,
                                  },
                                );

                                if (response.statusCode == 400) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                      Text("Registration failed. Please try again."),
                                    ),
                                  );
                                  // Navigate to login page or other screen
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Registration successful!"),
                                    ),
                                  );
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => LoginPage()),
                                  );
                                }
                              } catch (e) {
                                print("Error during registration: $e");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "An error occurred. Please try again later."),
                                  ),
                                );
                              }
                            }
                          },
                          child: const Text('Register'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            @override
            void dispose() {
              _usernameController.dispose();
              _passwordController.dispose();
              super.dispose();
            }
          }
       ```










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
    * `name` untuk menyimpan nama mobil 
    * `amount` untuk menyimpan jumlah mobil
    * `description` untuk menyimpan deskripsi mobil. 
    * Ketiga elemen input ini digunakan untuk mengisi data mobil yang akan ditambahkan ke dalam database.

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

    * Caranya: buatlah class Car pada  `carrel_form.dart` untuk menginisiasi objek car saat menekan tombol save (apabila valid). lalu buat `globals.dart` untuk menyimpan semua variabel global, dalam konteks ini untuk menyimpan list mobil yang telah dibuat. Kemudian buat tampilan baru yaitu `data_carrel`.dart untuk menampilkan list car yang telah dibuat. jangan lupa buat ListTile baru di dalam drawer dan lakukan routing untuk menuju page `data_carrel.dart`






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
        
        
   
        