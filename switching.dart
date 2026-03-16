import 'package:flutter/material.dart';

class Switching extends StatelessWidget {
  const Switching({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// LOGO
              Image.asset("assets/logo.jpg", height: 80),

              const SizedBox(height: 25),

              /// TITLE
              const Text(
                "Select Your Role",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 40),

              /// CUSTOMER CARD
              RoleCard(
                //
                image: "asstes/customer.jpg",
                title: "Customer",
                onTap: () {
                  print("Customer Selected");
                },
              ),

              const SizedBox(height: 25),

              /// OWNER CARD
              RoleCard(
                image: "assets/owner.webp",
                title: "Owner",
                // isLight: true,
                onTap: () {
                  print("Owner Selected");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoleCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isLight;
  final VoidCallback onTap;

  const RoleCard({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    this.isLight = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isLight ? const Color(0xffECECEC) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black26),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// IMAGE
            Expanded(child: Image.asset(image)),

            const SizedBox(height: 8),

            /// TITLE
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
