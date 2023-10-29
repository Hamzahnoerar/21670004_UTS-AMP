import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            Padding(
              padding: EdgeInsets.all(100),
              child: const Text ('Profil'),
            ),
            Icon(Icons.settings),
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/me2.jpeg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nama', 'Hamzah Noer Arifin', Icons.person_sharp),
            const SizedBox(height: 10),
            itemProfile('Npm', '21670004', Icons.notes),
            const SizedBox(height: 10),
            itemProfile('Program Studi', 'Informatika', Icons.school),
            const SizedBox(height: 10),
            itemProfile('Email', 'hamzahnoer11@gmail.com', Icons.mail_sharp),
            const SizedBox(
              height: 20,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
  

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 158, 197, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Color.fromARGB(255, 114, 135, 255).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: const Icon(Icons.open_in_new, color: Color.fromARGB(255, 255, 255, 255)),
        tileColor: Colors.white,
      ),
    );
  }
}
