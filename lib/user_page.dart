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
        title: Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Đăng nhập để cải thiện trải nghiệm',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, 
                  foregroundColor: Colors.white,  
                ),
                child: Text('Đăng nhập / Đăng ký'),
              ),
            ],
          ),
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
