import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/electronics.jpg', // Make sure this image exists in assets
            fit: BoxFit.cover,
          ),

          // Semi-transparent overlay for better readability
          Container(
            color: Colors.black.withOpacity(0.5), // Dark overlay effect
          ),

          // Centered Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // App Title
                Text(
                  "Welcome to Our Store",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 20), // Spacing

                // Open Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductListScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Stylish button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded edges
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    elevation: 5, // Shadow effect
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  child: Text("Open"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
