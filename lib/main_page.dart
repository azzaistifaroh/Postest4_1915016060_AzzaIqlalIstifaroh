import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum Pesanan {
  mcd,
  kfc,
  starbucks,
  croffle,
  fore,
  janji,
  pizza,
  traffic,
  sushi,
  rotio,
  chatime,
}

class _HomeState extends State<Home> {
  int angka = 0;
  String nama = '', alamat = '', nohp = '', menu = '';
  final ctrlNama = TextEditingController();
  final ctrlAlamat = TextEditingController();
  final ctrlNohp = TextEditingController();
  final ctrlMenu = TextEditingController();
  bool isMetodepembayaran = false;
  Pesanan pesanan = Pesanan.mcd;

  @override
  void dispose() {
    ctrlNama.dispose();
    ctrlAlamat.dispose();
    ctrlNohp.dispose();
    ctrlMenu.dispose();
    super.dispose();
  }

  String getPesanan(Pesanan value) {
    if (value == Pesanan.kfc) {
      return 'KFC';
    } else if (value == Pesanan.mcd) {
      return 'McDonalds';
    } else if (value == Pesanan.starbucks) {
      return 'Starbucks';
    } else if (value == Pesanan.croffle) {
      return "Croffle";
    } else if (value == Pesanan.fore) {
      return "Fore";
    } else if (value == Pesanan.janji) {
      return "janji";
    } else if (value == Pesanan.pizza) {
      return "Pizza";
    } else if (value == Pesanan.traffic) {
      return "Traffic";
    } else if (value == Pesanan.sushi) {
      return "Sushi";
    } else if (value == Pesanan.rotio) {
      return "Rotio";
    } else if (value == Pesanan.chatime) {
      return "Chatime";
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page - Shopee Food"),
        backgroundColor: Color.fromARGB(205, 244, 74, 2),
      ),
      body: ListView(
        children: [
          Column(children: [
            Text("Nama : $nama"),
            Text("Alamat : $alamat"),
            Text("Nomor Telepon : $nohp"),
            Text("Saya Mau Pesan : ${getPesanan(pesanan)}"),
            Text("Jumlah Pesanan : $angka"),
            Text(isMetodepembayaran ? "Shopeepay" : "COD (Bayar di Tempat) "),
            Text("Nama Menu : $menu"),
            TextField(
              controller: ctrlNama,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Isi Nama Anda",
                labelText: "Nama",
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: ctrlAlamat,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Isi Alamat Lengkap Anda",
                labelText: "Alamat Pengiriman",
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: ctrlNohp,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Isi Nomor Telepon",
                labelText: "Nomor Telepon",
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text('Pilih Menu Anda : '),
            ListTile(
              title: const Text("McDonald's"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.mcd,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("KFC"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.kfc,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Starbucks"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.starbucks,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Dear Butter"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.croffle,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Fore Coffe"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.fore,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Janji Jiwa"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.janji,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Pizza Hut"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.pizza,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Traffic Bun"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.traffic,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Ichiban Sushi"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.sushi,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Roti O"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.rotio,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            ListTile(
              title: const Text("Chatime"),
              leading: Radio(
                  groupValue: pesanan,
                  value: Pesanan.chatime,
                  onChanged: (Pesanan? value) {
                    setState(() {
                      pesanan = value!;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: ctrlMenu,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Isi Menu Pesanan",
                labelText: "Nama Menu Pesanan",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Jumlah Pesanan : '),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  angka++;
                });
              },
              child: const Text("Tambah"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(205, 244, 74, 2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    angka--;
                  });
                },
                child: const Text("Kurang"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(205, 244, 74, 2),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text('Pembayaran melalui ShopeePay/COD : '),
            ListTile(
              title: const Text("ShopeePay"),
              leading: Checkbox(
                  value: isMetodepembayaran,
                  onChanged: (bool? value) {
                    setState(() {
                      isMetodepembayaran = value!;
                    });
                  }),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = ctrlNama.text;
                  alamat = ctrlAlamat.text;
                  nohp = ctrlNohp.text;
                  menu = ctrlMenu.text;
                });
              },
              child: const Text("Pesan Sekarang"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(205, 244, 74, 2),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
