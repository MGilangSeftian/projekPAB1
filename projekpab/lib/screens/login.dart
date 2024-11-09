import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});



  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _errorText = "";
  bool _isSignIn = false;
  bool _obscurePassword = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/Mobile_login.png"),
              const SizedBox(height: 16,),
              Text("Login Detail",
              style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: "Username or Email",
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: passwordController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off
                          :Icons.visibility,
                    ),),
                  hintText: "Password",
                ),
                obscureText: _obscurePassword,
                ),
              const SizedBox(height: 16,),
              Text("Forget Password ?", style: TextStyle(fontSize: 10),),
              const SizedBox(height: 24,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white),),
                  )),
              const SizedBox(height: 24,),
              RichText(
                  text: TextSpan(
                    text: "Belum Punya Akun ?",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    children: [
                      TextSpan(
                        text: "Daftar di sini",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (){}
                      ),
                    ]
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
