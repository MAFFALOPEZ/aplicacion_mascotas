
import 'package:flutter/material.dart';
import 'package:paseando_pet/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState(){
    pasarPage();
    super.initState();
  }

  Future<void> pasarPage() async{
    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const  Image(image: AssetImage("assets/Logo.png"), width: 250, height: 250),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            border: Border.all(color: Colors.amber, width: 3),
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
