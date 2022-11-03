import 'package:flutter/material.dart';

import 'screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  add() {
    count++;
    setState(() {});
  }

  String emailController = '';
  String passwordController = '';

  GlobalKey<FormState> ketTest = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello',
        ),
      ),
      body: Form(
        key: ketTest,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                onChanged: (String value) {
                  emailController = value;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  if (!value.contains('@')) {
                    return "!contains('@')";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                onChanged: (String value) {
                  passwordController = value;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'required';
                  }
                  if (value.length < 5) {
                    return 'length<5';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                if(ketTest.currentState!.validate()==true){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Screen2();
                  }));
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}








class FormTest2 extends StatefulWidget {
  const FormTest2({Key? key}) : super(key: key);

  @override
  State<FormTest2> createState() => _FormTest2State();
}

class _FormTest2State extends State<FormTest2> {
  printHello() {
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





