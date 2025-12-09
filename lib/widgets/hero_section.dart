import 'package:flutter/material.dart';
import 'typing_text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // LEFT SIDE TEXT
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello",
                    style: TextStyle(color: Colors.white70, fontSize: 28),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "I am",
                    style: TextStyle(color: Colors.white70, fontSize: 38),
                  ),
                  const SizedBox(height: 10),

                  // TYPING ANIMATION
                  TypingText(
                    text: "Cham Myae",
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // RIGHT SIDE IMAGE
              SizedBox(
                width: constraints.maxWidth * 0.35,
                child: Image.asset(
                  "assets/images/cmaye_portfolio.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
