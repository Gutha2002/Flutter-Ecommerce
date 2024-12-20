import 'package:flutter/material.dart';
import 'package:mediart/bottom_bar.dart';
import 'package:mediart/screens/cart_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

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
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'SLV Vegetables & Fruits',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF00C853),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTabContent(
            'Vegetables',
          ),
          _buildTabContent('Fruits'),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildTabContent(String category) {
    return Column(
      children: [
        TabBar(
          labelStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontSize: 16),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorWeight: 4.0,
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Vegetables',
            ),
            Tab(text: 'Fruits'),
          ],
        ),
        Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          alignment: Alignment.centerLeft,
          child: const Text(
            '15 Items',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
            suffixIcon: const Icon(
              Icons.mic,
              color: Colors.green,
            ),
            hintText: ' $category',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return _buildProductItem(category);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem(String category) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/carrot.jpg',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: const Text(
          'Carrot - Carrot',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('1 Kg\n₹ 25'),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00C853),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
