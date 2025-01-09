import 'package:flutter/material.dart';
import 'package:template_project/halaman_sign_up.dart';
import 'package:template_project/halaman_sign_in.dart';

class HalamanAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/gnw.jpg',
            width: 225,
            height: 225,
            fit: BoxFit.cover,
          ),
          SizedBox(height:25),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanSignIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Sign In', style: TextStyle(fontSize: 16)),
            ),
          SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanSignUp()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.green),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}