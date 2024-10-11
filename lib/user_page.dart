import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.red, 
      toolbarHeight: 120, 
  title: Column(
    mainAxisAlignment: MainAxisAlignment.center, 
    children: [
      Text(
        'Đăng nhập để cải thiện trải nghiệm',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      SizedBox(height: 10),
      Container(
        width: double.infinity, 
        padding: EdgeInsets.symmetric(horizontal: 20), 
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red, side: BorderSide(color: Colors.white), 
            backgroundColor: Colors.white, 
          ),
          child: Text('Đăng nhập / Đăng ký'),
        ),
      ),
    ],
  ),
),


      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Thông tin tài khoản'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                   
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Lịch sử giao dịch'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                   
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Yêu thích'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Trò chuyện với Phenikaa Server'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
