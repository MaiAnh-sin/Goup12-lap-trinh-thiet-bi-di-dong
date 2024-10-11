import 'package:flutter/material.dart';
import 'package:mobile_app/booking.dart';

class Resultfinding extends StatelessWidget {
  final String category;

  Resultfinding({required this.category});

  //  data
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Manwah - Thái Hà',
      'address': 'Tầng 2 TTTM Parkson cũ, số 1 Thái Hà, Q. Đống Đa',
      'rating': 4.0,
      'price': '\$\$',
      'distance': 3.3,
      'image': 'assets/manwah.jfif',
    },
    {
      'name': 'Manwah - Lê Văn Lương',
      'address': 'Tầng 4, tòa nhà Center Point, 27 Lê Văn Lương, Nhân Chính',
      'rating': 4.0,
      'price': '\$\$',
      'distance': 3.9,
      'image': 'assets/manwah.jfif',
    },
    {
      'name': 'Manwah - Lotte Đào Tấn',
      'address': 'Tầng 6, TTTM Lotte Center, 54 Liễu Giai, Q. Ba Đình',
      'rating': 4.5,
      'price': '\$\$',
      'distance': 5.7,
      'image': 'assets/manwah.jfif',
    },
    {
      'name': 'Manwah - Times City',
      'address': 'Tầng B1, TTTM Vincom Times City, 458 Minh Khai',
      'rating': 4.0,
      'price': '\$\$',
      'distance': 6.0,
      'image': 'assets/manwah.jfif',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Kết quả tìm kiếm cho: $category',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Nhà hàng',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = restaurants[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(
                      restaurant['image'],
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      restaurant['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(restaurant['address']),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            Text('${restaurant['rating']}'),
                            SizedBox(width: 10),
                            Text(restaurant['price']),
                            SizedBox(width: 10),
                            Icon(Icons.location_on,
                                color: Colors.blue, size: 16),
                            Text('${restaurant['distance']} Km'),
                          ],
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Booking(),
                              ),
                            );
                          },
                          child: Text('Đặt bàn / giữ chỗ'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
