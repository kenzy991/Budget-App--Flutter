import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4F8), 
      appBar: AppBar(
        backgroundColor: Colors.blueAccent, 
        title: Text(
          "Hello, Name",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Icon(Icons.person, size: 30, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xFF4A90E2), Color(0xFF357ABD)],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Balance", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 10),
                    Text(
                      "\$3,250",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.arrow_downward, color: Colors.white),
                          SizedBox(width: 5),
                          Text("Income: \$5,000",
                              style: TextStyle(color: Colors.white)),
                        ]),
                        Row(children: [
                          Icon(Icons.arrow_upward, color: Colors.white),
                          SizedBox(width: 5),
                          Text("Expenses: \$1,749",
                              style: TextStyle(color: Colors.white)),
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Center(
  child: Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage('assets/img4.png'),
        fit: BoxFit.contain,
      ),
    ),
  ),
),

              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Recent Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart, color: Colors.red),
                title: const Text("Groceries"),
                trailing: const Text(
                  "\$120",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.attach_money, color: Colors.green),
                title: const Text("Salary"),
                trailing: const Text(
                  "\$5000",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

