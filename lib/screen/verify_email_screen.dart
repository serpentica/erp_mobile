import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // Removes default back button
  actions: [
    IconButton(
      icon: Icon(Icons.close, color: Colors.black),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ],
),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.yellow,
                child: Icon(Icons.send, color: Colors.white, size: 40),
              ),
              SizedBox(height: 20),
              Text(
                'تحقق من بريدك الإلكتروني',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'لقد أرسلنا لك تعليمات حول كيفية إعادة تعيين كلمة المرور تحقق أيضًا من مجلد البريد العشوائي',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: Text(
                    'افتح البريد الخاص بي',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
