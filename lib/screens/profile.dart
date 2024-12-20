import 'package:flutter/material.dart';
import 'package:mediart/bottom_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/orderHistory');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/cart');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://example.com/mountain.jpg', // Replace with your image URL
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://example.com/profile_picture.jpg'), 
                    backgroundColor: Colors
                        .blue, 
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Andrew D.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('andrew@domainname.com'),
            SizedBox(height: 16),
            Text('Your Account'),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle edit profile action
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification Settings'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle notification settings action
              },
            ),
            Text('App Settings'),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Support'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle support action
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Terms of Service'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle terms of service action
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle log out action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
