import 'package:auto/switching.dart';
import 'package:flutter/material.dart';

class PaymentOnboardingPage extends StatelessWidget {
  const PaymentOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            /// Skip Button
            Positioned(
              right: 20,
              top: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Switching()),
                  );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ),

            /// Car Image
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/ee.png",
                  width: 620,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /// Bottom White Panel
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 320,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 28),
                decoration: const BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    /// Title
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "Easy "),
                          TextSpan(
                            text: "Payment Process",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(text: "\nwith "),
                          TextSpan(text: "AUFFO"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Description
                    const Text(
                      "We understand that your time is valuable. "
                      "Our payment process is fast and secure, "
                      "ensuring you can hit the road quickly "
                      "without any hassle.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),

                    const Spacer(),

                    /// Bottom Controls
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Back Button
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                            ); // goes back to OnboardScreen2
                          },
                          child: circleButton(Icons.arrow_back),
                        ),

                        /// Indicators
                        Row(
                          children: [
                            indicator(false),
                            indicator(false),
                            indicator(true),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget indicator(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: active ? Colors.black : Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget circleButton(IconData icon) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

/// Custom Painter for Background Circles
class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final center = Offset(size.width / 2, size.height * 0.35);

    canvas.drawCircle(center, 220, paint);
    canvas.drawCircle(center, 170, paint);
    canvas.drawCircle(center, 120, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
