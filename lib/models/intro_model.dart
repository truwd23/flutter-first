import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroModel {
  IntroModel(this.gambarImagePath, this.headingText, this.subHeadingText);

  final String gambarImagePath;
  final String headingText;
  final String subHeadingText;
}

List<IntroModel> imgList = [
  IntroModel('assets/images/on_boarding_1.png', 'Recording spendings\n& income',
      'Just add transactions and you\'ll always know where your money goes'),
  IntroModel('assets/images/on_boarding_2.png', 'Getting started is easy!',
      'Create your user and workspace name. add coworkers and you\'re in.'),
  IntroModel(
      'assets/images/on_boarding_3.png',
      'Track your mood and\nreflect on your day',
      'Get an overview of how you are performing and motivate yourself to achieve even more.'),

  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Builder(
        builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: [
                // CircleAvatar(
                //   radius: 70,
                //   backgroundImage: NetworkImage(
                //     "https://i.ibb.co/PGv8ZzG/me.jpg",
                //   ),
                // ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item.gambarImagePath,
                        fit: BoxFit.cover,
                        width: 140,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${item.headingText}',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    '${item.subHeadingText}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    )
    .toList();
