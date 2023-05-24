import 'package:clone_ui_basic/screens/login_screen.dart';
import 'package:clone_ui_basic/screens/verify_phone.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

FocusNode myFocusNode = FocusNode();
Color suffixColor = Colors.grey;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(15),
          child: Column(
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
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Create an account so you can order\nyour favorite food even faster',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
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
                          Icons.account_circle_outlined,
                          color:
                              myFocusNode.hasFocus ? Colors.black : Colors.grey,
                        ),
                        hintText: 'Username',
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
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.alternate_email_rounded,
                          color:
                              myFocusNode.hasFocus ? Colors.black : Colors.grey,
                        ),
                        hintText: 'Email',
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
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.phone_android_rounded,
                          color:
                              myFocusNode.hasFocus ? Colors.black : Colors.grey,
                        ),
                        hintText: 'Phone Number',
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
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.password,
                          color:
                              myFocusNode.hasFocus ? Colors.black : Colors.grey,
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
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your password must be 8 or more characters long & contain\na mix of upper & lower case letters, numbers, & symbold',
                          style: GoogleFonts.montserrat(
                            fontSize: 11,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneVerify()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Create account',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
