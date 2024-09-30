import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/UI/Login/Register/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var _autoValidate = AutovalidateMode.disabled;

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
              formLogin(),
              orSplit(),
              socialLogin(),
              createAccount(context),
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
        "Login To RestaurantGo",
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

  Widget formLogin() {
    return Form(
        key: _formKey,
        autovalidateMode: _autoValidate,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                usernameField(),
                const SizedBox(height: 25),
                passwordField(),
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
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Email is required";
              }
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value);
              if (!emailValid) {
                return "Email is required";
              }
            },
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 20,
            ),
          ),
        ),
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
            validator: (String? value) {
              if (value == null || value.isEmpty) return "Password required";
              return null;
            },
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 20,
            ),
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget loginButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
          onPressed: _onHandleLoginSubmit,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              disabledBackgroundColor: Color(0xFF8687E7).withOpacity(0.5)),
          child: const Text("Login",
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
                child: const Text("Login with Google",
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
                  "Login with Apple",
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

  Widget createAccount(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: "Don't have an account?",
          style: const TextStyle(
            fontSize: 12,
            fontFamily: "Lato",
            color: Color(0xFF979797),
          ),
          children: [
            TextSpan(
              text: "Register",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Lato",
                color: Colors.white.withOpacity(0.87),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  goToregisterPage(context);
                },
            ),
          ],
        ),
      ),
    );
  }

  void _onHandleLoginSubmit() {
    
    if( _autoValidate == AutovalidateMode.disabled ) {
      setState(() {
        _autoValidate = AutovalidateMode.always;
      });
    }

    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
    } else {}
  }

  void goToregisterPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }
}
