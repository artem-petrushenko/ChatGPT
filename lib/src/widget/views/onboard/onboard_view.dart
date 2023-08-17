import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const String background = 'assets/images/background.png';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Stack(
        children: [
          Image.asset(
            background,
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 72.0,
            left: 32.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Secure.\nAnonymous.\nPrivate',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 71.0),
                Row(
                  children: [
                    FittedBox(
                      child: GestureDetector(
                        onTap: () => context.go('/chats'),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 12.0),
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF0D0A07),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'Get started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const FittedBox(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an\naccount? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Log In',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
