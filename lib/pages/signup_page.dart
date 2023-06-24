import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islom_najotdir/pages/signin_page.dart';
import 'package:islom_najotdir/service/utils_service.dart';

import '../service/auth_service.dart';
import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static final String id = 'signup_page';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var isLoading = false;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var cpasswordController = TextEditingController();

  void _doSignUp() {
    String name = nameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String cpassword = cpasswordController.text.toString().trim();
    if (name.isEmpty || email.isEmpty || password.isEmpty || cpassword.isEmpty)
      return;

    setState(() {
      isLoading = true;
    });

    if (!email
        .contains(RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$'))) {
      return Utils.showToast("Noto'g'ri email kiritildi");
    }

    if (password.length < 6) {
      return Utils.showToast("Parol 6 ta belgidan kichik bo'lmasligi kerak");
    }

    if (password != cpassword) {
      return Utils.showToast("Parolni tasdiqlashda xato qildingiz!");
    }

    AuthService.signUpUser(name, email, password, cpassword)
        .then((value) => {responseSignUp(value!)});
  }

  void responseSignUp(User firebaseUser) {
    setState(() {
      isLoading = false;
    });
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  void _callSignInPage() {
    Navigator.pushReplacementNamed(context, SignInPage.id);
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
                    "Akkount yarating",
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
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 8, bottom: 8),
                                child: TextField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
                                      icon: Icon(Icons.person_outline),
                                      hintText: "Ism kirting",
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
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                      icon: Icon(Icons.email_outlined),
                                      hintText: "Email kirting",
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
                                      icon: Icon(Icons.lock_open_outlined),
                                      hintText: "Parol yarating",
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
                                  controller: cpasswordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      icon: Icon(Icons.lock_outline),
                                      hintText: "Parolni takrorlang",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // Sign up
                        InkWell(
                          onTap: _doSignUp,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrange,
                            ),
                            child: const Center(
                              child: Text(
                                "Tayyor",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Allqachon akkountingiz mavjudmi?",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              GestureDetector(
                                onTap: _callSignInPage,
                                child: const Text(
                                  "Kiring",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
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
