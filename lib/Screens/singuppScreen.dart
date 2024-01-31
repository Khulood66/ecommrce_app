import 'package:amazon_app/Screens/singinScreen.dart';
import 'package:amazon_app/them.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                //هنا سويت كونتينر عشان اسوي للايكون بوتن باكروند كول واخليه دايره
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.tertiaryColor,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    splashColor: AppColors.quaternaryColor,
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //لازم اغير الفونت لفونتات قوقل
              const Text(
                " Create\nAccount",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor),
              ),
              const SizedBox(
                height: 50,
              ),
              //هنا لازم اعدل واحط الكونتلرولر وبرضو اعدل الديكوريشن واسوي فاليديشن
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.secondaryColor,
                    size: 32,
                  ),
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  labelStyle:
                      TextStyle(color: AppColors.secondaryColor, fontSize: 18),
                  fillColor: Color.fromARGB(255, 218, 255, 255),
                  floatingLabelStyle: TextStyle(fontSize: 20),
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 126, 188, 219)),
                  filled: true,
                  iconColor: AppColors.secondaryColor,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text("Email"),
                  hintText: "khulood55@gmail.com",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // نفس التكست الي فوق
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    color: AppColors.secondaryColor,
                    size: 32,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                  ),
                  labelStyle:
                      TextStyle(color: AppColors.secondaryColor, fontSize: 18),
                  fillColor: Color.fromARGB(255, 218, 255, 255),
                  floatingLabelStyle: TextStyle(fontSize: 20),
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 126, 188, 219)),
                  filled: true,
                  iconColor: AppColors.secondaryColor,
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text("Password"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: AppColors.secondaryColor)),
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("Imges/google.png"),
                        height: 32,
                        width: 32,
                      ),
                      Text(
                        "  Sing Up With Google",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    "Alredy have an account?",
                    style: TextStyle(
                        color: AppColors.secondaryColor, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SingInScreen();
                      }));
                    },
                    child: const Text(
                      "Sing In",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.quaternaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
