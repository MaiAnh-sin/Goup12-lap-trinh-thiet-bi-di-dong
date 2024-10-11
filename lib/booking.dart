import 'package:flutter/material.dart';
import 'package:mobile_app/home_page.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int adultCount = 2;
  int childCount = 2;
  DateTime selectedDate = DateTime(2004, 11, 27);
  TimeOfDay selectedTime = TimeOfDay.now(); // Lấy giờ hiện tại
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Đặt Bàn'),
        backgroundColor: Colors.red,
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Thông tin đặt chỗ', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCountSelector('Số người lớn', adultCount, (newValue) {
                    setState(() {
                      adultCount = newValue;
                    });
                  }),
                  _buildCountSelector('Số trẻ em', childCount, (newValue) {
                    setState(() {
                      childCount = newValue;
                    });
                  }),
                ],
              ),
              SizedBox(height: 20),
              Text('Ngày đến: ${selectedDate.toLocal()}'.split(' ')[0]),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null && picked != selectedDate)
                    setState(() {
                      selectedDate = picked;
                    });
                },
                child: Text('Chọn ngày'),
              ),
              SizedBox(height: 20),
              Text('Giờ đến: ${selectedTime.format(context)}'),
              SizedBox(height: 20),
              Text('Ghi chú:', style: TextStyle(fontSize: 16)),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nhập ghi chú ở đây',
                ),
              ),
              SizedBox(height: 30),
              Text('Thông tin người đặt', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Họ và tên',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Màu nền của nút
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text('Tiếp tục'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountSelector(String label, int count, Function(int) onChanged) {
    return Row(
      children: [
        Text(label),
        IconButton(
           style: IconButton.styleFrom(
                backgroundColor: Colors.red, // Màu nền của nút
                  ),
          icon: Icon(Icons.remove),
          onPressed: () {
            if (count > 1) {
              onChanged(count - 1);
            }
          },
        ),
        Text('$count'),
        IconButton(
          style: IconButton.styleFrom(
                backgroundColor: Colors.red, // Màu nền của nút
                  ),
          icon: Icon(Icons.add),
          onPressed: () {
            onChanged(count + 1);
          },
        ),
      ],
    );
  }
}
