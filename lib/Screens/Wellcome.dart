import 'package:amazon_app/Screens/singinScreen.dart';
import 'package:amazon_app/Screens/singuppScreen.dart';
import 'package:amazon_app/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wellcomescreen extends StatelessWidget {
  const Wellcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Image(
            image: AssetImage("Imges/wellcomscreen.png"),
            height: 400,
            fit: BoxFit.fitWidth,
          ),
          const Text(
            "ASTAPRAK",
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SingUpScreen();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.secondaryColor),
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      "Sing up",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingInScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                            width: 1, color: AppColors.secondaryColor)),
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      "Sing in",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
