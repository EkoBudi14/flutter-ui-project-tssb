import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pusbindiklat/pages/home/main_page.dart';
import 'package:pusbindiklat/pages/sign_in_page.dart';
import 'package:pusbindiklat/pages/splash_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user == null) ? SignInPage(): MainPage();
  }
}
