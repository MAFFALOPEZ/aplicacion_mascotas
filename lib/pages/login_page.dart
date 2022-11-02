import 'package:flutter/material.dart';
import 'package:paseando_pet/pages/registrar_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                child: const  Image(image: AssetImage("assets/Logo.png"), width: 150, height: 150),
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(color: Colors.amber, width: 3),
                    color: Colors.white
                ),
              ),
              TextFormField(
               decoration: const InputDecoration(
                 labelText: "Usuario",
                 border: OutlineInputBorder(),
                 suffixIcon: Icon(Icons.person)
               ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.vpn_key_sharp)
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.orange)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistarPage()));
                }
                 ,
                child: const Text("Registrarse")
              ),
              ElevatedButton(onPressed: (){},
                  child: const Text("Ingresar"))
            ],
          ),
        ),
      ),
    );
  }
}
