import 'package:flutter/material.dart';
import '../product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: "PS5",
      description: "Latest PlayStation with 4K gaming.",
      price: 499.99,
      imageUrl: "assets/ps5.jpg",
    ),
    Product(
      title: "Xbox Series X",
      description: "Powerful gaming console with next-gen graphics.",
      price: 599.99,
      imageUrl: "assets/xbox.jpg",
    ),
    Product(
      title: "MacBook Air M2",
      description: "Lightweight laptop with powerful M2 chip.",
      price: 1299.99,
      imageUrl: "assets/macbook.jpg",
    ),
    Product(
      title: "iPhone 14 Pro",
      description: "Latest iPhone with a powerful A16 chip.",
      price: 1099.99,
      imageUrl: "assets/iphone.jpg",
    ),
    Product(
      title: "Samsung Galaxy S23",
      description: "High-end Android smartphone with top features.",
      price: 999.99,
      imageUrl: "assets/samsung.jpg",
    ),
    Product(
      title: "Apple Watch Ultra",
      description: "Smartwatch with advanced fitness tracking.",
      price: 799.99,
      imageUrl: "assets/apple_watch.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(product: product),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shadowColor: Colors.black54,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12.0),
                    leading: Hero(
                      tag: product.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          product.imageUrl,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      product.title,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "\$${product.price.toStringAsFixed(2)}",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
