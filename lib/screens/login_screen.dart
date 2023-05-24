import 'package:clone_ui_basic/screens/forget_password.dart';
import 'package:clone_ui_basic/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

FocusNode myFocusNode = FocusNode();
Color suffixColor = Colors.grey;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     MaterialButton(
            //       color: !isLogin ? Colors.white : Colors.amber,
            //       onPressed: () {
            //         isLogin = false;
            //       },
            //       child: Text('Register'),
            //     ),
            //     MaterialButton(
            //       color: isLogin ? Colors.white : Colors.amber,
            //       onPressed: () {
            //         isLogin = true;
            //       },
            //       child: Text('Login'),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 80,
            // ),
            // isLogin ? LoginScreen() : RegisterScreen(),
            Image(
              width: 80,
              height: 80,
              image: AssetImage(
                'assets/logos/logo_light_theme.png',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Log in With Your data that you entered\nduring your registration.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.alternate_email_rounded,
                  color: myFocusNode.hasFocus ? Colors.black : Colors.grey,
                ),
                hintText: 'Email',
                // labelText: 'Email',
                // labelStyle: TextStyle(
                // color: myFocusNode.hasFocus ? Colors.grey : Colors.black),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                // Focused Border
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              autofocus: false,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              focusNode: myFocusNode,
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.password,
                  color: myFocusNode.hasFocus ? Colors.black : Colors.grey,
                ),
                hintText: 'Password',
                // labelText: 'Password',
                // labelStyle: TextStyle(
                //     color: myFocusNode.hasFocus ? Colors.grey : Colors.black),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                // Focused Border
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              autofocus: false,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen()));
                  },
                  child: Text(
                    'Forgot password?',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Log In',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'New to this Experience?',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                'Create an account',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
