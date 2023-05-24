import 'package:clone_ui_basic/screens/home_screen.dart';
import 'package:clone_ui_basic/screens/verify_email.dart';
import 'package:flutter/material.dart';

class SucessVerify extends StatefulWidget {
  const SucessVerify({super.key});

  @override
  State<SucessVerify> createState() => _SucessVerifyState();
}

String _code = '';

class _SucessVerifyState extends State<SucessVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[600],
              ),
              child: Icon(
                Icons.verified_user,
                color: Colors.black,
              ),
            ),
            Text(
              'Account Created!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
                'Dear User, your account has been created.\nClick \'Continue\' to start using app!',
                style: TextStyle(fontSize: 15, color: Colors.grey[700])),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend Code',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('by clicking start. you agree to our'),
                TextButton(
                  onPressed: () {},
                  child: Text('Privacy Policy'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('and'),
                TextButton(
                  onPressed: () {},
                  child: Text('Teams and Conditions'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
