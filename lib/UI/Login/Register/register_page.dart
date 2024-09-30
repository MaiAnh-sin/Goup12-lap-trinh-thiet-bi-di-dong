import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              pageTitle(),
              const SizedBox(height: 55),
              formRegister(),
              orSplit(),
              socialLogin(),
              haveAccount(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget pageTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Text(
        "REGISTER",
        style: TextStyle(
          color: Colors.white.withOpacity(0.87),
          fontFamily: "Lato",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget formRegister() {
    return Form(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                usernameField(),
                const SizedBox(height: 25),
                passwordField(),
                const SizedBox(height: 25),
                confirmPassword(),
                loginButton(),
                
              ],
            )));
  }

  Widget usernameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            fontSize: 20,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 8),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Your Username",
                hintStyle: TextStyle(
                  color: Color(0xFF535353),
                  fontFamily: "Lato",
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                fillColor: Color(0xFF1D1D1),
                filled: true,
              ),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: 20,
              ),
            ))
      ],
    );
  }

  Widget passwordField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            fontSize: 20,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 8),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Your Password",
                hintStyle: TextStyle(
                  color: Color(0xFF535353),
                  fontFamily: "Lato",
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                fillColor: Color(0xFF1D1D1),
                filled: true,
              ),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: 20,
              ),
              obscureText: true,
            ))
      ],
    );
  }

  Widget confirmPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: TextStyle(
            color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            fontSize: 20,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 8),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm Your Password",
                hintStyle: TextStyle(
                  color: Color(0xFF535353),
                  fontFamily: "Lato",
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                fillColor: Color(0xFF1D1D1),
                filled: true,
              ),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: 20,
              ),
              obscureText: true,
            ))
      ],
    );
  }

  Widget loginButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              disabledBackgroundColor: Color(0xFF8687E7).withOpacity(0.5)),
          child: const Text("Register",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.white,
              ))),
    );
  }

  Widget orSplit() {
    return Container(
      margin: const EdgeInsets.only(top: 45, bottom: 40),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
          const Text(
            "or",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Color(0xFF979797),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialLogin() {
    return Column(children: [
      socialLoginWithGoogle(),
      socialLoginWithApple(),
    ]);
  }

  Widget socialLoginWithGoogle() {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: const BorderSide(
                width: 1,
                color: Color(0xFF8875FF),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons8-google-24.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text("Register with Google",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lato",
                      color: Colors.white,
                    )),
              ),
            ],
          )),
    );
  }

  Widget socialLoginWithApple() {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: const BorderSide(
                width: 1,
                color: Color(0xFF8875FF),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons8-apple-24.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Register with Apple",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Lato",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget haveAccount(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: "Already have an account? ",
          style: const TextStyle(
            fontSize: 12,
            fontFamily: "Lato",
            color: Color(0xFF979797),
          ),
          children: [
            TextSpan(
              text: "Login",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Lato",
                color: Colors.white.withOpacity(0.87),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
            ),
          ],
        ),
      ),
    );
  }
}
