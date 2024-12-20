import 'package:flutter/material.dart';
import 'package:mediart/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 3;

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
        title: const Text('Review Orders'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to HomeScreen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vegetables & Fruits',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '10 Items',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Update this with your dynamic item count
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/carrot.jpg', // Replace with the actual image asset path
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      title: const Text('Carrot - Carrot'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('1 Kg - ₹25'),
                          Text('₹75'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          const Text('5'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Total: ₹1,245.00',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Confirm Order'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
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
