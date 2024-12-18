import 'package:flutter/material.dart';
import 'package:mobile_app/resultfinding.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SearchScreen(),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Container(
            margin: EdgeInsets.only(
                top: 30,
                bottom: 20), 
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5), 
            ),
            child: const Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Hà Nội',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold), 
                  ),
                ),
              ],
            ),
          ),

          // Search Bar
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bạn muốn đặt chỗ đến đâu',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(Icons.search, color: Colors.white),
              ],
            ),
          ),
          // Keywords Section
          Text(
            'Từ khoá',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'Phenikaa'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('Phenikaa'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'manwah'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('manwah'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'isushi'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('isushi'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'times city'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('times city'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'koh yam'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('koh yam'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'aeon mall hà đông'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('aeon mall hà đông'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'Royal'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('Royal'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Resultfinding(category: 'aeon mall hà đông'),
                      ),
                    );
                  },
                  child: _buildSearchKeyword('aeon mall hà đông'),
                ),
              ],
            ),
          ),
          // Suggestions Section
          Text(
            'Gợi ý',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchKeyword(String keyword) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Reduced height
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey), // Only bottom border
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10, height: 20,),
          Expanded(child: Text(keyword)),
        ],
      ),
    );
  }
}
