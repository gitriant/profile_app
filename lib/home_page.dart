import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B0082),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/foto.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I\'m',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 24,
                ),
                Stack(
                  children: <Widget>[
                    Text(
                      'YOGI TRIANTO',
                      style: TextStyle(
                        letterSpacing: 8,
                        fontSize: 56,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 4
                          ..color = Colors.white,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'YOGI TRIANTO',
                      style: TextStyle(
                        letterSpacing: 8,
                        fontSize: 56,
                        color: Color(0xff4B0082),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('App Developer',
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 32)),
                    TypewriterAnimatedText('App Designer',
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 32)),
                    TypewriterAnimatedText('Front End Developer',
                        textStyle: TextStyle(color: Colors.white, fontSize: 32))
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Download CV'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: Colors.purple,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
