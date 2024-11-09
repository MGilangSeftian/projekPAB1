import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class RegissterScreens extends StatefulWidget {
  const RegissterScreens({super.key});

  @override
  State<RegissterScreens> createState() => _RegissterScreensState();
}

class _RegissterScreensState extends State<RegissterScreens> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final namaLengkapController = TextEditingController();
  final userNameController = TextEditingController();
  String _errorText = "";
  bool _isSignIn = false;
  bool _obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
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
              Image.asset("assets/images/Mobile_register.png"),
              const SizedBox(height: 16,),
              Text("Register Detail",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24,),
              TextField(
                controller: namaLengkapController,
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
                  hintText: "Nama Lengkap",
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: userNameController,
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
                  hintText: "Username",
                ),
              ),
              const SizedBox(height: 16,),
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
                  hintText: "Email",
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
                    child: Text("Register", style: TextStyle(fontSize: 20, color: Colors.white),),
                  )),
              const SizedBox(height: 24,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Sudah Punya Akun ?",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "\nLogin di Sini",
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
