import 'package:flutter/material.dart';
import 'package:mediart/bottom_bar.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int _selectedIndex = 1;

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
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order History",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Below are your most recent orders:',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Card(
              color: Colors.grey[400],
               elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text("Order Number"),
                  SizedBox(width: 100),
                  Text("Date"),
                  SizedBox(width: 50),
                  Text("Amount"),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Order '),
                  Text('#:429242424',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                   SizedBox(width: 50),
                  Text('26, Aug 24'),
                   SizedBox(width: 50),
                  Text('6000'),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Order '),
                  Text('#:429242421',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                   SizedBox(width: 50),
                  Text('26, Aug 24'),
                  SizedBox(width: 50),
                  Text('5000'),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
