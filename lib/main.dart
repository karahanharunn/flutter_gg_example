import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';
import 'package:flutter_minigra_example/styles/index.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gg(
        style: css.bgGradient(),
        children: <Widget>[
          gg(style: Style(height: 20)),
          gg(style: css.header(), children: <Widget>[
            ggtext(style: css.loginText(), text: "Login"),
            gg(style: Style(height: 10)),
            ggtext(style: css.welcomeText(), text: "Welcome Back")
          ]),
          gg(style: Style(height: 20)),
          gg(
            style: css.card(),
            children: <Widget>[
              gg(style: Style(height: 20)),
              gg(
                style: css.wrapper(),
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ).styles(css.input()),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ).styles(css.input()),
                ],
              ),
              gg(style: Style(height: 40)),
              ggtext(style: css.forgetPassword(), text: "Forgot Password?"),
              gg(style: Style(height: 40)),
              ggbutton(
                  leftChild: Icon(Icons.login, color: Colors.white),
                  style: css.button(),
                  text: "Login",
                  onTap: () => print("Login")),
              gg(style: Style(height: 50)),
              ggtext(
                  style: css.continueWithSocialMedia(),
                  text: "Or continue with social media"),
              gg(style: Style(height: 30)),
              gg(style: css.flexRow(), children: [
                ggbutton(
                    leftChild: Icon(Icons.facebook, color: Colors.white),
                    gap: 4,
                    onTap: () => print("Facebook"),
                    style: mixStyles([
                      css.socialMediaButton(),
                      css.fb(),
                    ]),
                    text: "Facebook"),
                gg(style: Style(height: 30)),
                ggbutton(
                    leftChild: Icon(Icons.gite, color: Colors.white),
                    gap: 4,
                    onTap: () => print("Github"),
                    style: mixStyles([
                      css.socialMediaButton(),
                      css.github(),
                    ]),
                    text: "Github"),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
