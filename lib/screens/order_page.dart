import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
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
            Text(
              'Sri Lakshmi Venkateshwara Vegetables & Fruits',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Mr. Arvina'),
            Text('+91 9900495080'),
            Text('#105, 14th A main, 8th B cross, Weavers Layout, \nAttiguppe, Vijaynagar, Bengaluru-560040'),
            SizedBox(height: 16),
            Text(
              'Order Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('Sl No')),
                DataColumn(label: Text('Items Name')),
                DataColumn(label: Text('Qunt.')),
                DataColumn(label: Text('Price/Kg')),
                DataColumn(label: Text('Amount')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Carrot / Carrot')),
                    DataCell(Text('5')),
                    DataCell(Text('25')),
                    DataCell(Text('125.00')),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount'),
                Text('₹ 6,000.00'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order #'),
                Text('SLVddmmyy12345'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date'),
                Text('26, Aug 24 - 4:30pm'),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: Text('Booking Success'),
            ),
          ],
        ),
      ),
    );
  }
}