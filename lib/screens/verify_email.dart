import 'package:clone_ui_basic/screens/verify_phone.dart';
import 'package:clone_ui_basic/screens/verify_sucess.dart';
import 'package:flutter/material.dart';

import 'package:flutter_verification_code/flutter_verification_code.dart';

class EmailVerify extends StatefulWidget {
  const EmailVerify({super.key});

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

String _code = '';

class _EmailVerifyState extends State<EmailVerify> {
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
              child: Icon(Icons.mark_email_read_rounded),
            ),
            Text(
              'Verify Phone Number',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text('Please enter the number code send to\n your phone number.',
                style: TextStyle(fontSize: 15, color: Colors.grey[700])),
            SizedBox(
              height: 20,
            ),
            Container(
              child: VerificationCode(
                length: 4,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                underlineColor: Colors.black,
                keyboardType: TextInputType.number,
                underlineUnfocusedColor: Colors.black,
                onCompleted: (value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SucessVerify()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                'Confirm',
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
              height: 30,
            ),
            Text(
              'Did not receive verification code?',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhoneVerify()));
              },
              child: Text(
                'Verification Email Address',
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
