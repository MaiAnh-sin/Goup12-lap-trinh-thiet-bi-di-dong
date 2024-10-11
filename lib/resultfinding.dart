import 'package:flutter/material.dart';

class Resultfinding extends StatelessWidget {
  final String category;

  Resultfinding({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kết quả tìm kiếm cho: $category')),
      body: Center(
        child: Text('Nội dung cho thể loại: $category'),
      ),
    );
  }
}
