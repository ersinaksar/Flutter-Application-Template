import 'package:application_template/app/sign_in/email_ve_sifre_login_page.dart';
import 'package:application_template/locator.dart';
import 'package:application_template/viewmodels/user_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          UserViewModel(), //Ağaca enjekte etmek istediğimiz ınıf
      child: MaterialApp(
        //Bu sınıfın kullanılacağı alt widgetları geçiyoruz
        title: "",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: EmailveSifreLoginPage(),
      ),
    );
  }
}
