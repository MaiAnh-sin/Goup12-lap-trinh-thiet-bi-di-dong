import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E7FE), // Background color for the page
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Profile Picture and Greeting
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with the user's profile image
            ),
            SizedBox(height: 10),
            Text(
              "Welcome, VIP Member",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5B2D94),
              ),
            ),
            Text(
              "Joined: Aug, 2022",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            // Special Message or Offer of the Day
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E4FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      "Today's Special Offer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5B2D94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Get a free dessert with any main course purchase!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Exclusive for VIP Members",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // VIP Level Progress
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF5B2D94),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      "VIP LEVEL",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1500/2000 Points",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 1500 / 2000,
                            color: Colors.yellowAccent,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.star, color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Level 3",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Rewards, Booking History, and Edit Buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildButton("Rewards"),
                  _buildButton("Bookings"),
                  _buildButton("Edit Profile"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Stats for Restaurant Visits
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatsColumn("30", "Total\nVisits"),
                  _buildStatsColumn("1500", "Points\nEarned"),
                  _buildStatsColumn("15", "Days Since\nLast Visit"),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Share My Stats Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5B2D94), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              onPressed: () {
                // Share stats action
              },
              child: Text(
                "Share My VIP Stats",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title) {
    return TextButton(
      onPressed: () {
        // Button action
      },
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF5B2D94),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildStatsColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5B2D94),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
