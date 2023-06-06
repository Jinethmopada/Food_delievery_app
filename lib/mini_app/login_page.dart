import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoginForm extends StatefulWidget {
  const MyLoginForm({Key? key}) : super(key: key);

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "test@gmail.com";
  String password = "3241";
  bool showPassword = false;
  // TextEditingController _email = TextEditingController();
  // TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SafeArea(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('assets/img/log_in.png'),
                  Text(
                    "Order from top & favourite restaurants",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Log in to Order Your Favourite Food",
                      style: TextStyle(fontSize: 20, color: Colors.amber),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      // controller: _email,
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "E-mail",
                          hintText: "Enter Your Email",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.person_outline_sharp),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red))),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty || value != email) {
                          return 'Enter Valid Email';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      // controller: _password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "Password",
                        hintText: "Enter Your Password",
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(showPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !showPassword,
                      onFieldSubmitted: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      validator: (value) {
                        if (value != password) {
                          return 'Enter Valid Password';
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // if (_email.text == email && _password.text == password) {
                      //   Navigator.pushNamed(context, '/home');
                      // } else{
                      //   return null;
                      // }
                      if(_formKey.currentState!.validate()){
                        Get.offAllNamed('/home');
                      }
                    },
                    child: Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
