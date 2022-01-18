import 'package:flutter/material.dart';

class InstaLoginPage extends StatefulWidget {
  static const String id = "insta_login_page";

  const InstaLoginPage({Key? key}) : super(key: key);

  @override
  _InstaLoginPageState createState() => _InstaLoginPageState();
}

class _InstaLoginPageState extends State<InstaLoginPage> {
  final formKey = GlobalKey<FormState>();
  late String _password;
  late String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Instagram",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (input) =>
                      !input!.contains("") ? "please input your name " : null,
                  onSaved: (input) => _email = input!),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (input) => !input!.contains("@")
                      ? "please enter a valid email"
                      : null,
                  onSaved: (input) => _email = input!),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 30,
                left: 30,
              ),
              child: TextFormField(
                  decoration: InputDecoration(labelText: "password"),
                  validator: (input) =>
                      input!.length < 6 ? "must be 6 characters" : null),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
                height: 40,
                minWidth: 333,
                color: Colors.blue.shade500,
                onPressed: () {}),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 90),
              child: Center(
                child: Row(
                  children: [
                    Text("Don't have an account?  "),
                    Text(
                      " Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
