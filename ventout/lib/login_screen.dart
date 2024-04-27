import 'package:flutter/material.dart';
import 'package:ventout/Home_scren.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  late String Username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final UsernameFeild = TextField(
        onChanged: (val) {
          setState(() {
            Username = val;
          });
        },
        style: myStyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: "Username",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))));

    final passwordField = TextField(
        obscureText: true,
        onChanged: (val) {
          setState(() {
            password = val;
          });
        },
        style: myStyle,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))));

    final myLoginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(29),
        color: Colors.blue,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          onPressed: () {
            if (Username == "bri" && password == "password") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(Username)));
              print("Login sucessfully");
            } else {
              print("login fail");
            }
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ));
    return Scaffold(
        body: Center(
            child: Container(
                color: Color.fromARGB(255, 255, 253, 253),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListView(children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 14),
                            Icon(Icons.supervised_user_circle_outlined,
                                size: 100),
                            SizedBox(height: 100),
                            UsernameFeild,
                            SizedBox(height: 10),
                            passwordField,
                            SizedBox(height: 10),
                            myLoginButton,
                          ])
                    ])))));
  }
}
