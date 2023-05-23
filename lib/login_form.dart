import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey();
  String username = 'jineth';
  String password= 'Jineth@12';
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width: 200,
            height: 200,
          margin: EdgeInsets.only(top:100),
          child:
          Image.asset('assets/img/img.png',),
          ),
          Container(
            child: Column(
              children: const [
                Padding(padding:EdgeInsets.only(top:5),
                child:
                Text("Login",style: TextStyle(fontSize:40,fontWeight: FontWeight.w700),),
                ),
            Padding(padding:EdgeInsets.only(top:10),
                child:
                Text("Please Sign in to continue",style:TextStyle(color:Color(0xff17202C),fontSize: 16,fontWeight: FontWeight.w400),),
            ),
            ],
            ),
          ),
          Form(key:_formKey,
            child:Column(
              children:[
                Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline),
                  labelText: "Email",
                  hintText: "Enter Your Mail Id",
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Some Text";
                  }
                  return null;
                },
              ),
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child:
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      labelText: "Password",
                      hintText: "Enter Your Password",
                      suffixIcon: Icon(Icons.visibility_off_sharp),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter Some Text";
                      }
                      return null;
                    },
                  ),
                ),
    ],
    ),
          ),
          Container(
            width: 325,
            height: 40,
            margin: EdgeInsets.only(top:40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.deepOrange,
            ),
            child:
            ElevatedButton(onPressed:null,
                child:
                    Row(
                    children:
                    const [
                      Padding(padding:EdgeInsets.only(left: 110),
                  child:
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Padding(padding:EdgeInsets.only(left:20),
                      child:
                      Icon(Icons.arrow_forward,color: Colors.white,),
                      ),
          ],
          ),
          )
          ),
        ],
    );
  }
}
