import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.location_on, color: Colors.red),
        title: const Row(
          children: [
            Text(
              'Hà Nội',
              style: TextStyle(color: Colors.red),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBar(),
              categoryList(),
            ],
          ),
        ),
      ),
      
    );
  }

  Widget searchBar() {
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Phenikaa University',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget categoryList() {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryCircle(
                text: 'Nướng',
                imageAsset: 'assets/icons8-grill-42.png',
              ),
              CategoryCircle(
                text: 'Lẩu',
                imageAsset: 'assets/icons8-hot-pot-42.png',
              ),
              CategoryCircle(
                text: 'Pizza',
                imageAsset: 'assets/icons8-pizza-42.png',
              ),
              CategoryCircle(
                text: 'Hải sản',
                imageAsset: 'assets/icons8-seafood-42.png',
              ),
              CategoryCircle(
                text: 'Quán nhậu',
                imageAsset: 'assets/icons8-beer-42.png',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryCircle extends StatelessWidget {
  final String imageAsset; // Add imageAsset field
  final String text;

  CategoryCircle({required this.text, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageAsset), // Load image from assets
            backgroundColor: Colors.grey[200],
          ),
          SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}
