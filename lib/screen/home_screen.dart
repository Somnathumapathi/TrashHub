import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Trash Hub'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/image/app_log1.png', // Replace with the actual path to your app logo image
              height: 150.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to the Waste Management App! Easily manage your waste disposal and recycling needs with our user-friendly interface.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the collection schedule page
              },
              child: Text('View Collection Schedule'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the waste disposal request page
              },
              child: Text('Request Waste Disposal'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the recycling information page
              },
              child: Text('Recycling Information'),
            ),
          ],
        ),
      ),
    );
  }
}
