import 'package:flutter/material.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store App',
      initialRoute: 'menu',
      routes: {
        'menu': (context) => const MenuScreen(),
        'vegetable': (context) => const DetailScreen(
          itemName: 'Vegetable Pizza',
          imagePath: 'assets/images/vegetable.jpg',
          description: 'Loaded with fresh veggies and cheese.',
        ),
        'cheese': (context) => const DetailScreen(
          itemName: 'Cheese Pizza',
          imagePath: 'assets/images/cheese.jpg',
          description: 'Classic rich cheese pizza.',
        ),
        'fries': (context) => const DetailScreen(
          itemName: 'Box of Fries',
          imagePath: 'assets/images/fries.png',
          description: 'Crispy hot golden fries.',
        ),
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text(
                'Vegetable Pizza',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () => Navigator.pushNamed(context, 'vegetable'),
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text(
                'Cheese Pizza',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () => Navigator.pushNamed(context, 'cheese'),
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text(
                'Box of Fries',
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.white),
              onTap: () => Navigator.pushNamed(context, 'fries'),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final String description;

  const DetailScreen({
    super.key,
    required this.itemName,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              itemName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              imagePath,
              height: 120,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.fastfood, size: 80),
            ),
            const SizedBox(height: 20),
            Text(description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
