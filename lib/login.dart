import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/lgn.png',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text('Password'),
                    ),
                  ),
                SizedBox(height: 20),
                Center(
                child: Column(
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun?, ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Daftar di sini',
                          style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, color: Colors.blue),
                        ),
                          ],
                       ),
                       SizedBox(height: 20),
                       ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/dashboard');
                        },
                        child: Text('Masuk'),
                      ),
                  ],
                ),
                  ),
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
