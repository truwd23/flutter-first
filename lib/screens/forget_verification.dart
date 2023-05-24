import 'package:clone_ui_basic/screens/login_screen.dart';
import 'package:clone_ui_basic/screens/verify_sucess.dart';
import 'package:flutter/material.dart';

import 'package:flutter_verification_code/flutter_verification_code.dart';

class ForgetVerify extends StatefulWidget {
  const ForgetVerify({super.key});

  @override
  State<ForgetVerify> createState() => _ForgetVerifyState();
}

class _ForgetVerifyState extends State<ForgetVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[600],
              ),
              child: Icon(
                Icons.lock_open_rounded,
                color: Colors.black,
                size: 60,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Well done!',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'You have successfully change\npassword. Please use your new\n password when logging in.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Log in to continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[800]),
                  child: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Need Help?',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please send any feedback or bug report to',
              style: TextStyle(fontSize: 13, color: Colors.grey[600]),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SucessVerify()));
              },
              child: Text(
                'company@domain.com',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
