import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create your Profile'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://example.com/dog_profile_picture.jpg', // Replace with your image URL
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.edit),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Name',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your City',
              ),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: 'Select State',
              ),
              items: [
                DropdownMenuItem(
                  value: 'State 1',
                  child: Text('State 1'),
                ),
                DropdownMenuItem(
                  value: 'State 2',
                  child: Text('State 2'),
                ),
                // Add more states as needed
              ],
              onChanged: (value) {
                // Handle state selection
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your bio',
              ),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle save changes action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}