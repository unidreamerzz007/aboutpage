import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF2B2930), // Updated background color here
        padding: EdgeInsets.fromLTRB(42, 32, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About us',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 43,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFEF7FF), // Updated font color here
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Meet the creators',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFEF7FF), // Updated font color here
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidget(
                  imagePath: 'assets/profile1.jpg',
                  name: 'Adithya Anil',
                  email: 'unidreamerzz@gmail.com',
                ),
                SizedBox(width: 10),
                ProfileWidget(
                  imagePath: 'assets/profile2.jpg',
                  name: 'Ashwin A',
                  email: 'ashwin022002@gmail.com',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidget(
                  imagePath: 'assets/profile3.jpg',
                  name: 'Gopal S',
                  email: 'gopalshibu142@gmail.com',
                ),
                SizedBox(width: 10),
                ProfileWidget(
                  imagePath: 'assets/profile4.jpg',
                  name: 'Shibin Shibu',
                  email: 'shibinsb01@gmail.com',
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Guided by',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFEF7FF), // Updated font color here
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidget(
                  imagePath: 'assets/profile5.jpg',
                  name: 'Ms Deepthi K Moorthy',
                  email: 'Assistant professor, Dept. of CSE',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String email;
  final double circleSize;

  const ProfileWidget({
    required this.imagePath,
    required this.name,
    required this.email,
    this.circleSize = 83.53,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: circleSize,
          height: circleSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.amber, // Dark yellow border color
              width: 3,
            ),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFEF7FF), // Updated font color here
          ),
        ),
        SizedBox(height: 5),
        Text(
          email,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 7,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFEF7FF), // Updated font color here
          ),
        ),
      ],
    );
  }
}
