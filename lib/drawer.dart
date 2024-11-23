import 'package:flutter/material.dart';

// Kelas MyHomePage adalah sebuah widget stateless yang merepresentasikan halaman utama aplikasi.
class MyHomePage extends StatelessWidget {
  // Constructor menerima parameter 'title' untuk judul halaman.
  const MyHomePage({super.key, required this.title});

  // Variabel 'title' digunakan untuk menyimpan judul halaman.
  final String title; 

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold digunakan sebagai kerangka utama halaman.
      appBar: AppBar( // AppBar digunakan untuk menampilkan bilah aplikasi di bagian atas halaman.
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900], // Warna latar belakang
        foregroundColor: Colors.white, // Warna ikon pada AppBar
      ),
      drawer: buildGroupDrawer(context), // Drawer digunakan untuk menampilkan menu navigasi tambahan.
      body: Center(
        child: Text("pemrograman mobile $title"), // Teks utama yang ditampilkan pada body.
      ),
    );
    //body: GridView.count(
    //crossAxisCount: 2,
    //crossAxisSpacing: 10.0,
    //mainAxisSpacing: 10.0,
    //shrinkWrap: true,
    //children: List.generate(10, (index) {
    //return Padding(
    //padding: const EdgeInsets.all(10.0),
    //child: Container(
    //height: 5.0,
    //decoration: BoxDecoration(
    //borderRadius: BorderRadius.circular(20.0),
    //color: Colors.blue[200],
    //),
    //child: Text(
    //"Materi $index",
    //textAlign: TextAlign.center,
    //textAlign: TextAlign.center,
    //style: const TextStyle(
    //color: Colors.black,
    //fontSize: 20.0,
    // ),
    //),
    // ),
    // );
    // })),
    // );
  }

  // Fungsi buildGroupDrawer digunakan untuk membangun menu navigasi (Drawer).
  Widget buildGroupDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Menghilangkan padding default pada ListView.
        children: [
          DrawerHeader( // DrawerHeader digunakan untuk membuat header pada Drawer.
            decoration: BoxDecoration(color: Colors.blue[900]),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[900]), // Latar belakang header Drawer.
              accountName: Text("Riski Amelia Wiji Astuti", // Nama pengguna yang ditampilkan pada DrawerHeader.
              style : TextStyle(
                fontSize : 18.0,
              ),
              ),
              accountEmail: Text("riskiamelia.xpplg2@gmail.com",), // Email pengguna yang ditampilkan.
              currentAccountPictureSize: Size.square(40.0), // Ukuran avatar berbentuk lingkaran.
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white, // Warna latar belakang avatar.
                child: Text("2", // Inisial pengguna atau teks dalam avatar.
                style: TextStyle(fontSize: 25.0, // Ukuran font teks dalam avatar.
                color: Colors.blue, // Warna teks avatar.
                ),
                ),
                ),
              ),
            //child: const Text(
              //"Riski Amelia Wiji Astuti",
              //style: TextStyle(
                //color: Colors.white,
          //       fontSize: 30.0,
          //     ),
          //   ),
          // ),
          // ExpansionTile(
          //   title: Text("Materi"),
          //   children: [
          //     ListTile(
          //       title: Text("Materi 1"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Materi 2"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Materi 3"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Materi 4"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Materi 5"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ],
          // ),
          // ExpansionTile(
          //   title: Text("Tugas"),
          //   children: [
          //     ListTile(
          //       title: Text("Tugas 1"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Tugas 2"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Tugas 3"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Tugas 4"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text("Tugas 5"),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
           // ],
          ),
          ListTile( // ListTile digunakan untuk menampilkan item menu dalam Drawer.
            leading: Icon (Icons.person), // Ikon di depan teks menu.
            title: Text("Amel"), // Nama pengguna atau menu utama.
            subtitle: Text("XII RPL 2"), // Untuk menambah informasi tambahan, seperti kelas pengguna.
            trailing: Icon (Icons.chevron_right), // Ikon panah di bagian kanan menu.
          ),
        ],
      ),
    );
  }
}
