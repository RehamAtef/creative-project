import 'package:creative_project/screens/home_page.dart';
import 'package:creative_project/widgets/app_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<MyHomePage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff65a8f),
        title: const Text("MY App"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                width: 230,
                height: 230,
                child: Image.network(
                    "https://i.pinimg.com/originals/3d/a0/97/3da097bfde49aef8e7b0aa00b7ac3ae1.png")),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                validator: (value) {
                  if (value!.length > 8 && value!.length < 10) {
                    return null;
                  } else {
                    return "Invalid Phone number";
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(labelText: "PassWord"),
                validator: (value) {
                  if (value!.length < 8) {
                    return "Invalid Password";
                  }
                },
              ),
            ),
            AppButton(
              label: "Logged in",
              color: Color(0xffea93b0),
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  if (kDebugMode) {
                    print("Logged in");
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }
              },
            ),
            SizedBox(
              height: 25,
            ),
            Text("Forget Password? no yawa. Tap me"),
            SizedBox(
              height: 25,
            ),
            AppButton(
              label: "No account, sign up",
              color: Color(0xffd5cece),
              onTap: () {
                print("Sign up");
              },
            ),
          ]),
        ),
      ),
    );
  }
}
