import 'package:flutter/material.dart';
import 'package:mobile_app/adminboxchat.dart';
//import 'package:mobile_app/boxchat.dart';
import 'package:mobile_app/userboxchat.dart';
import 'package:mobile_app/profile.dart';

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
                  foregroundColor: Colors.red,
                  side: BorderSide(color: Colors.white),
                  backgroundColor: Colors.white,
                ),
                child: Text('Logout'),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserProfilePage()),
                    );
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
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Trò chuyện với Phenikaa Server'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    _showUserAdminDialog(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showUserAdminDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Role'),
          content: Text('Are you a User or Admin?'),
          actions: <Widget>[
            TextButton(
              child: Text('User'),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UserBoxChat()), // Navigate to user chat
                );
              },
            ),
            TextButton(
              child: Text('Admin'),
              onPressed: () {
                Navigator.pop(context); // Close the role dialog
                _showAdminPasswordDialog(context); // Show password dialog
              },
            ),
          ],
        );
      },
    );
  }

  void _showAdminPasswordDialog(BuildContext context) {
    TextEditingController passwordController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Admin Password'),
          content: TextField(
            controller: passwordController,
            decoration: InputDecoration(hintText: 'Password'),
            obscureText: true, // To hide the password input
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context); // Close the password dialog
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                if (passwordController.text == '123456') {
                  Navigator.pop(context); // Close the password dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AdminBoxChat()), // Navigate to admin chat
                  );
                } else {
                  // Show an error message if the password is incorrect
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect password!')),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
