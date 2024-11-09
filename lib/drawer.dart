import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      drawer: buildGroupDrawer(context),
      body: Center(
        child: Text("pemrograman mobile $title"),
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

  Widget buildGroupDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[900]),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[900]),
              accountName: Text("Riski Amelia Wiji Astuti",
              style : TextStyle(
                fontSize : 18.0,
              ),
              ),
              accountEmail: Text("riskiamelia.xpplg2@gmail.com",),
              currentAccountPictureSize: Size.square(40.0),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("2",
                style: TextStyle(fontSize: 25.0,
                color: Colors.blue,
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
          ListTile(
            leading: Icon (Icons.person),
            title: Text("Amel"),
            subtitle: Text("XII RPL 2"),
            trailing: Icon (Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
