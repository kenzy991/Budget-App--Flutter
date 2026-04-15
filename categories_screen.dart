import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFF448AFF),
          title: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            child: Column(children: [
              Items(title: "Food", amount: "\$450", icon: Icons.fastfood),
              SizedBox(height: 5),
              Items(title: "Transport", amount: "\$120", icon: Icons.directions_bus),
              SizedBox(height: 5),
              Items(title: "Shopping", amount: "\$300", icon: Icons.shopping_bag),
              SizedBox(height: 5),
              Items(title: "Bills", amount: "\$210", icon: Icons.receipt),
              SizedBox(height: 5),
              Items(title: "Health", amount: "\$90", icon: Icons.favorite),
              SizedBox(height: 5),
              Items(title: "Education", amount: "\$50", icon: Icons.class_),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: Color(0xFF448AFF),
  child: Icon(Icons.add, color: Colors.white),
),
      )
    );
  }
}

class Items extends StatelessWidget {
 String title;
   String amount;
   IconData icon;

   Items({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Color(0xFF448AFF)),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              amount,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}