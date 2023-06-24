import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/signup_page.dart';
import 'package:islom_najotdir/service/utils_service.dart';

import '../service/auth_service.dart';
import 'home_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static final String id = 'signin_page';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var isLoading = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void _callSignUpPage() => Navigator.pushNamed(context, SignUpPage.id);

  void _doSignIn() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if (email.isEmpty || password.isEmpty) return;

    setState(() {
      isLoading = true;
    });

    if (!email
        .contains(RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$'))) {
      return Utils.showToast("Noto'g'ri email kiritildi");
    }

    if (password.length < 6) {
      Utils.showToast("Parol 6 ta belgidan kichik bo'lmasligi kerak");
    }

    AuthService.signInUser(email, password)
        .then((value) => {responseSignIn(value!)});
  }

  void responseSignIn(User firebaseUser) {
    setState(() {
      isLoading = false;
    });
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepOrange[800]!,
          Colors.deepOrange[400]!,
          Colors.deepOrange[200]!,
          Colors.orange[100]!,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Tizimga kirish",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Xush kelibsiz",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, top: 8, bottom: 8),
                            child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.email_outlined),
                                  hintText: "Email kiriting",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, top: 8, bottom: 8),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.lock_outline),
                                  hintText: "Parol kirting",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : const SizedBox.shrink(),
                        const SizedBox(
                          height: 25,
                        ),
                        // Sign up
                        InkWell(
                          onTap: _doSignIn,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrange,
                            ),
                            child: const Center(
                              child: Text(
                                "Kirish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "Quyidagilar orqali kirish:",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Utils.showToast(
                                    "Ushbu funksiya hozircha mavjud emas");
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(color: Colors.deepOrange)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CommunityMaterialIcons.google,
                                        color: Colors.red),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Google orqali ro'yxatdan o'tish"),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Utils.showToast(
                                    "Ushbu funksiya hozircha mavjud emas");
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(color: Colors.deepOrange)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CommunityMaterialIcons.facebook,
                                        color: Colors.blue),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Facebook orqali ro'yxatdan o'tish"),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Utils.showToast(
                                    "Ushbu funksiya hozircha mavjud emas");
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border:
                                        Border.all(color: Colors.deepOrange)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CommunityMaterialIcons.instagram,
                                        color: Colors.red),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Instagram orqali ro'yxatdan o'tish"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Akkountingiz yo'qmi?",
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            GestureDetector(
                              onTap: _callSignUpPage,
                              child: const Text(
                                "Akkount yarating",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
