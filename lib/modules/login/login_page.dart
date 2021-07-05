import 'package:flutter/material.dart';
import 'package:level_up3/modules/sign_up/signup_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.all(8.0),
                  height: 80,
                  child: Image.asset('assets/images/bike_rent.png')),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Informe seu email e senha e acesse sua conta',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(42, 36, 94, 1),
                    ),
                  )),
              SizedBox(
                height: 60,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.grey[300]),
                    child: TextFormField(
                      style: TextStyle(color: Colors.orangeAccent),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          labelStyle: TextStyle(fontSize: 18.0)),
                      validator: (input) {
                        // if (!regexEmail.hasMatch(input)) {
                        //   return "Email inválido";
                        // }
                        return null;
                      },
                      onSaved: (input) => {},
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.grey[300]),
                    child: TextFormField(
                      style: TextStyle(color: Colors.orangeAccent),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: 'Senha',
                          labelStyle: TextStyle(fontSize: 18.0)),
                      validator: (input) {
                        // if (!regexEmail.hasMatch(input)) {
                        //   return "Email inválido";
                        // }
                        return null;
                      },
                      onSaved: (input) => {},
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Esqueceu a Senha?",
                          style: TextStyle(
                            color: Color.fromRGBO(42, 36, 94, 1),
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(245, 140, 0, 1)),
                      onPressed: () {},
                      child: Text('Entrar'))),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não tem uma conta?",
                    style: TextStyle(color: Colors.black38),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(
                          color: Color.fromRGBO(42, 36, 94, 1),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
