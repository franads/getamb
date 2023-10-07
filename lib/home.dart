import 'package:flutter/material.dart';
import 'package:getamb/cadastro.dart';
import 'package:getamb/main-motorista.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void abrirCadastro(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cadastro()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 220, 225, 239),
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40),
              height: 150.0,
              width: 150.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Image.asset("imagens/ambulance_icon2.png"))
                  ]),
            ),
           const SizedBox(
              height: 70,
            ),
            const Text(
              "Login para motorista",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entre com seu e-mail.',
              ),
              validator: (value) {
                 if (value == null || value.isEmpty) {
                  return 'Pl text';
                }
                return null;
              },
            ),
             
             const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entre com a senha.',
              ),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
              const SizedBox(
              height: 20,
            ),
             ElevatedButton(                
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processando...')),
                    );
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MainMotor()));
                  }
                },
                child: const Text('Logar'),
             ),
            
            GestureDetector(
              child: const Text(
                "Cadastra-se",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
                textAlign: TextAlign.right,
              ),
              onTap:abrirCadastro,
            )
          ],
        ),
      ),
    ));
  }
}
