import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  bool isPasswordShow =
      false; // as we only need this property for this page and will not acces this property out of this page

  bool isRegistershow = false;
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwrdCtrl = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return isRegistershow
        ? sArea(context, 'Login Page')
        : sArea(context, 'Register Page');
  }

  SafeArea sArea(BuildContext context, String pageName) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: Column(
            children: [
              Text(
                pageName,
                style: TextStyle(fontSize: 25),
              ),
              TextFormField(
                controller: _emailCtrl,
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _emailCtrl.clear();
                      },
                      child: Icon(
                        Icons.clear_rounded,
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    fillColor: Colors.blueAccent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                validator: validatePwd,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFormField(
                obscureText: isPasswordShow,
                obscuringCharacter: "⚫",
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        isPasswordShow = !isPasswordShow;
                        setState(() {});
                      },
                      child: isPasswordShow
                          ? Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    fillColor: Colors.blueAccent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                validator: validatePwd,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              OutlinedButton(
                onPressed: () {
                  // validatePwd(_passwrdCtrl.text);
                  // validatePwd(_emailCtrl.text);  Here we would need to check every single function by assigning the fields keys to identify them. Instead use a global key
                  _formkey.currentState!.validate();
                },
                child: Text("Login Now"),
              ),
              OutlinedButton(
                onPressed: () {
                  isRegistershow = !isRegistershow;
                  setState(() {});
                },
                child: Text("Register Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validatePwd(String? value) {
    if (value!.length != 8) {
      return 'Minimum 8 chars';
    }
    return null;
  }
}
