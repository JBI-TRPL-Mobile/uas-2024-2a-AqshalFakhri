import 'package:flutter/material.dart';
import 'package:template_project/halaman_profile.dart';

class HalamanMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[300],
              ),
              child: Icon(Icons.person, color: Colors.grey[700]),
            ),
            title: Text(
              'User Name $index',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'This is a short message preview...',
              style: TextStyle(color: Colors.grey[600]),
            ),
            onTap: () {
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context); 
          } else if (index == 3) {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HalamanProfile()),
    );
          }
        },
      ),
    );
  }
}