part of '../main.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Login')),
        ),
        body: Observer(
            builder: ((_) => Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                      key: _formkey,
                      child: Column(children: [
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Digite o seu email'),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'Você precisa digitar um email';
                            }
                            return null;
                          },
                          onSaved: (txt) {
                            setState(() {
                              email = txt.toString();
                            });
                          },
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Digite a sua senha'),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'Você precisa digitar uma senha';
                            }
                            if (value != null && value.length < 4) {
                              return 'Senha muito curta';
                            }
                            return null;
                          },
                          onSaved: (txt) {
                            setState(() {
                              senha = txt.toString();
                            });
                          },
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.green)),
                            onPressed: (() {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                                Navigator.pushNamed(context, '/menu');
                              }
                            }),
                            child: Text('Entrar')),
                        ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.green)),
                            onPressed: (() {
                              Navigator.pushNamed(context, '/menu');
                            }),
                            child: Text('Modo Offline')),
                        Text('Email: $email'),
                        Text('Senha: $senha')
                      ])),
                ))));
  }
}
