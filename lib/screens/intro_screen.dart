import 'package:clone_ui_basic/models/intro_model.dart';
import 'package:clone_ui_basic/screens/login_screen.dart';
import 'package:clone_ui_basic/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

int currentIndex = 0;
final CarouselController _carouselController = CarouselController();

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: CarouselSlider(
                  items: imageSliders,
                  carouselController: _carouselController,
                  options: CarouselOptions(
                      height: 350,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      autoPlayInterval: const Duration(seconds: 3),
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      autoPlay: true),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map(
                  (entry) {
                    return GestureDetector(
                      onTap: () => _carouselController.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        currentIndex == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  },
                ).toList(),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Sign Up with Email ID',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 30,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.network(
                    'assets/images/google.png',
                    fit: BoxFit.cover,
                    width: 15,
                  ),
                  label: const Text('Sign Up with Google',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Alyready have an account?',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white), // warna latar belakang biru
                      foregroundColor: MaterialStateProperty.all(
                          Colors.black), // warna teks putih
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
