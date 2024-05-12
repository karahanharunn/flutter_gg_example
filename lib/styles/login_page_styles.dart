import 'package:flutter/material.dart';
import 'package:flutter_gg/index.dart';

mixin LoginPageStyles {
  Style card() {
    return Style(
      p: 30,
      bg: Colors.white,
      isExpanded: true,
      borderRadiusTopLeft: 60,
      borderRadiusTopRight: 60,
      pb: 15,
    );
  }

  Style header() {
    return Style(p: 20, direction: FlexDirection.column);
  }

  Style bgGradient() {
    return Style(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
      Colors.orange.shade900,
      Colors.orange.shade800,
      Colors.orange.shade400
    ]));
  }

  Style loginText() {
    return Style(
      textStyle: TextStyle(color: Colors.white, fontSize: 40),
    );
  }

  Style welcomeText() {
    return Style(
      textStyle: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Style continueWithSocialMedia() {
    return Style(
      textStyle: TextStyle(color: Colors.grey),
    );
  }

  Style isCenter() {
    return Style(isCenter: true);
  }

  Style input() {
    return Style(
        p: 10, border: Border(bottom: BorderSide(color: Colors.grey.shade200)));
  }

  Style wrapper() {
    return Style(
        bg: Colors.white,
        borderRadius: 10,
        boxShadow: const BoxShadow(
            color: Color.fromRGBO(225, 95, 27, .3),
            blurRadius: 20,
            offset: Offset(0, 10)));
  }

  Style button() {
    return Style(
        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        crossAxisAlignment: CrossAxisAlignment.center,
        direction: FlexDirection.row,
        mainAxisAlignment: MainAxisAlignment.center,
        height: 50,
        borderRadius: 12,
        bg: Colors.orange[900],
        isCenter: true);
  }

  Style flexRow() {
    return Style(direction: FlexDirection.row);
  }

  Style forgetPassword() {
    return Style(textStyle: TextStyle(color: Colors.grey));
  }

  Style socialMediaButton() {
    return Style(
      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      py: 12,
      height: 50,
      borderRadius: 24,
      px: 24,
      mx: 12,
    );
  }

  Style fb() {
    return Style(bg: Colors.blue);
  }

  Style github() {
    return Style(bg: Colors.black);
  }
}
